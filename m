Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0620317A2D0
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Mar 2020 11:06:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE8C96E09C;
	Thu,  5 Mar 2020 10:06:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BCFE6E09C;
 Thu,  5 Mar 2020 10:06:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Mar 2020 02:06:11 -0800
X-IronPort-AV: E=Sophos;i="5.70,517,1574150400"; d="scan'208";a="229647700"
Received: from bennur-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.38.13])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Mar 2020 02:06:01 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Rajat Jain <rajatja@google.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>, Daniel
 Vetter <daniel@ffwll.ch>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, Chris
 Wilson
 <chris@chris-wilson.co.uk>, Imre Deak <imre.deak@intel.com>, =?utf-8?Q?Jo?=
 =?utf-8?Q?s=C3=A9?= Roberto
 de Souza <jose.souza@intel.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 gregkh@linuxfoundation.org, mathewk@google.com, Daniel Thompson
 <daniel.thompson@linaro.org>, Jonathan Corbet <corbet@lwn.net>, Pavel
 Machek <pavel@denx.de>, seanpaul@google.com, Duncan Laurie
 <dlaurie@google.com>, jsbarnes@google.com, Thierry Reding
 <thierry.reding@gmail.com>, mpearson@lenovo.com, Nitin Joshi1
 <njoshi1@lenovo.com>, Sugumaran Lacshiminarayanan
 <slacshiminar@lenovo.com>, Tomoki Maruichi <maruichit@lenovo.com>
In-Reply-To: <20200305011943.214146-1-rajatja@google.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200305011943.214146-1-rajatja@google.com>
Date: Thu, 05 Mar 2020 12:06:01 +0200
Message-ID: <87h7z3nmk6.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v6 1/3] intel_acpi: Rename drm_dev local
 variable to dev
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
Cc: rajatxjain@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 04 Mar 2020, Rajat Jain <rajatja@google.com> wrote:
> Change the struct drm_device * local variable from drm_dev to dev
> per the feedback received here:
> https://lkml.org/lkml/2020/1/24/1143

I don't know what's up with the two identical (or similar) threads here,
but I replied in the thread starting at [1]. Please let's keep the
discussion there.

BR,
Jani.

[1] http://patchwork.freedesktop.org/patch/msgid/20200305012338.219746-2-rajatja@google.com

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
