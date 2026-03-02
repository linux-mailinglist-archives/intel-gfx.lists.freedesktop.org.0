Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EN4gAEvupWlLHwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 21:08:43 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 964E11DF224
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 21:08:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E621F10E5AD;
	Mon,  2 Mar 2026 20:08:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O2UunLP2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A48C610E370;
 Mon,  2 Mar 2026 20:08:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772482119; x=1804018119;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version:content-id;
 bh=YxGIaaclzS/RvjfPjeD6UWhNfAf2hB4pfJRGKjoyp9E=;
 b=O2UunLP2YHBqDNtXMJ5ed/1+NSwnbRzWWTTbun7Mr9nqFeYpqN/iYaez
 /4gjnzUN7BMBNVVAa21Lg/zySRUNSq8SONIPnMBpKxRMozS60g0sFrp5m
 kMRVH7/UQdvHzKm7M+Dy8PS+7Gbz1ng9vqq2wtX+Wm+0YnbyMLkrH7pIC
 tlFGFKT7VK9QCFthz3l4kU0gOMzEa4Mf7ckvO2kznzV5ZrrqTCeauEvas
 dez5fI/ey6RlTiD+Mo7cooU/lxkm2z6yI2XCzJT+XSQRPUYHBjL6zFRmW
 iRJjXNgplpluoVEPWSjrNpEIsqJF2EATT1dcBX5PcB+uqaaogzDIc62Sk Q==;
X-CSE-ConnectionGUID: qSUYRcvjTpS+VFXMNSRo/A==
X-CSE-MsgGUID: 05Lp12dWRX+QOwRfOYxrdg==
X-IronPort-AV: E=McAfee;i="6800,10657,11717"; a="76105196"
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="76105196"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 12:08:39 -0800
X-CSE-ConnectionGUID: ri9upKrkSt2AQ995Ruy17A==
X-CSE-MsgGUID: QIKY4qhmQ1imDpQtlP2Rcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="221922005"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 12:08:38 -0800
Date: Mon, 2 Mar 2026 21:08:36 +0100 (CET)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 rodrigo.vivi@intel.comn
Subject: Re: [PATCH 3/8] drm/{i915, xe}/reg: rename masked field helpers
 REG_MASKED_FIELD*()
In-Reply-To: <49dc20448a12f3e03f5f8347540d167a281b8987.1772042022.git.jani.nikula@intel.com>
Message-ID: <72869681-80d3-cb19-6244-e274e1acce9d@intel.com>
References: <cover.1772042022.git.jani.nikula@intel.com>
 <49dc20448a12f3e03f5f8347540d167a281b8987.1772042022.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed;
 BOUNDARY="1527428566-901870911-1772480581=:1836696"
Content-ID: <f5edac01-297e-2dbf-067f-d442149265ad@intel.com>
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
X-Rspamd-Queue-Id: 964E11DF224
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	CTYPE_MIXED_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[4];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Action: no action

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--1527428566-901870911-1772480581=:1836696
Content-Type: text/plain; CHARSET=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT
Content-ID: <7f90c364-3c0a-db92-3de4-56fd3b398c30@intel.com>

On Wed, 25 Feb 2026, Jani Nikula wrote:
> The underscore prefixed masked field helper names aren't great. Rename
> them REG_MASKED_FIELD(), REG_MASKED_FIELD_ENABLE(), and
> REG_MASKED_FIELD_DISABLE(). This is more in line with the existing
> REG_FIELD_PREP() etc. helpers, and using "field" instead of "bit" is
> more accurate for the functionality.
>
> This is done with:
>
> sed -i 's/_MASKED_FIELD/REG_MASKED_FIELD/g' $(git grep -wl _MASKED_FIELD)
> sed -i 's/_MASKED_BIT_ENABLE/REG_MASKED_FIELD_ENABLE/g' $(git grep -wl _MASKED_BIT_ENABLE)
> sed -i 's/_MASKED_BIT_DISABLE/REG_MASKED_FIELD_DISABLE/g' $(git grep -wl _MASKED_BIT_DISABLE)
>
> with some manual indentation fixes on top.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³
--1527428566-901870911-1772480581=:1836696--
