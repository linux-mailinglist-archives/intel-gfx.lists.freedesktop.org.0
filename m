Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CNwQOOQt+mlXKgMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 05 May 2026 19:50:28 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48BEB4D252C
	for <lists+intel-gfx@lfdr.de>; Tue, 05 May 2026 19:50:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFDE410E478;
	Tue,  5 May 2026 17:50:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NpFGAFhw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 310CD10E466;
 Tue,  5 May 2026 17:50:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778003425; x=1809539425;
 h=date:from:to:cc:subject:message-id:
 content-transfer-encoding:mime-version;
 bh=OxoHzf8J3MtGtNv7NWiynHN1LjUs/WSwAylqLo0p5bI=;
 b=NpFGAFhwHBrPrfWpbincUvWvKyBn/C8CiDmOswWCjiS9Et7HAmnWb3le
 sAz9DxXKcEmgLPZPJvlmuyqTvW9wVkz/WB9vRyG6W/MK3YpgKjUTtJnkN
 YPps8nh3ahV0m0upMFC57yjJKQX+J+hcM4Kny+IkxEW74PFMjsRwC6Z9Q
 b7grXwAMXAfNQkoc1lqiZW1pOJUPtuqAj9qRtfXfrvLbZL0TWz1IQGGBk
 Z4biltsM6+u9nQxZdCR8Y3DUCzuNpUqr77+6xq+Aomqz71qsjfk0Jv7s2
 7WD4EE9Gcux4PIe/RLvc8kif9muJzQTCZKyf+HBa/l+1+bM0J+2tc4Tck A==;
X-CSE-ConnectionGUID: +LJLPkR0TOa262+XhMJ01Q==
X-CSE-MsgGUID: PruhUSS2Q8SNVJZwetS+hg==
X-IronPort-AV: E=McAfee;i="6800,10657,11777"; a="96451424"
X-IronPort-AV: E=Sophos;i="6.23,218,1770624000"; d="scan'208";a="96451424"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2026 10:50:22 -0700
X-CSE-ConnectionGUID: HeAqycyBSX2v9XkZvlT6xw==
X-CSE-MsgGUID: RLWKRHv8T3undFQtGVekrg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,218,1770624000"; d="scan'208";a="239865533"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2026 10:50:23 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 5 May 2026 10:50:21 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 5 May 2026 10:50:21 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.26) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 5 May 2026 10:50:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BgU023DuZHQ6RQB5F/glSnqodyq/z+nP0ZQM/mkl5YVHaoAfj6YSRrFAB+S/IhyOzdJaR/EDYqPQ8HieKbHZ299g1ADHiHHquNSFAcG+qXJ/sGSHgDi9A8uViI+rY0vZDxy+sxrlxc5MHNLrz0Y+HpzQCAj38pu2FtVA6VKVmYjCNtuF5sj/qrauER47i2rYLZHnsBBxsd8PfbSqwZrqZmWgVaSg9eb1qlsBkyHExo3Y4i/AU6YxGRRaRraTNSGGM7+RGI78j7qWggms0xL2z2UJkrKlGMth+6xr6MPR3uOOlJIwmPseDEH8dEtsYfT0PbdhtefeI9LJZQVPGqz2XA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2HszqSrgYwVczl8RMLGRb0glIcsU9CSxxTXYgmzBAmo=;
 b=gugqzux1dDQq8giFbEjIZozwxkRCCu8Qn37sp/uSrbQHbXMW9tp50CH3CUaqrqiHsPrpzBZWdumxXetLc0eGoVbcSMY9xUmA5x20Td2Bct3whp84BbMztVqgi3G+L1NwqaCoUDaF8lXc0ovt6pJkeF0Fq7xBcUv9WcaWOCoamgZrFjfw1bI/CEQiavjThOTmRLp4W3cLDj9Zc8BC5adHko4kBzrN3CDSblZfyY9ZRtS9MH5jm55RRRBpCga33iWTvWOx3y1qt/2LlVb3vZ8Jr71CX9C0hX1rf6qUH3knuYeQHmdg6mLUI7kQCwiJ0zgYO46s/hNk730hjiNd2XRttA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by BY1PR11MB7982.namprd11.prod.outlook.com (2603:10b6:a03:530::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Tue, 5 May
 2026 17:50:18 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::1d86:a34:519a:3b0d]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::1d86:a34:519a:3b0d%5]) with mapi id 15.20.9870.023; Tue, 5 May 2026
 17:50:18 +0000
Date: Tue, 5 May 2026 13:50:13 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Dave Airlie <airlied@gmail.com>, Simona Vetter <simona.vetter@ffwll.ch>
CC: Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Thomas Zimmermann
 <tzimmermann@suse.de>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Matthew Brost <matthew.brost@intel.com>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>, "Oded
 Gabbay" <ogabbay@kernel.org>, <dri-devel@lists.freedesktop.org>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dim-tools@lists.freedesktop.org>
