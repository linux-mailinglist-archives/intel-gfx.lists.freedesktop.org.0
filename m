Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DDA9467591
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Dec 2021 11:47:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66E1F6FF42;
	Fri,  3 Dec 2021 10:47:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C56586FF42
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Dec 2021 10:47:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10186"; a="236766714"
X-IronPort-AV: E=Sophos;i="5.87,284,1631602800"; d="scan'208";a="236766714"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2021 02:47:42 -0800
X-IronPort-AV: E=Sophos;i="5.87,284,1631602800"; d="scan'208";a="577368696"
Received: from chobbs-mobl1.ger.corp.intel.com (HELO localhost) ([10.252.2.56])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2021 02:47:39 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <YansFbEIEoLI7nQO@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
 <20211124113652.22090-12-ville.syrjala@linux.intel.com>
 <87pmqplft3.fsf@intel.com> <YZ9azCw2Rc96QuNL@intel.com>
 <87bl28lcyw.fsf@intel.com> <YZ991bmhNaIj4MrQ@intel.com>
 <91e37161-7148-5d71-2efa-0176fbe2f468@linux.intel.com>
 <871r34l395.fsf@intel.com> <YanfuTTEODQQwHV7@intel.com>
 <87lf12gggw.fsf@intel.com> <YansFbEIEoLI7nQO@intel.com>
Date: Fri, 03 Dec 2021 12:47:37 +0200
Message-ID: <87fsrage2e.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 11/20] drm/i915/fbc: Move FBC debugfs stuff
 into intel_fbc.c
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 03 Dec 2021, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Fri, Dec 03, 2021 at 11:55:43AM +0200, Jani Nikula wrote:
>> I think an insteresting question is, with all the debugfs stuff being
>> static in intel_fbc.c, is the compiler actually smart enough to optimize
>> the static code and data away when CONFIG_DEBUG_FS=3Dn, even without
>> #ifdefs? Or is that something you're already claiming above?
>
> Yes it all disappeared from the binary when I tried it.
> Only thing left was an empty intel_fbc_debugfs_register().

\o/

--=20
Jani Nikula, Intel Open Source Graphics Center
