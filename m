Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kC8rJJkVoGlifgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 10:42:49 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DEDD1A3A16
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 10:42:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45CAD10E8A4;
	Thu, 26 Feb 2026 09:42:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JB9xUMNb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACEC610E8A4;
 Thu, 26 Feb 2026 09:42:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772098964; x=1803634964;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Ipqzclbvrun69E3P+3xbXYjB5AzcNVAL1gctvJFvqMs=;
 b=JB9xUMNbpNGm5AxDhUD77u8LZivUDfeW5SH5SOP1U2BKl3ogxLMPXt8h
 7lqSvoloyirYnScAPOq24Dobx4jAWUUipcF/XwmsZL/83V5rV0gotHfcU
 mLCu3soa4qjm7oqcvhtni7CXK1C28+6n75bG/Mk/od4iXgMatPEKbbTl9
 IpvrS2HAreNJSbIPCvqOrqloHnuI6BKb6ObxbA85rn0zOneizjvdm/qlT
 S35IwACauWdHeJRTKKYz1q1z3qdTA/VLnnIKbFk/DDgo/HEQB84RF+VqO
 eHSHbwXgEmwviKPUBNTp0IEzODrvdCq+5p00QCIitFcHOntmv3Kvy2ju/ g==;
X-CSE-ConnectionGUID: 2fyCyXrKQZeNF7RPel5XWg==
X-CSE-MsgGUID: d6+wBduRSxm6G9e3eSmQOg==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="95770530"
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="95770530"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 01:42:44 -0800
X-CSE-ConnectionGUID: wSlEEibTTJOQRunjnXvizA==
X-CSE-MsgGUID: mq8+xssmQai79UaXrw/YBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="254272580"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.125])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 01:42:41 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>, Thomas =?utf-8?Q?Hellstr=C3=B6m?=
 <thomas.hellstrom@linux.intel.com>, "Brost, Matthew"
 <matthew.brost@intel.com>
Subject: RE: [PATCH] drm/xe/compat: Remove unused i915_reg.h from compat header
In-Reply-To: <DM4PR11MB63609181C06EA2208BD6B33CF472A@DM4PR11MB6360.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260223171015.1035550-1-uma.shankar@intel.com>
 <9f4d35467196e95d548030876a7f73386ed36d79@intel.com>
 <DM4PR11MB6360D3D5EFB752BC46B8D02BF475A@DM4PR11MB6360.namprd11.prod.outlook.com>
 <20260225174306.GQ4694@mdroper-desk1.amr.corp.intel.com>
 <09eb82885835ecea2f60c9eaba15bf58c13fb32e@intel.com>
 <DM4PR11MB63609181C06EA2208BD6B33CF472A@DM4PR11MB6360.namprd11.prod.outlook.com>
Date: Thu, 26 Feb 2026 11:42:37 +0200
Message-ID: <5c2d7382a694a16ce272543ae8812a6429b33928@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 2DEDD1A3A16
X-Rspamd-Action: no action

On Thu, 26 Feb 2026, "Shankar, Uma" <uma.shankar@intel.com> wrote:
> Thanks Jani, shall I send a revert on drm-xe-next and push through
> drm-intel-next instead ?

Yes, please.

> Apologies for the noise on this.

No worries, it happens.

BR,
Jani.


-- 
Jani Nikula, Intel
