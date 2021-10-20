Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 54FAC434836
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Oct 2021 11:47:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B40306E243;
	Wed, 20 Oct 2021 09:47:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7BB76E243
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Oct 2021 09:47:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10142"; a="229011765"
X-IronPort-AV: E=Sophos;i="5.87,166,1631602800"; d="scan'208";a="229011765"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2021 02:47:18 -0700
X-IronPort-AV: E=Sophos;i="5.87,166,1631602800"; d="scan'208";a="494547975"
Received: from sischoen-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.45.52])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2021 02:47:14 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: =?utf-8?Q?Jos=C3=A9?= Roberto de Souza <jose.souza@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, =?utf-8?Q?Jos=C3=A9?= Roberto de Souza
 <jose.souza@intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, ville.syrjala@linux.intel.com,
 Daniel Vetter <daniel.vetter@ffwll.ch>, Tvrtko Ursulin
 <tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20211020002353.193893-1-jose.souza@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211020002353.193893-1-jose.souza@intel.com>
Date: Wed, 20 Oct 2021 12:47:11 +0300
Message-ID: <87tuhcni3k.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Add struct to hold IP version
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 19 Oct 2021, Jos=C3=A9 Roberto de Souza <jose.souza@intel.com> wrot=
e:
> The constant platform display version is not using this new struct but
> the runtime variant will definitely use it.

Cc: Some more folks to hijack this thread. Sorry! ;)

We added runtime info to i915, because we had this idea and goal of
turning the device info to a truly const pointer to the info structures
in i915_pci.c that are stored in rodata. The idea was that we'll have a
complete split of mutable and immutable device data, with all the
mutable data in runtime info.

Alas, we never got there. More and more data that was mostly const but
sometimes needed tweaking kept piling up. mkwrite_device_info() was
supposed to be a clue not to modify device info runtime, but instead it
proliferated. Now we have places like intel_fbc_init() disabling FBC
through that. But most importantly, we have fusing that considerably
changes the device info, and the copying all of that data over to
runtime info probably isn't worth it.

Should we just acknowledge that the runtime info is useless, and move
some of that data to intel_device_info and some of it elsewhere in i915?


BR,
Jani.

--=20
Jani Nikula, Intel Open Source Graphics Center
