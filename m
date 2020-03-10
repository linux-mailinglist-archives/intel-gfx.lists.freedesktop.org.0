Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 700481800CB
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 15:55:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B701D6E321;
	Tue, 10 Mar 2020 14:55:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F31A6E321
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 14:55:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 07:55:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,518,1574150400"; d="scan'208";a="321826890"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by orsmga001.jf.intel.com with ESMTP; 10 Mar 2020 07:55:24 -0700
Date: Tue, 10 Mar 2020 16:55:23 +0200 (EET)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@eliteleevi.tm.intel.com
To: =?ISO-8859-15?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
In-Reply-To: <20200310135742.GF13686@intel.com>
Message-ID: <alpine.DEB.2.21.2003101653250.2957@eliteleevi.tm.intel.com>
References: <20200310133920.32705-1-kai.vehmanen@linux.intel.com>
 <20200310135742.GF13686@intel.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7 02160 Espoo
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="-318106570-1556852803-1583852125=:2957"
Subject: Re: [Intel-gfx] [RESEND PATCH v2] drm/i915: Add missing HDMI audio
 pixel clocks for gen12
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

---318106570-1556852803-1583852125=:2957
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 8BIT

Hey,

On Tue, 10 Mar 2020, Ville Syrjälä wrote:

> On Tue, Mar 10, 2020 at 03:39:20PM +0200, Kai Vehmanen wrote:
>> Gen12 hardware supports HDMI audio pixel clocks of 296.7/297Mhz
>> and 593.4/594Mhz. Add the missing rates and add logic to ignore
>> them if running on older hardware.
[...]
> No real need to pass dev_priv separately. We can dig it out locally.
> 
> ... dev_priv = to_i915(crtc_state->uapi.crtc->dev);

aa, didn't realize that. But that's cleaner, let me update and send V3.

> Otherwise lgtm.
> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Thanks!

Br, Kai

---318106570-1556852803-1583852125=:2957
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

---318106570-1556852803-1583852125=:2957--