Subject: [PULL] drm-intel-next
Message-ID: <afot1cjSpeAjYzg2@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR13CA0068.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::13) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|BY1PR11MB7982:EE_
X-MS-Office365-Filtering-Correlation-Id: 3e7d679e-341b-4111-3f8c-08deaacec4e6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|7416014|366016|13003099007|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info: UxzIB6fPbpA1wpLAP5LwX3+Pis0uzoxBE+8hoTavhup+hFdyzWi4l5zjsn3c/2iOafAPrgVL11ghuS3YU4dxz52Mv1ww0ZR8HhVCBwNaevOXMFQMFwXCSlPnAlPEJTdhNXQn+7xAK43JrPOYTePP3j4meft2YpIUZCb02ZRQrz4gJrZba2dW8gpJIYWgevlK1gEeHS60wIUn1O22KoQi1SzuTiY6VjCo4ftoXteyhPB8pVUkE4rGt47ddYGKb3zF6FmnTyUty7DVyKKWSpyTQswcgQJnJXsrfV0gk8z4pWvRtyBkpK7JHgYtyMqC7lTkmPe4/jkrysZ7330XF0uVDSLH3CYVa3ARKaie82/ObDcESTXOExrEZa5rTlqV1VcOmikUYn7JCVFf1YU/is8CA2nGOMeqxeyt/aljkOmIx8rRtD5jAhv0rhQ5yU1U01xtlK+q7/qGiC5I+8m4koc5Cd77sChuyq+YVYYCpYzo8CbnOj87CVxmtj+VYdAniK1ya1/1BMGnxJvZvI8jaTmXjLfvwf+9qne1d4tjiQ5asLKHgxNhI+/z9+wsGh2s91XWv2El2yz3003n2JDSfMyrY3cfzunSDLMXE7ycwPnv4KF46LBj5cobm+/wUzG5zKJOAdFlqdqVzuW/pa32k/bTSg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016)(13003099007)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?mzqxDbesmcg8m8v5ID8cwnXpEq4GkaVhs3EkSUB1t05dwcP8yBMBgLp4+V?=
 =?iso-8859-1?Q?BS6w2dJbm8JcyCVUpIPQ95zirhoWGDv4PkOKZvkGsHhCYK21besfVR1AOf?=
 =?iso-8859-1?Q?wgiOrSh1JO0DzJfUv6W086miV+hAzVxnJNYleRwGqJXFRy6aVtYxTaTkMf?=
 =?iso-8859-1?Q?aGBnexFK67lDsuQ2DSN6gF1ptJlFkBQQNgC3E1c38k+yQen31h6mqjBXVa?=
 =?iso-8859-1?Q?haUh+1cY6UCF9ai2eYPMnTvCeEJHhl+4FJQkEPtf2lmkUWb2oxHQKWnL+m?=
 =?iso-8859-1?Q?nCWYHPqYirMEaMDHudSNdJCRJnIDu6EttgjCTBvzt0LiHq17myEgASNJ4f?=
 =?iso-8859-1?Q?GEOzAuMO0el1WH4ny74C1HDRNNSZ8q2UCpXi/BydICKjup1EbzktG4yvim?=
 =?iso-8859-1?Q?fLVXkkFmf7TQZluyJJIWP2F1myoD9WRM5kALq7B2MaTrqH+uUmTUNniWe3?=
 =?iso-8859-1?Q?lleBJ+zwhkLG8I9I80EGszhm1J/vgYLxGZo8parnoBL0qEG7I3+AIs4SZ4?=
 =?iso-8859-1?Q?h6iS71BT5xlf8OwwA5NhOLgN9Ot5ewiY14YvO/53y58T1jgjaEC0ElkLsl?=
 =?iso-8859-1?Q?mBWtPEZkFF5Zf5KzlSbxRei2QvLo6Iz04dGW/bQvAXE13zWFYKOf2Mjp0s?=
 =?iso-8859-1?Q?4VpzjdJ7O1nlHGcdkDHZmESVxoJqKqDtZG97RavpX1+DkEBdu4jfxNU7/n?=
 =?iso-8859-1?Q?27dNqRTnvg6MWg5xpO2UmU54YBJAraAmFOcOguhfPphm2zjbYh5pixZKos?=
 =?iso-8859-1?Q?KOKCKR6VZyFTRo45IzD4p4W8D4m0Qc4Te30BTJ2o75n7F4VT6BWvmjXvvF?=
 =?iso-8859-1?Q?P/DhfbAvAMscHqDhFfFZxZgpSsyLL0ymbgYMaQ/OQ6/2m1qzZ36B+fDmfn?=
 =?iso-8859-1?Q?mLV1IfSM2147ujKVUNTa0vnnLyI8Q5RwRVumTHENJDDWcTgF1SWiaYG6D2?=
 =?iso-8859-1?Q?6EssewtZJhnuWhS6k9Lk0bMvp+dlRF2J9cNoX0l9ff0QrGcUk6xxFo8d6G?=
 =?iso-8859-1?Q?2R89rP0wj5KTffVNkAxrf1/4uZlHkc5K98s0kLI1FBdnpTNmvzV8tEPzAD?=
 =?iso-8859-1?Q?cxsgetxy40eHLyQpfYWWzcGq/WH6gX4XzQ1xZVsHq3RPJUkvoTdfEpe4ET?=
 =?iso-8859-1?Q?vHf6W+G8JuhuHP1DFF1PzF1x7Dta3jVqUWrSFYfEVsC0U5gCGuWI2hM9k6?=
 =?iso-8859-1?Q?Sk1i1sMYS6wr+sUJFFirDmyboE8YcZ7PoRqSexaOeU40LJpvDoRgpIFQvM?=
 =?iso-8859-1?Q?XNe3IZYbnAHpjenUQCQCihevlw9dhT86+lYWICt+qUnnGr0OvC2Vr4trff?=
 =?iso-8859-1?Q?XkKgjfcMzwNkxjWoGkNyloJ3zVpZIX3iZ8BZ3REih1l3zaDb+3r1Vgn/es?=
 =?iso-8859-1?Q?6IrYuXW3LwPHGWwpu25yNzsb8Hqy0H/XPHKG/b1BtXlt0KCff5vkqBl8/P?=
 =?iso-8859-1?Q?uJpjLD7a4Gv8D+LvhCPCjSXJ10HESqrJ/rv3ZMX0U2Q7Mk7LcM9HBlUtFT?=
 =?iso-8859-1?Q?lD4l6aGnhFchX/UitmTFBlcdnzpwfh8TMPgOkvBHungEaGojC7KpdcUXSW?=
 =?iso-8859-1?Q?NeFEqrC0M5YNvbFF6HCrakDrTvP4dxYgS714wren6jdiBBj6VuROHJWEIf?=
 =?iso-8859-1?Q?l4Ag4VK5DDdQ9Jpad6XTZhPs1/BSS3/0xfjO6FpitWOosMBh221bevYaBO?=
 =?iso-8859-1?Q?dhrQ9RlSfFpXl3TBcRIkw6zSY9EuUuEYkTCXnWiIFHUqW9SZSwmrUPQW3u?=
 =?iso-8859-1?Q?2L3K4wqtRLXg8QrZTuiN3T2Vl+xo8E7JzSq2x9tXAZCQCHyn1j0LEp/aeu?=
 =?iso-8859-1?Q?EB/HyGydug=3D=3D?=
