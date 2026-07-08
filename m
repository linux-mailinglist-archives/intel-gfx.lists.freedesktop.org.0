Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id bj4fGwavTmp1SQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 22:11:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C04D072A1E8
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 22:11:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=OtiF01q6;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58B7310E66A;
	Wed,  8 Jul 2026 20:11:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 510B510E66A;
 Wed,  8 Jul 2026 20:11:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783541508; x=1815077508;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=zm4slQZA9a4PWROhmVthNxWl2LQq+afWtZlXCEOdF0A=;
 b=OtiF01q6ThGb+wTKWwMVGP/Y1CgxJajxHx8KlZLBry/hApC5eaCYVE+w
 nXdgTSuRFtGJVbSaIgJ+NtC/dQ+layjbY0JxImsxnjiRI5AtdE2ZVUH4A
 C9xsxorz/z8ehIw59eImUa1mTpYJbiaRDNrdBWgAi3wlNJwmeNKWKuN/r
 aHi3OCxhFlKgn0dcSk7B3NKL1J61CnvDxhju2eG2XXU/UYbBphsOS+bV1
 DdHznOqmKY+ndEkS24QI80sJ8oy/IORxnwpe2KMNDOqFA/s7Y2wtteYvl
 hyPfDk9I0E3wWB7aI4GcFQpF5NjTSfSbtfdJlOMZQhEhH+z2pFGEwkfJl Q==;
