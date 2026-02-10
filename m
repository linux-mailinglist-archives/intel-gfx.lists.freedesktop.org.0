Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oB65AAD5imlBPAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Feb 2026 10:23:12 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45548118D2C
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Feb 2026 10:23:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE69B10E52E;
	Tue, 10 Feb 2026 09:23:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y+33NqKM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BF2E10E51B;
 Tue, 10 Feb 2026 09:23:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770715387; x=1802251387;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Dab3dVl5SxedR/PwPLgEmY+DSdRMhfNXtdR0mTBnfLA=;
 b=Y+33NqKMgNVY6CDcE8iM1/9zhvfh6TCcsh2EA3uJ7zFML2NoQ9Cad5NY
 wTJeMLreeHeS5VGsW+di88nHr8sIWZ7CavetooKSnOz8n9/VvUT7uJfZV
 Q7lXW+sWShD/cCfnUB3yl89X7dWUjpMXd4tLXha4jW9ZMRsSa1pSDD2AA
 ZzfWgBEIwcDlSVFEkXz4aSFWJbLlmI0aLNqiAGoxtIRJGTGF9RiUwdkFO
 LMnPCOOY9Td/PGf25xD0jXD2We1LCS/xinc7X5Kiry9MXkoCw9tOPaPnI
 YRQj70wL5fL3vh8PO8ezeqn6BvufbIubzjHIA3IN4Qob6BBaXFalpRakE Q==;
X-CSE-ConnectionGUID: 5XypM0oySM2tSoNDuJ+vYQ==
X-CSE-MsgGUID: Dlvvu7csQw6ar+MmHzmBvw==
X-IronPort-AV: E=McAfee;i="6800,10657,11696"; a="82568788"
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="82568788"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2026 01:23:07 -0800
X-CSE-ConnectionGUID: tPUbVQTLQMKTiU2QcJF8yQ==
X-CSE-MsgGUID: pfiw3MXLSmGlbhLiIhZymw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="211058607"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.246])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2026 01:23:05 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Samasth Norway Ananda <samasth.norway.ananda@oracle.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, samasth.norway.ananda@oracle.com,
 ville.syrjala@linux.intel.com
Subject: Re: [PATCH] drm/i915/gmbus: fix spurious timeout on 512-byte burst
 reads
In-Reply-To: <20260206203044.3892925-1-samasth.norway.ananda@oracle.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260206203044.3892925-1-samasth.norway.ananda@oracle.com>
Date: Tue, 10 Feb 2026 11:23:02 +0200
Message-ID: <83ad67d411502b2e2ece666745b5209dae83e4f7@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,oracle.com:email]
X-Rspamd-Queue-Id: 45548118D2C
X-Rspamd-Action: no action

On Fri, 06 Feb 2026, Samasth Norway Ananda <samasth.norway.ananda@oracle.com> wrote:
> When reading exactly 512 bytes with burst read enabled, the
> extra_byte_added path breaks out of the inner do-while without
> decrementing len. The outer while(len) then re-enters and gmbus_wait()
> times out since all data has been delivered. Decrement len before the
> break so the outer loop terminates correctly.

Nice find, and the fix looks correct. How did you figure this out? Did
you hit the issue?

I wonder if the whole extra byte thing is a workaround for some old
hardware that shouldn't be needed on modern hardware... Ville, thoughts?

> Also fix a typo in a nearby comment ("generata" -> "generate").

"Also" is a good hint that it should be a separate patch. ;)

BR,
Jani

> Fixes: d5dc0f43f268 ("drm/i915/gmbus: Enable burst read")
> Signed-off-by: Samasth Norway Ananda <samasth.norway.ananda@oracle.com>
> ---
>  drivers/gpu/drm/i915/display/intel_gmbus.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
> index 2caff677600c..5fb3fee34af4 100644
> --- a/drivers/gpu/drm/i915/display/intel_gmbus.c
> +++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
> @@ -496,8 +496,10 @@ gmbus_xfer_read_chunk(struct intel_display *display,
>  
>  		val = intel_de_read_fw(display, GMBUS3(display));
>  		do {
> -			if (extra_byte_added && len == 1)
> +			if (extra_byte_added && len == 1) {
> +				len--;
>  				break;
> +			}
>  
>  			*buf++ = val & 0xff;
>  			val >>= 8;
> @@ -693,7 +695,7 @@ do_gmbus_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs, int num,
>  			goto clear_err;
>  	}
>  
> -	/* Generate a STOP condition on the bus. Note that gmbus can't generata
> +	/* Generate a STOP condition on the bus. Note that gmbus can't generate
>  	 * a STOP on the very first cycle. To simplify the code we
>  	 * unconditionally generate the STOP condition with an additional gmbus
>  	 * cycle. */

-- 
Jani Nikula, Intel