X-Exchange-RoutingPolicyChecked: AdpnbpyhtKX8fcV0R3hYr6Oa13ZDFGAmObYHSsIODoqZx129mkRcOwdbJLawQ1YrT/n+ySEjKOLsc6oTmnuENqv9+S65qQJevHfvLXtfpuhazaKUZwOqlpWxuMxB+xSHMWoohNSSeRvAYixadQ+wjoxTRorEFmlSZ9NQkIE7mhl7VOV5R7YKixvfh3WVgnnJBCut7++9K/63wrV09tNUoqpe/9SnvfvTBEU1Q4cgnt/JRj0EzAQ3LvKMWw5hXIzPaWTxrPDMw5XdG/DZ+yFkPYsatzUE8DtoY7ZrmXsnAEWN4+R7YonGWIXmNxR4Lc63VfpPet0/zueANzDnjxcHCA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e7d679e-341b-4111-3f8c-08deaacec4e6
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 May 2026 17:50:17.9553 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Aow0YBOHOA8OCql5+6aLGyfmQZ4j+Azww61QzQwrwq6L2Qp+TilM0IkG0ccY1Fi5Zy7z7FqJSAEmiIDxblsDQg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB7982
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
X-Rspamd-Queue-Id: 48BEB4D252C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch];
	RCPT_COUNT_TWELVE(0.00)[16];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[rodrigo.vivi@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]

Hi Dave and Sima,

Here goes our first drm-intel-next PR towards 7.2.

Please notice that this includes 2 topic branches from Jani, one for changing
pipe allocation order for discrete platforms and another unify xe and i915
on common steppings headers and enums.

Because of these I had to generate the PR with 'dim -f' otherwise the merge
commit itself fails dim checks. I believe you will also need to use -f when
handling this PR.

Thanks,
Rodrigo.

drm-intel-next-2026-05-05:
 - Enable PIPEDMC_ERROR interrupt (Dibin)
 - Some general display fixes and cleanups (Ville, Nemesa,
   Suraj, Dibin, Arun, Desnes, Juha-Pekka, Vidya, Julian)
 - More refactor to split display code (Jani, Ville, Luca)
 - Panel Replay BW optimization (Animesh)
 - Integrate the sharpness filter properly into the scaler (Ville)
 - Watermark/SAGV fixes/cleanups/etc (Ville)
 - Restructure DP/HDMI sink format handling (Ville)
 - Eliminate FB usage from low level pinning code (Ville)
 - Some initial prep patches for always enable AS SDP (Ankit)
 - Many PSR related fixes (Jouni)
 - Fix MST VCPI lookup and modeset-lock splat (Suraj)
The following changes since commit 2c683e9b419328da3433a49f7c467da71aaf0469:

  drm/i915/display: change pipe allocation order for discrete platforms (2026-04-15 13:30:26 +0300)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/i915/kernel.git tags/drm-intel-next-2026-05-05

