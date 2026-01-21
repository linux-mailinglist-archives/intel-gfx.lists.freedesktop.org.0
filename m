Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aPQuJOjgcGnCaQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 15:21:28 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A3435854A
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 15:21:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8454E10E7E2;
	Wed, 21 Jan 2026 14:21:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M5lUUbXh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 698B610E7F5;
 Wed, 21 Jan 2026 14:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769005286; x=1800541286;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=+Qo+QQsHczHs9cLFHKvwVhnwVQbU2MrgM/vXLXGr2L4=;
 b=M5lUUbXhKOQf/MEbPe0iFOCuAAaWLfdcZ43uZyoyrWkLH58fwczjT7q+
 WlZ521MTvo6117PyxuKDdBPAO/ch/bKEPYA/OvTwdS4+QGkCjT8xls0VG
 4gTyuJFZRwTuYSCeSTUknyyZfh9e4FAzvwGTpzAEBZQopdkZtskdQAVqb
 LFIfB2wmWhFM1vZ8dB3HuTbP9Fy1Q0p8I40osByrcbdvyeSsJ3ExzAjT1
 77kQqgLSMsvEfik/iYgnn2sizEX05thKlcbfZaSwf9H4cPMkycvALbbz+
 ZEqvuMcet2kcwDLlhMYR0GD11v7MKb42SNRJ+9XihnZN0iUTPUcLC6kh2 w==;
X-CSE-ConnectionGUID: aEUt8iGIREC9hA8OetsX+g==
X-CSE-MsgGUID: dvaMkLLnSuik7c1JjhM7Ng==
X-IronPort-AV: E=McAfee;i="6800,10657,11678"; a="70136667"
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="70136667"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 06:21:26 -0800
X-CSE-ConnectionGUID: 6T8dwqyrTHiOdG7Y8Rm3tw==
X-CSE-MsgGUID: e6Yx7h3yQ6yABaog0N7GGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="237122043"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.119])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 06:21:22 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Juasheem Sultan <jdsultan@google.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Juasheem Sultan <jdsultan@google.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>, Manasi Navare <navaremanasi@google.com>, Drew
 Davenport <ddavenport@google.com>, Sean Paul <seanpaul@google.com>
Subject: Re: [RFC PATCH v2 0/2]  Enable seamless boot (fastboot) for PTL
In-Reply-To: <20260120161539.3161533-1-jdsultan@google.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260120161539.3161533-1-jdsultan@google.com>
Date: Wed, 21 Jan 2026 16:21:19 +0200
Message-ID: <c9f8bef6ee6f2b78072d6919bd6854ad24ce0c7a@intel.com>
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 0A3435854A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, 20 Jan 2026, Juasheem Sultan <jdsultan@google.com> wrote:
> This patch series is the second revision of a series of patches meant
> to add support for seamless framebuffer handoff within the Xe driver.

We've only received this cover letter.

BR,
Jani.


-- 
Jani Nikula, Intel
