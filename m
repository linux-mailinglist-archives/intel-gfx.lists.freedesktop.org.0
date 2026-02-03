Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CEw7INLagWlBLQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 12:24:02 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DBDBD841D
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 12:24:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 197B410E31C;
	Tue,  3 Feb 2026 11:24:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Jf9HbU9n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3F1310E316
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Feb 2026 11:23:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770117837; x=1801653837;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=rDRSjUI2hsjG2UxjrWIwcn2WFfzqG3e6QVUkUH3es54=;
 b=Jf9HbU9nA6W9xCezh5NQBpJYKc5IN6yN1NNe22xBQr/Jf1k5cCcpWD3h
 XeaZngaZtv9m7ZZSrdCEepAW7ipJZRs80KOKDTkUckjQfTFm/Mr71PrM9
 tWJOd1m57ij/ybfOmxw72qVXSjpAJcbvl73ANhsvf0dvvcMWyl6jrPOTx
 EBfGnHzwB48iKtZ1JAi+eToBOdMZGnshjeNHZzIuVKHe4fcUqQikQ8Jrp
 jM33QpxzTcmrI3Cf2yERAnjHrThUyjdnNj6XcNa5q/iisVDPghOiMklQQ
 m0ss5D2I9NWKs+jErP52FLi7m7F9cKqSImo1UHY+nF7JEHO2CNVzyM8WJ w==;
X-CSE-ConnectionGUID: sjXIKeCBTjunlRlPEaAkQw==
X-CSE-MsgGUID: TUppv6xZRo+tmWW4h0M+pQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="73882579"
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="73882579"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 03:23:55 -0800
X-CSE-ConnectionGUID: hKrfa0asQdm4gwYLl+7B3g==
X-CSE-MsgGUID: VV8YHkj+TFOzPRrxl/OJlA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="214351696"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.205])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 03:23:53 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Thasleem@freedesktop.org, Mohammed <mohammed.thasleem@intel.com>,
 =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>
Subject: Re: [RESEND i-g-t v1] tests/kms_flip: test suspend on one pair of
 pipes
In-Reply-To: <20260201150333.2650279-1-michal.grzelak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260201150333.2650279-1-michal.grzelak@intel.com>
Date: Tue, 03 Feb 2026 13:23:50 +0200
Message-ID: <80d639d3d928b7035ee6dddd68a781e5b13e8fca@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:michal.grzelak@intel.com,m:Thasleem@freedesktop.org,m:mohammed.thasleem@intel.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 0DBDBD841D
X-Rspamd-Action: no action

On Sun, 01 Feb 2026, Micha=C5=82 Grzelak <michal.grzelak@intel.com> wrote:
> Currently, every pair of ({pipe1, pipe2}, {output1, output2}) is being
> tested in 2x-* subtests. Since suspend shouldn't be tested per pipe, it
> causes unnecessary overhead: with 4 pipes & 4 displays it runs in total
> 36 tests. Given that each suspend's dynamic subtest can take up to tens
> of seconds, total duration of the test easily exceeds timeout.

Surely this was meant for igt-dev mailing list.

BR,
Jani.

--=20
Jani Nikula, Intel
