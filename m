Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 488314EDF1E
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Mar 2022 18:49:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC70210E42F;
	Thu, 31 Mar 2022 16:49:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED81C10E42F;
 Thu, 31 Mar 2022 16:49:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648745368; x=1680281368;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=IAGUsZye1GnUEmKbcaAa/INEX7fJeqbUJ6L4zFb1xwY=;
 b=W7Y/j9sWu871Y0HfXyXGhKDeWKqpyt8kiGwjIqOuNjAlGdrQC09d3Ai8
 oryDaTHM27icUr4iskbq8nbprYdliR1pcQHDz8ubo7KBRu+tQSGwnO09k
 DWhgnN6eni3uvo9nuGnauvXB4ke56hIDG1B/lMqFvPy0Dx2DDWskHVGcC
 WuoYrJIbAgWiRSdxTsfjit4qNlvmxZ8+zoFZbKU8INE971X4arWmpmM1E
 0EL7AFM7EvNSX/KJ9qbzwsTygflfLCHvP8KGdeXId72b3B5zRGw/a33V6
 ZEz2ZGQxAWLWL+Lupc/TFjPJVfPJFfMLNeuyO7Kn3nWD9htzqk/fICTov A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="240484996"
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="240484996"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 09:49:15 -0700
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="566638179"
Received: from gluca-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.48.194])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 09:49:13 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <YkXAo2NceBUlGbE1@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1648578814.git.jani.nikula@intel.com>
 <296443a99ce907b11d08ddc88407aa35d9bdc5a3.1648578814.git.jani.nikula@intel.com>
 <YkXAo2NceBUlGbE1@intel.com>
Date: Thu, 31 Mar 2022 19:49:10 +0300
Message-ID: <87k0ca83uh.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 07/12] drm/edid: split
 drm_edid_block_valid() to check and act parts
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 31 Mar 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
>> -
>> -		if (edid->revision > 4)
>> -			DRM_DEBUG("EDID minor > 4, assuming backward compatibility\n");
>
> This debug message seems to disappear. Intentional?

Intentional, but failed to mention it in the commit message.

Do we want to keep it? With my new approach, it basically means another
valid return value that's distinct from just ok.


BR,
Jani.



--=20
Jani Nikula, Intel Open Source Graphics Center