X-CSE-ConnectionGUID: AHkBvKDwToSVIvr44cgBbw==
X-CSE-MsgGUID: sjAjRth/SyixfTsTboEwjg==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="87900084"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="87900084"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 13:11:13 -0700
X-CSE-ConnectionGUID: qeE8sJ6VQOSaN8dKUZ3HIg==
X-CSE-MsgGUID: l9bvt7fpQKqDQru1SB6z5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="277608208"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 13:11:11 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 8 Jul 2026 13:11:10 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 8 Jul 2026 13:11:10 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.1) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 8 Jul 2026 13:11:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NP4w+UFLU/gdcKrA7hYC5Xnh/f+DKMeh7duoilj5Z2rFaqjSiwe5pG3wlOhSp4m6WWUpJMDdr3zQZdwAiKjuUx0PHGeW307qpG6z0bB9PEfgZwylDSF6329JTJChhMMRKo8FYrB8c++ZJY2OukxzPGkYHZ8FGu010C5D/bpj+9KEuzOOCwK5L4Wcu3LC7c5XeimkAOWcqxnZ6/zH/iTwkQVny4ui8lBSqDl1gJAKTArL8K4b7anAfZgP7+1VPr5QSJE0QwbeQHoImJsBNEPpgR9j8e0E3FlyUNUQ1DA5l4eOQWC+rb3eugxlOzCojWOVEuqhW3ivGh8DxT/CSaYFzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bg7shXJorBluHx7UL3Sty7PhAcSQ2fF+JyptWBbDoAA=;
 b=fGTsIe+18Y+luaM/doTqZNdtqhKuBPQzDrWBGWqWogoZy8f9q4NvChFMFTLIpABpa83UopUB0cOAJftn6Uft7R18hBu2bTmR2OQtDjM9yT/0CVwbTXChXlAwWSkbnSNslaV1J8dfiYtyu8cHrtW2lnFIxQVPiPl0d5LLgnRxJCc0HGcVC6wcwDzSsNSkuqv+CnnM9ipQWpv17shGTlgoGtgzs/nmyRduZYuCHljpDbzoQ4YS4hHZVQc9tDQGWKs5zclzSL1fo/Pm8RoSvgnOkcDQhZUfxr0U3AU6SzvIBIXDCLB634YDO1hlRDh5Ffej9zxR2VA02jpTSkiyGc6ysw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5073.namprd11.prod.outlook.com (2603:10b6:303:92::23)
 by PH8PR11MB9805.namprd11.prod.outlook.com (2603:10b6:510:3c2::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Wed, 8 Jul 2026
 20:11:08 +0000
Received: from CO1PR11MB5073.namprd11.prod.outlook.com
 ([fe80::a153:939c:df8c:f4fe]) by CO1PR11MB5073.namprd11.prod.outlook.com
 ([fe80::a153:939c:df8c:f4fe%4]) with mapi id 15.21.0181.014; Wed, 8 Jul 2026
 20:11:08 +0000
Date: Wed, 8 Jul 2026 16:11:02 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, Ville
 =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@intel.com>
CC: <jani.nikula@linux.intel.com>, <joonas.lahtinen@linux.intel.com>,
 <tursulin@ursulin.net>, <airlied@gmail.com>, <simona@ffwll.ch>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dri-devel@lists.freedesktop.org>, <sashiko-reviews@lists.linux.dev>, "Javier
 Martinez Canillas" <javierm@redhat.com>
Subject: Re: [PATCH] drm/i915/display: Handle struct
 drm_plane_state.ignore_damage_clips
Message-ID: <ak6u1iPEIDulYTnv@intel.com>
References: <20260701130929.234695-1-tzimmermann@suse.de>
 <13f94040-6f6d-4a8e-9581-be769a0e3abb@suse.de>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <13f94040-6f6d-4a8e-9581-be769a0e3abb@suse.de>
X-ClientProxiedBy: SJ0P220CA0027.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::18) To CO1PR11MB5073.namprd11.prod.outlook.com
 (2603:10b6:303:92::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5073:EE_|PH8PR11MB9805:EE_
X-MS-Office365-Filtering-Correlation-Id: 39abf4b6-433a-4098-0b61-08dedd2d0c40
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|23010399003|7416014|366016|1800799024|376014|18002099003|22082099003|4143699003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: bO4gno2fwoA6jUFVLmoUOjdzGUOPIpQMqKY6FIiYItjNMqGfSfJ/gNj8wSRij+X5FTdS/ruBPFtnBgj14hppur3si3dn8/eyTk940xbd4FMBtmpXINvjNJmg9p9thhtfFw8Le2co1jhwoX+ERZ0rDDsFlkB8NJO5GTVABHHcvqjQ7jRyySl4Bm8Ju/ZdLkUDObBWsRejf23tiDIU0GAYoKwCmTCzqJ+Ji3dsJvxDS0k3n0dq3CX+/N6rNRUBVdotHO/NSlzpiiqceZYgmedHwkJsNY3vE+fQbRK+r+lctjxOgh1YeMc1W9rJ7IqQMQWUJCq1s4Bk6xaF0Vb79DU4zL4T3JduDckl7FFDXdV+2tdNgVPwTTVK9OkgqIgwA7iDeOaY3Jgkml362coeFU/1cet/zrU56dsR4faG4jOrzAtp0Vr1MBqq9ez+/lLDA+GELMKO+gw/2xweb3P29z6E1zweubjeTV4xs0Nc3PEK7/I75oOL5pG/69TAQtjfVuww40GRVU4SlxDyjlQmF+3i99jv032I2Kp8Vp4KZQuyJcLBwjx/qjJP6hPwBR17Uj1o4aPgwX9raO8hSj/Qm8sGzO66ygrtPQChMHQRKHg4XGA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5073.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(7416014)(366016)(1800799024)(376014)(18002099003)(22082099003)(4143699003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?v/fX5qTBZ1b1RCPILBJI4JhQasMsfxkxAyAgSYCbBIU7A1XR9Kab2oL8Ou?=
 =?iso-8859-1?Q?UkGyy72UJi5sJax9okjNyjdyygyZyqd4URAxrVXwyEPUXDSFZT0cbWH6a4?=
 =?iso-8859-1?Q?BIPg4myeDW9Mo5wC9oblrflVwCVgH1f+CEMxQLTDwI2TlamLKzIVmL67l6?=
 =?iso-8859-1?Q?Q12RLWitK+fcIPN+DRB/shcKy2fvLa+2n+R3KsNS/Y9GSbPk+GAfqV3Ta5?=
 =?iso-8859-1?Q?DyQ5VTpekZxgYpzP8qJJwiPNU3jjkjh6Z3fPJ7ecuNBNvARpC8iEncdAcn?=
 =?iso-8859-1?Q?9bLung+tn9WQGGq1LDlhznd4yaEyY+vDxD2fx3lbd3vNWwlh6nIcqm2ryP?=
 =?iso-8859-1?Q?kzI4YLVvl1FrrnSf52uAjQjmLEBgozQ6ZEBt0PeNKEgyQIKTcSR7jon+H+?=
 =?iso-8859-1?Q?86pXdUEq3Lous9eDChKZ73jD54YyNib1gsiumB/84dHGiFijXMLJHVaNbn?=
 =?iso-8859-1?Q?p0WDHWf83kFSLWo8tTpc+lQ4NmrCLA0hQNFKAUH4DI8As++/tRPt6VilFf?=
 =?iso-8859-1?Q?XavK6EZNGYuf28ZsawtYIIxYyh5guo0YurgwGUZAfL7ORClUYvWYfdpGwU?=
 =?iso-8859-1?Q?t+BuNYqqyxanrbkQ6ZCgGOrAVRddGBAqu4o64hLa8JSSQAg0u5v9IIgqUn?=
 =?iso-8859-1?Q?f3/w0adrKDof/rTe2Kh4+kdcCKDoaUahD4zg9/C1CBAs0zBpbbyYdYdLGh?=
 =?iso-8859-1?Q?RspjyvY3rxQKjnFFS6Y242x/NQTjVxqCKkwo70vT0tUjvq88h8ykMeo4ce?=
 =?iso-8859-1?Q?1ql3E6Qq3Ect53MO0tIFZZmvLC6ZFKTXPoCc1DPaX11Aw1Oo9pWsArfy0H?=
 =?iso-8859-1?Q?pSvTSAfs5K+zZrvPply67imsQubtCynwR+Z4a+F9HhBelZFsW0sPSkF3mX?=
 =?iso-8859-1?Q?PvDqF8YuVfuQtgpL6otwp5LJHMFo0yh6isW/R+tckNMoDaP5VTZX1on5bI?=
 =?iso-8859-1?Q?A6UXiT+/Beo67/XXHCCJd0vCsISvIjugvcYGsdGJoQ6onnCxi0CYN3Bpmd?=
 =?iso-8859-1?Q?aJ11qAggj7puzpX5sSz2p2iIOfyjvknDjnNODqelnYYyAmjqwCoenZVJ02?=
 =?iso-8859-1?Q?6Bk6XBYharu/I1wQnatx9hyoGxjYtl3o1Jq41rRwHRMeh0Nni4W+2UBZ32?=
 =?iso-8859-1?Q?3P6dOpVGrC3gYM6u5PHe8vZEXhgjGaEybJjsqW9fDLAOwDK+8Bhxc1FDVY?=
 =?iso-8859-1?Q?AXtnHmTkUlZTRcY29T3UEClj9QK68YNL7a0YStP2Yl4hmQK0EIvao9/x+Z?=
 =?iso-8859-1?Q?XNPGs7ahrxEM+CJv8WcleZE69QHHbyB0JEpsl9F31Cf063MU0BkB0EoUm2?=
 =?iso-8859-1?Q?b8lNoPmk6wNCVw/Ji8VqNjUu9dGRaFJ3MBbciR2skuwgG3xbCMl3b/It8k?=
 =?iso-8859-1?Q?2dJjFZ2UdeviWNrHlCksSvo8jaNNzCp/eaXl4JMUaoSN55qZphGs2PSQJg?=
 =?iso-8859-1?Q?oEV/LNzijXk2APtzznFkZCtmCHKnIxvclfGcY9b+NIHyhhdx3hhc7ws5G0?=
 =?iso-8859-1?Q?jcahqgoUr+ZismRxU2TRa8CMkWKVU50zbKNWRCDezYHBpvmxa74oi0e54a?=
 =?iso-8859-1?Q?Zibnioujhgv6cDvIe5RtZHaQXANvIHZChJnLBWcIuvz8TChgdOo3hfcNbT?=
 =?iso-8859-1?Q?7hAkVvx1BTUufKSB3zgJ3WCAIeXGHwY/dhyUGFoXFMMOgnz34bjPsq2FPo?=
 =?iso-8859-1?Q?3Jdss2YKNhIYXcK8tanRMBAtHKiVe89boD5n7iq6jHubxPhh071/4QQpev?=
 =?iso-8859-1?Q?175U5ANSVyfB7hZGnOSKKBKDT8QI/rsC3eTk5sNQ3GnXTKGeSfVdONNuzC?=
 =?iso-8859-1?Q?di89qi+mRA=3D=3D?=
X-Exchange-RoutingPolicyChecked: qycvl27hlaiAwqkXySX72S4Ln4/nVlOZU9tAl2E0x5pPii6Zk9VVxYfPMK/AGe+IXW1knN7sC3d/WDXw718AI+W8RCb7Rk7xh5ZwvTOD2EEbFcgvMekfnVs6SyqgoFl+QapcqiEmYqMAMwUOiVqO27rU8MqLBRyvw1LdLHF1//CJvAgAcA6gMAQW/VOJZi/x1JAJBhCAfAC5rwYSjjDTOdkYyA9U7XAJYF1ROISGX3g6C8YSXTIeqe0j3Ad85jnE2QkMJp1Jxy6Mi+inET5LxMeSiqTFGW0E7f78epc9ps/+HafiZK2g8a0HMDhp4X7MUEJ7ZJl1lWy0+DKXYBda3g==
X-MS-Exchange-CrossTenant-Network-Message-Id: 39abf4b6-433a-4098-0b61-08dedd2d0c40
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5073.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jul 2026 20:11:08.3757 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: p2fNvZOZx+LLFp26NZyPrRd871FPUYHmvygNm+RzT+f10z1wY+pGPfWtDr7hQnds5lk39uD6UQrVF/UuhOc+5Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB9805
X-OriginatorOrg: intel.com
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linux.intel.com,ursulin.net,gmail.com,ffwll.ch,lists.freedesktop.org,lists.linux.dev,redhat.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:from_mime,intel.com:dkim,intel.com:mid,lists.freedesktop.org:from_smtp,suse.com:url];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rodrigo.vivi@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C04D072A1E8

On Wed, Jul 08, 2026 at 09:44:05AM +0200, Thomas Zimmermann wrote:
> gentle reminder to review this patch

Ville, could you please take a look on this?

Thomas, have you seen shashiko for this?
https://sashiko.dev/#/patchset/20260701130929.234695-1-tzimmermann%40suse.de

> 
> Am 01.07.26 um 15:07 schrieb Thomas Zimmermann:
> > Git commit 35ed38d58257 ("drm: Allow drivers to indicate the damage
> > helpers to ignore damage clips") introduced ignore_damage_clips to
> > selectively ignore damage clipping in certain framebuffer changes. The
> > mode-setting pipeline can disabled damage clippings for an atomic commit
> > by setting ignore_damage_clips in struct drm_plane_state. The atomic
> > commit will then do a full display update.
> > 
> > Although the i915 driver does not modify the flag, DRM's damage iterator
> > will soon rely on it. Calling drm_atomic_helper_check_plane_damage() right
> > before drm_atomic_helper_damage_merged() guarantees that it has the correct
> > state. The i915 driver does not do this elsewhere so far.
> > 
> > Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> > Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>
> > ---
> > Taken with minor updates to the commit description from the series at
> > 
> >    https://lore.kernel.org/dri-devel/20260610152505.260172-1-tzimmermann@suse.de/
> > ---
> >   drivers/gpu/drm/i915/display/intel_psr.c | 3 +++
> >   1 file changed, 3 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> > index 92af21d823a3..5a155f60110f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > @@ -2949,6 +2949,9 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
> >   		src = drm_plane_state_src(&new_plane_state->uapi);
> >   		drm_rect_fp_to_int(&src, &src);
> > +		/* Prepare plane-damage state before using it */
> > +		drm_atomic_helper_check_plane_damage(&state->base, &new_plane_state->uapi);
> > +
> >   		if (!drm_atomic_helper_damage_merged(&old_plane_state->uapi,
> >   						     &new_plane_state->uapi, &damaged_area))
> >   			continue;
> 
> -- 
> --
> Thomas Zimmermann
> Graphics Driver Developer
> SUSE Software Solutions Germany GmbH
> Frankenstr. 146, 90461 Nürnberg, Germany, www.suse.com
> GF: Jochen Jaser, Andrew McDonald, (HRB 36809, AG Nürnberg)
> 
> 