for you to fetch changes up to 025f89b01ed8d5e65d87ed54f231e10c6ac08188:

  drm/i915: replace select with dependency for visible DEBUG_OBJECTS (2026-05-05 16:39:55 +0300)

----------------------------------------------------------------
 - Enable PIPEDMC_ERROR interrupt (Dibin)
 - Some general display fixes and cleanups (Ville, Nemesa,
   Suraj, Dibin, Arun, Desnes, Juha-Pekka, Vidya, Julian)
 - More refactor to split display code (Jani, Ville, Luca)
 - Panel Replay BW optimization (Animesh)
 - Integrate the sharpness filter properly into the scaler (Ville)
 - Watermark/SAGV fixes/cleanups/etc (Ville)
 - Restructure DP/HDMI sink format handling (Ville)
 - Eliminate FB usage from low level pinning code (Ville)
 - Some initial prep patches for always enable AS SDP (Ankit)
 - Many PSR related fixes (Jouni)
 - Fix MST VCPI lookup and modeset-lock splat (Suraj)

----------------------------------------------------------------
Animesh Manna (3):
      drm/display: Add drm helper to check pr optimization support
      drm/i915/display: Add hook to check optimization support for Intel platforms
      drm/i915/display: Panel Replay BW optimization for DP2.0 tunneling

Ankit Nautiyal (3):
      drm/i915/vrr: Avoid vrr for PCON with HDMI2.1 sink
      drm/i915/dp: Add a helper to decide if AS SDP can be used
      drm/i915/dp: Skip AS SDP for DP branch devices

Arun R Murthy (1):
      drm/i915/lt_phy: Update the Tx Swing for DP 1.4

Desnes Nunes (1):
      drm/i915/dmc: use display instead of dereferencing dmc in intel_dmc_update_dc6_allowed_count()

Dibin Moolakadan Subrahmanian (3):
      drm/i915/dmc: Remove invalid PIPEDMC interrupt bits
      drm/i915/dmc: Enable PIPEDMC_ERROR interrupt
      drm/i915/dmc: Reduce wakelock hold time

Jani Nikula (34):
      Merge drm/drm-next into drm-intel-next
      drm/{i915, xe}: convert VLV sideband display wrappers into real functions
      drm/i915: pass struct intel_display * to VLV sideband wrappers
      drm/i915/dram: prefer display abstractions for VLV sideband
      drm/i915: move VLV IOSF sideband to display parent interface
      drm/{i915, xe}: add shared header for VLV IOSF sideband units and registers
      drm/xe/fbdev: put intel_fbdev_fb_prefer_stolen() behind IS_ENABLED(CONFIG_DRM_FBDEV_EMULATION)
      drm/{i915, xe}/fbdev: drop drm device parameter from intel_fbdev_fb_fill_info()
      drm/{i915, xe}: move fbdev fb calls to parent interface
      drm/i915: pass struct drm_i915_private to i915_bo_fbdev_prefer_stolen()
      drm/xe: pass struct xe_device to xe_display_bo_fbdev_prefer_stolen()
      drm/i915: move intel_fb_pin.c to i915_fb_pin.c
      drm/i915/pin: s/dev_priv/i915/ and drop struct drm_device usage
      drm/i915/pin: switch to i915 core runtime pm
      drm/i915/mchbar: include intel_mchbar_regs.h from intel_mchbar.h
      drm/i915/mchbar: drop unnecessary intel_mchbar_regs.h include
      drm/i915/mchbar: move intel_mchbar_regs.h under include/drm/intel
      drm/i915: drop unnecessary intel_pci_config.h include
      drm/i915/pci: move intel_pci_config.h under include/drm/intel
      Merge drm/drm-next into drm-intel-next
      drm/xe/step: switch to the shared step definitions with i915
      drm/xe/step: switch from enum xe_step to intel_step naming
      drm/i915/display: switch to including common step file directly
      Merge tag 'topic/step-2026-04-09' of https://gitlab.freedesktop.org/drm/i915/kernel into drm-intel-next
      Merge tag 'topic/pipe-reorder-2026-04-15' of https://gitlab.freedesktop.org/drm/i915/kernel into drm-intel-next
      drm/i915/ddi: add wrapper for calling ->get_buf_trans() hook
      drm/i915/display: move audio funcs under audio sub-struct
      drm/i915/display: move color funcs under color sub-struct
      drm/i915/display: move fdi funcs under fdi sub-struct
      drm/i915/display: move watermark funcs under wm sub-struct
      drm/i915/display: move hotplug irq funcs under hotplug sub-struct
      drm/i915/display: move dpll funcs under dpll sub-struct
      drm/i915/display: move cdclk funcs under cdclk sub-struct
      drm/i915/display: move display funcs under modeset sub-struct

Jouni Högander (4):
      drm/i915/psr: Do not use pipe_src as borders for SU area
      drm/i915/psr: Init variable to avoid early exit from et alignment loop
      drm/i915/psr: Disable Panel Replay on Dell XPS 16 DA16260 as a quirk
      drm/i915/psr: Disable PSR2 on Xiaomi Book Pro 14 2026 as a quirk

