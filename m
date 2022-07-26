Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C85A5817FE
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jul 2022 18:58:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AABBE93D1D;
	Tue, 26 Jul 2022 16:58:03 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F93293D80
 for <Intel-gfx@lists.freedesktop.org>; Tue, 26 Jul 2022 16:58:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658854682; x=1690390682;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=ScdDFk3JNjEcmQ9t+wVt/ehBODqJ4Aysfka95EuyoaI=;
 b=cdHRln/gEKMPjwc+ryjJ8zx+4MZS0t1i59/Uz5hH2EILJ3Y6eVwW/3KD
 FQcDsu32JoJjIlqaLbKHcDYLmArTe4+ZasdAioJbW9LxorOvenVVKjISY
 Yi/leonLYSh0A4OYdoKYV02Z+Xm7JyyZupZHGgRvTvt2bxRouLyFCY6p/
 wa5aJXBGxOPiwDHQFZ5bCEvbAI0EEThTuGD/Bwa4wJd7lch10iQOiJX+3
 O4c4rsiuiz2/86Nm03YQ62AEugx+8hfkScesdHjbn27uqHkH744+JeIpc
 jm2YbLnTZbh9yjBW2KSN3iBr8e9RGTNlZwNPskkEOCi+OKPsU7u+R9BDg g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10420"; a="289195773"
X-IronPort-AV: E=Sophos;i="5.93,194,1654585200"; d="scan'208";a="289195773"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2022 09:57:49 -0700
X-IronPort-AV: E=Sophos;i="5.93,194,1654585200"; d="scan'208";a="597092241"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2022 09:57:47 -0700
Date: Tue, 26 Jul 2022 19:46:30 +0300 (EEST)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@eliteleevi.tm.intel.com
To: "Taylor, Clinton A" <clinton.a.taylor@intel.com>
In-Reply-To: <20220722222743.3867903-1-clinton.a.taylor@intel.com>
Message-ID: <alpine.DEB.2.22.394.2207261939380.1532214@eliteleevi.tm.intel.com>
References: <20220722222743.3867903-1-clinton.a.taylor@intel.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7 02160 Espoo
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Audio keep alive
 timestamp cdclk divisors
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
Cc: Taylor@cataylo2-DESK.jf.intel.com, Intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On Fri, 22 Jul 2022, Taylor, Clinton A wrote:

> Use BSPEC values for the Audio Keep alive M and N values as included in
> the cdclk BSPEC pages for display > 13

looks good, only a few very minor style comments. 

I had a table in my original patch, but Ville preferred calculating 
on-the-fly back then, so I changed the patch.

Now the recommended values have changed, so table again seems more 
fit for purpose. But yeah, if ok to Ville, ok for me as well.

>  static const struct intel_cdclk_vals adlp_cdclk_table[] = {
> -	{ .refclk = 19200, .cdclk = 172800, .divider = 3, .ratio = 27 },
> -	{ .refclk = 19200, .cdclk = 192000, .divider = 2, .ratio = 20 },
> -	{ .refclk = 19200, .cdclk = 307200, .divider = 2, .ratio = 32 },
> -	{ .refclk = 19200, .cdclk = 556800, .divider = 2, .ratio = 58 },
> -	{ .refclk = 19200, .cdclk = 652800, .divider = 2, .ratio = 68 },
> -
> -	{ .refclk = 24000, .cdclk = 176000, .divider = 3, .ratio = 22 },
> -	{ .refclk = 24000, .cdclk = 192000, .divider = 2, .ratio = 16 },
> -	{ .refclk = 24000, .cdclk = 312000, .divider = 2, .ratio = 26 },
> -	{ .refclk = 24000, .cdclk = 552000, .divider = 2, .ratio = 46 },
> -	{ .refclk = 24400, .cdclk = 648000, .divider = 2, .ratio = 54 },
> -
> -	{ .refclk = 38400, .cdclk = 179200, .divider = 3, .ratio = 14 },
> -	{ .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 10 },
> -	{ .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16 },
> -	{ .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29 },
> -	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34 },
> +	{ .refclk = 19200, .cdclk = 172800, .divider = 3, .ratio = 27, .aud_m = 0x3C, .aud_n = 0x140 },
> +	{ .refclk = 19200, .cdclk = 192000, .divider = 2, .ratio = 20, .aud_m = 0x3C, .aud_n = 0x1E0 },

Minor nit, but lower-case letters are used elsewhere for hex constants, so 
would look nicer to use 0x3c et al for the aud_m/n fields as well.

> +	{ .refclk = 24000, .cdclk = 192000, .divider = 2, .ratio = 16, .aud_m = 0x3C, .aud_n = 0x1E0  },

Another minor nit, extra space at end.

> +	{ .refclk = 38400, .cdclk = 163200, .divider = 2, .ratio = 34, .waveform = 0x8888, .aud_m = 0x3C, .aud_n = 0x198 },
> +	{ .refclk = 38400, .cdclk = 204000, .divider = 2, .ratio = 34, .waveform = 0x9248, .aud_m = 0x3C, .aud_n = 0x1FE },
> +	{ .refclk = 38400, .cdclk = 244800, .divider = 2, .ratio = 34, .waveform = 0xa4a4, .aud_m = 0x3C, .aud_n = 0x264 },

Ditto here for hex constant style. Looks even more unpleasent when 
.waveform is initialized with lower-case style.

Br, kai