Juha-Pekka Heikkila (1):
      drm/i915/display: enable ccs modifiers on dg2

Julian Braha (1):
      drm/i915: replace select with dependency for visible DEBUG_OBJECTS

Luca Coelho (8):
      drm/i915: move SKL clock gating init to display
      drm/i915: move KBL clock gating init to display
      drm/i915/display: move CFL clock gating init to display
      drm/i915/display: move BXT clock gating init to display
      drm/i915/display: move GLK clock gating init to display
      drm/i915/display: move HSW and BDW clock gating init to display
      drm/i915/display: move pre-HSW clock gating init to display
      drm/i915: remove HAS_PCH_NOP() dependency from clock gating

Nemesa Garg (1):
      drm/i915/pfit: Prevent negative coordinates in center mode

Suraj Kandpal (5):
      drm/i915/backlight: Fix VESA backlight possible check condition
      drm/i915/dp: Change drm_err to drm_dbg_kms
      drm/i915/display: Avoid stale PIPE_SCANLINE values after crtc_enable
      drm/i915/hdcp: Use new MST topology state in intel_conn_to_vcpi()
      drm/i915/hdcp: Drop mgr->base.lock acquisition in intel_conn_to_vcpi()

Vidya Srinivas (1):
      drm/i915/display: Use ceiling division for NV12 UV surface offset calculation

Ville Syrjälä (85):
      drm/i915/cdclk: Do the full CDCLK dance for min_voltage_level changes
      drm/i915/dp: Use crtc_state->enhanced_framing properly on ivb/hsw CPU eDP
      drm/i915: Split the pipe_src dump to its own line
      drm/i915: Include the crtc min_voltage_level in the state dump
      drm/i915: Eliminate out of place "HBlank" CamelCase
      drm/i915: Move the sharpness filter dump next to pfit
      drm/i915/dp: Implement the POST_LT_ADJ_REQ sequence
      drm/i915/qgv: Use intel_de_read() for MTL_MEM_SS_INFO* reads
      drm/i915/mchbar: Provide intel_mchbar_read*() abstraction
      drm/i915/mchbar: Define the end of the MCHBAR mirror
      drm/i915/mchbar: WARN when accessing non-MCHBAR registers via intel_mchbar_read*()
      drm/i915/mchbar: Use intel_mchbar_read() instead of intel_de_read()
      drm/i915/mchbar: Use intel_mchbar_read*() instead of intel_uncore_read*()
      drm/i915/de: Add intel_de_read16()
      drm/i915/de: s/intel_de_read64_2x32()/intel_de_read64_2x32_volatile()/
      drm/i915/de: Add a simple intel_de_read64_2x32()
      drm/i915/vrr: Use intel_de_read64_2x32()
      drm/i915/mchbar: Use intel_de_read*() for MCHBAR register accesses
      drm/i915/rom: Use intel_de for SPI ROM register access
      drm/i915/casf: s/casf_enable/enable/
      drm/i915/casf: Make a proper hw state copy of the sharpness_strength
      drm/i915/casf: Move the casf state to better place
      drm/i915/casf: Extract scaler_has_casf()
      drm/i915/casf: Handle CASF in skl_scaler_get_filter_select()
      drm/i915/casf: Constify crtc_state
      drm/i915/casf: Remove redundant argument from intel_casf_filter_lut_load()
      drm/i915/pfit: Call intel_pfit_compute_config() unconditionally on (e)DP/HDMI
      drm/i915/casf: Integrate the sharpness filter properly into the scaler code
      drm/i915/dp: Don't use DP link min bpp for the FRL link bandwidth check
      drm/i915/wm: Reject SAGV consistently when block_time_us==0
      drm/i915/wm: Don't compute separate SAGV watermarks for RKL
      drm/i915/wm: Consolidate SAGV pipe active/interlace checks to common code
      drm/i915/wm: Verify the correct plane DDB entry
      drm/i915/wm: Extract skl_wm_level_verify()
      drm/i915/wm: Extract skl_ddb_entry_verify()
      drm/i915/wm: Verify 'ddb_y' as well as 'ddb'
      drm/i915/wm: Reduce copy-pasta in skl_print_plane_wm_changes()
      drm/i915/wm: Allow SAGV with multiple pipes on pre-icl
      drm/i915/fb: Nuke intel_tile_row_size()
      drm/i915/fb: Make intel_fb_needs_pot_stride_remap() static
      drm/i915/fb: Reject per-plane remapping with DPT
      drm/i915/vma: Add helpers to check GTT view type
      drm/i915/fb: Use i915_gtt_view_is_*()
      drm/i915/fb: Use intel_fb_needs_pot_stride_remap() in intel_fb_view_init()
      drm/i915/mst: Call intel_pfit_compute_config() for sharpness filter
      drm/i915/mst: Remove redundant has_pch_encoder=false assignment
      drm/i915/hdmi: Add missing intel_pfit_mode_valid() for 4:2:0 also modes
      drm/i915/hdmi: Restructure the sink/output format selection
      drm/i915/hdmi: Restructure 4:2:0 vs. 4:4:4 mode validation
      drm/i915/dp: Restructure the sink/output format selection
      drm/i915/dp: Validate "4:2:0 also" modes twice
      drm/i915/dp: Require a HDMI sink for YCbCr output via PCON
      drm/i915/dp: Validate sink format in .mode_valid()
      drm/i915/hdmi: Make the RGB fallback for "4:2:0 only" modes the last resort
      drm/i915/dp: Make the RGB fallback for "4:2:0 only" modes the last resort
      drm/i915: Introduce sanity to the plane_config pointer vs. array thing
      drm/i915: Remove 'mem' and 'phy_base' from struct intel_initial_plane_config
      drm/i915: Don't pass the whole plane_config to initial_plane_phys()
      drm/i915: Make plane_config->fb a struct drm_framebuffer*
      drm/i915: Move initial plane vblank wait into display code
      drm/i915: Use a 1 second timeout for the polling vblank wait
      drm/i915: Reject tile4 BIOS FB
      drm/i915: Reject X/Y tiled BIOS FB if we don't have fenced regions
      drm/i915: Completely reject DPT BIOS FBs.
      drm/i915: Reject BIOS FB rotation in common code
      drm/i915: Track fence region ID in plane state
      drm/i915: Remove the vma parent interface
      drm/i915: Clear i915->display when no longer valid
      drm/xe: Clear xe->display when no longer valid
      drm/i915/reset: Reorganize display reset code
      drm/i915/reset: Move pending_fb_pin handling to i915
      drm/xe/display: Add init_clock_gating.h stubs
      drm/i915/reset: Add "intel_display_reset_count" debugfs file
      drm/i915/reset: Disable execlist per-engine reset for display reset tests
      drm/xe/fb: Use the correct gtt view for remapped FBs
      drm/i915: Introduce struct intel_fb_pin_params
      drm/i915: Extract intel_fb_needs_cpu_access()
      drm/i915: Introduce pin_params.needs_cpu_lmem_access
      drm/i915: Extract intel_plane_needs_low_address()
      drm/i915: Introduce pin_params.needs_low_address
      drm/i915: Introduce pin_params.needs_physical
      drm/i915: Extract intel_plane_needs_fence()
      drm/i915: Introduce pin_params.needs_fence
      drm/xe: Eliminate intel_fb_uses_dpt() call from __xe_pin_fb_vma()
      drm/i915: Don't pass the framebuffer to low level pinning functions

 drivers/gpu/drm/display/drm_dp_tunnel.c            |  17 ++
 drivers/gpu/drm/i915/Kconfig.debug                 |   2 +-
 drivers/gpu/drm/i915/Makefile                      |   7 +-
 drivers/gpu/drm/i915/display/i9xx_display_sr.c     |   2 +-
 drivers/gpu/drm/i915/display/i9xx_plane.c          |   2 +-
 drivers/gpu/drm/i915/display/i9xx_wm.c             |  65 +++--
 drivers/gpu/drm/i915/display/intel_audio.c         |  22 +-
 drivers/gpu/drm/i915/display/intel_backlight.c     |   2 +-
 drivers/gpu/drm/i915/display/intel_bo.c            |  27 ++
 drivers/gpu/drm/i915/display/intel_bo.h            |   8 +
 drivers/gpu/drm/i915/display/intel_bw.c            |  58 +---
 drivers/gpu/drm/i915/display/intel_casf.c          | 102 ++-----
 drivers/gpu/drm/i915/display/intel_casf.h          |   6 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c         | 142 +++++-----
 drivers/gpu/drm/i915/display/intel_color.c         |  58 ++--
 .../gpu/drm/i915/display/intel_crtc_state_dump.c   |  26 +-
 drivers/gpu/drm/i915/display/intel_cx0_phy.c       |   2 +-
 drivers/gpu/drm/i915/display/intel_ddi.c           |  18 +-
 drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c |  11 +-
 drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h |   3 +
 drivers/gpu/drm/i915/display/intel_de.c            |   8 +
 drivers/gpu/drm/i915/display/intel_de.h            |  17 +-
 drivers/gpu/drm/i915/display/intel_display.c       |  78 ++----
 .../drm/i915/display/intel_display_clock_gating.c  | 270 +++++++++++++++++++
 .../drm/i915/display/intel_display_clock_gating.h  |  27 ++
 drivers/gpu/drm/i915/display/intel_display_core.h  |  62 ++---
 .../gpu/drm/i915/display/intel_display_debugfs.c   |   7 +-
 .../gpu/drm/i915/display/intel_display_device.c    |   2 +-
 .../gpu/drm/i915/display/intel_display_device.h    |   1 +
 drivers/gpu/drm/i915/display/intel_display_irq.c   |   4 +
 drivers/gpu/drm/i915/display/intel_display_power.c |  14 +-
 .../gpu/drm/i915/display/intel_display_power_map.c |   2 +-
 .../drm/i915/display/intel_display_power_well.c    |  65 +++--
 drivers/gpu/drm/i915/display/intel_display_regs.h  |  32 +++
 drivers/gpu/drm/i915/display/intel_display_reset.c |  42 +--
 drivers/gpu/drm/i915/display/intel_display_reset.h |   8 +-
 drivers/gpu/drm/i915/display/intel_display_types.h |  14 +-
 drivers/gpu/drm/i915/display/intel_display_wa.c    |   2 +-
 drivers/gpu/drm/i915/display/intel_dmc.c           |  12 +-
 drivers/gpu/drm/i915/display/intel_dmc_wl.c        |   2 +-
 drivers/gpu/drm/i915/display/intel_dp.c            | 291 ++++++++++++--------
 .../gpu/drm/i915/display/intel_dp_aux_backlight.c  |   9 +-
 .../gpu/drm/i915/display/intel_dp_link_training.c  | 124 ++++++++-
 .../gpu/drm/i915/display/intel_dp_link_training.h  |   2 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c        |   9 +-
 drivers/gpu/drm/i915/display/intel_dp_tunnel.c     |  18 ++
 drivers/gpu/drm/i915/display/intel_dp_tunnel.h     |   6 +
 drivers/gpu/drm/i915/display/intel_dpio_phy.c      | 176 ++++++------
 drivers/gpu/drm/i915/display/intel_dpll.c          | 144 +++++-----
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_dram.c          |  48 ++--
 drivers/gpu/drm/i915/display/intel_fb.c            |  49 ++--
 drivers/gpu/drm/i915/display/intel_fb.h            |   3 +-
 drivers/gpu/drm/i915/display/intel_fb_pin.h        |  27 +-
 drivers/gpu/drm/i915/display/intel_fbc.c           |  13 +-
 drivers/gpu/drm/i915/display/intel_fbdev.c         |  40 +--
 drivers/gpu/drm/i915/display/intel_fbdev_fb.c      | 118 --------
 drivers/gpu/drm/i915/display/intel_fbdev_fb.h      |  24 --
 drivers/gpu/drm/i915/display/intel_fdi.c           |  11 +-
 drivers/gpu/drm/i915/display/intel_flipq.c         |   2 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c          |  19 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c          | 165 +++++++-----
 drivers/gpu/drm/i915/display/intel_hotplug_irq.c   |  30 +--
 drivers/gpu/drm/i915/display/intel_initial_plane.c |  83 ++++--
 drivers/gpu/drm/i915/display/intel_lpe_audio.c     |   2 +-
 drivers/gpu/drm/i915/display/intel_lt_phy.c        |   2 +-
 drivers/gpu/drm/i915/display/intel_mchbar.c        |  78 ++++++
 drivers/gpu/drm/i915/display/intel_mchbar.h        |  21 ++
 drivers/gpu/drm/i915/display/intel_modeset_setup.c |   3 +-
 drivers/gpu/drm/i915/display/intel_opregion.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_overlay.c       |  10 +-
 drivers/gpu/drm/i915/display/intel_parent.c        |  35 ++-
 drivers/gpu/drm/i915/display/intel_parent.h        |   8 +-
 drivers/gpu/drm/i915/display/intel_pfit.c          |  24 +-
 drivers/gpu/drm/i915/display/intel_plane.c         |  25 +-
 drivers/gpu/drm/i915/display/intel_plane.h         |   3 +
 drivers/gpu/drm/i915/display/intel_pmdemand.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_psr.c           |  62 +++--
 drivers/gpu/drm/i915/display/intel_quirks.c        |  17 ++
 drivers/gpu/drm/i915/display/intel_quirks.h        |   1 +
 drivers/gpu/drm/i915/display/intel_rom.c           |  19 +-
 drivers/gpu/drm/i915/display/intel_snps_phy.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_vblank.c        |   4 +-
 drivers/gpu/drm/i915/display/intel_vrr.c           |  16 +-
 drivers/gpu/drm/i915/display/intel_wm.c            |  32 +--
 drivers/gpu/drm/i915/display/skl_scaler.c          | 110 +++-----
 drivers/gpu/drm/i915/display/skl_scaler.h          |   2 -
 drivers/gpu/drm/i915/display/skl_universal_plane.c |  37 ++-
 drivers/gpu/drm/i915/display/skl_watermark.c       | 296 ++++++++-------------
 drivers/gpu/drm/i915/display/vlv_clock.c           |  13 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c             |  20 +-
 drivers/gpu/drm/i915/display/vlv_dsi_pll.c         |  38 +--
 drivers/gpu/drm/i915/display/vlv_sideband.c        | 136 +++++++++-
 drivers/gpu/drm/i915/display/vlv_sideband.h        | 166 ++----------
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c         |   4 +-
 drivers/gpu/drm/i915/gt/intel_ggtt.c               |   2 +-
 drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c       |   2 +-
 drivers/gpu/drm/i915/gt/intel_gt.c                 |   2 +-
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c      |   1 -
 drivers/gpu/drm/i915/gt/intel_llc.c                |   2 +-
 drivers/gpu/drm/i915/gt/intel_region_lmem.c        |   2 +-
 drivers/gpu/drm/i915/gt/intel_reset.c              |  40 +--
 drivers/gpu/drm/i915/gt/intel_rps.c                |   4 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c        |   1 -
 drivers/gpu/drm/i915/gvt/cfg_space.c               |   2 +-
 drivers/gpu/drm/i915/gvt/handlers.c                |   1 -
 drivers/gpu/drm/i915/i915_bo.c                     | 114 ++++++++
 drivers/gpu/drm/i915/i915_bo.h                     |   6 +
 drivers/gpu/drm/i915/i915_debugfs.c                |   2 +-
 drivers/gpu/drm/i915/i915_dpt.c                    |   5 +-
 drivers/gpu/drm/i915/i915_driver.c                 |   9 +-
 drivers/gpu/drm/i915/i915_drv.h                    |   2 +
 .../i915/{display/intel_fb_pin.c => i915_fb_pin.c} | 157 +++++------
 drivers/gpu/drm/i915/i915_freq.c                   |   2 +-
 drivers/gpu/drm/i915/i915_gmch.c                   |   2 +-
 drivers/gpu/drm/i915/i915_gtt_view_types.h         |  15 ++
 drivers/gpu/drm/i915/i915_hwmon.c                  |   2 +-
 drivers/gpu/drm/i915/i915_initial_plane.c          |  33 +--
 drivers/gpu/drm/i915/i915_overlay.c                |   8 +-
 drivers/gpu/drm/i915/i915_pci.c                    |   2 +-
 drivers/gpu/drm/i915/i915_reg.h                    |  31 ---
 drivers/gpu/drm/i915/i915_vma.c                    |  10 -
 drivers/gpu/drm/i915/i915_vma.h                    |   2 -
 drivers/gpu/drm/i915/intel_clock_gating.c          | 230 ++--------------
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c        |   2 +-
 drivers/gpu/drm/i915/selftests/mock_gem_device.c   |   1 +
 drivers/gpu/drm/i915/vlv_iosf_sb.c                 |   8 +
 drivers/gpu/drm/i915/vlv_iosf_sb.h                 |  16 +-
 drivers/gpu/drm/xe/Makefile                        |   6 +-
 .../xe/compat-i915-headers/intel_clock_gating.h    |  10 +-
 .../drm/xe/compat-i915-headers/intel_mchbar_regs.h |   6 -
 .../drm/xe/compat-i915-headers/intel_pci_config.h  |   6 -
 .../gpu/drm/xe/compat-i915-headers/intel_step.h    |  13 -
 .../gpu/drm/xe/compat-i915-headers/vlv_iosf_sb.h   |  42 ---
 .../drm/xe/compat-i915-headers/vlv_iosf_sb_reg.h   |   6 -
 drivers/gpu/drm/xe/display/intel_fbdev_fb.c        | 120 ---------
 drivers/gpu/drm/xe/display/xe_display.c            |  11 +-
 drivers/gpu/drm/xe/display/xe_display_bo.c         | 120 +++++++++
 drivers/gpu/drm/xe/display/xe_display_bo.h         |   6 +
 drivers/gpu/drm/xe/display/xe_fb_pin.c             |  73 +++--
 drivers/gpu/drm/xe/display/xe_initial_plane.c      |  32 +--
 drivers/gpu/drm/xe/tests/xe_pci.c                  |   4 +-
 drivers/gpu/drm/xe/xe_step.c                       |   2 +-
 drivers/gpu/drm/xe/xe_step.h                       |   4 +-
 drivers/gpu/drm/xe/xe_step_types.h                 |  61 +----
 include/drm/display/drm_dp_tunnel.h                |   6 +
 include/drm/intel/display_parent_interface.h       |  23 +-
 .../drm/intel/mchbar_regs.h                        |   7 +-
 .../drm/intel/pci_config.h                         |   0
 .../drm/intel/vlv_iosf_sb_regs.h                   |  18 +-
 150 files changed, 2802 insertions(+), 2344 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_clock_gating.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_clock_gating.h
 delete mode 100644 drivers/gpu/drm/i915/display/intel_fbdev_fb.c
 delete mode 100644 drivers/gpu/drm/i915/display/intel_fbdev_fb.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_mchbar.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_mchbar.h
 rename drivers/gpu/drm/i915/{display/intel_fb_pin.c => i915_fb_pin.c} (66%)
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/intel_mchbar_regs.h
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/intel_pci_config.h
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/intel_step.h
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/vlv_iosf_sb.h
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/vlv_iosf_sb_reg.h
 delete mode 100644 drivers/gpu/drm/xe/display/intel_fbdev_fb.c
 rename drivers/gpu/drm/i915/intel_mchbar_regs.h => include/drm/intel/mchbar_regs.h (98%)
 rename drivers/gpu/drm/i915/intel_pci_config.h => include/drm/intel/pci_config.h (100%)
 rename drivers/gpu/drm/i915/vlv_iosf_sb_reg.h => include/drm/intel/vlv_iosf_sb_regs.h (95%)
