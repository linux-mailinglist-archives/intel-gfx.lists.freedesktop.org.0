Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yD8iNYOZpWnxEgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 15:06:59 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16F9D1DA603
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 15:06:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1305E10E508;
	Mon,  2 Mar 2026 14:06:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j4BXPUh9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D18A710E501
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Mar 2026 14:06:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772460416; x=1803996416;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=R5LnRqAMeMMrE73igXTNCNznqIDFdqCHZO4Fv02TjuU=;
 b=j4BXPUh9bvKs9gsxBSgK2OMicC6MlgV+Fw88Wa0lnV2QfZlIl31goZnp
 bBxqZUE6xGge8aFspVDHYzbnM7deISTXlECWlaVIyqXLCzJ3l9UCOBOaR
 nYnRAUX/tWmD4kF69mY50pb6R7D2kOORrtSXNhmsMgrUtvOycV5SJMqJ+
 AiYs9uwyUphEcJSxn713PDG2w0ajZ47J1t41fezxiNYUta2t+s2OXAJsx
 08wESRDbzH4C3FNAsyyrPhq/6I6nSK1X/AyGMlcqqhsuQHvjv4uojoN54
 zF/uktfLjh7gdrBaKLA9av1YjMTmnMC6yq3zDYMk4lgo2vz7KlVY+nAM8 g==;
X-CSE-ConnectionGUID: 9ig1Qvw3Rf6IZQ6CHydWmg==
X-CSE-MsgGUID: iKV/W/uqRD+GlGUe9AjGPA==
X-IronPort-AV: E=McAfee;i="6800,10657,11717"; a="84105564"
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="84105564"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 06:06:55 -0800
X-CSE-ConnectionGUID: necYoD+CQrempQhgOnoUeA==
X-CSE-MsgGUID: Mhtd8DNTToKbweXlx8fV0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="255521969"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 06:06:55 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 2 Mar 2026 06:06:54 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 2 Mar 2026 06:06:54 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.62) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 2 Mar 2026 06:06:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XgDzVhNLlwTN6gqNrJWhfX4CvLlkanT2sv/jf2w9nQ+0T5U4Puxp1+cVBuASURamheumEjywzOZqKN5gBl1bGcWZzO2ri94ne6/3krrzqCt9zpINB930u33ONXeqmc/rCHOscMvU8DbsGKMYwmpiJi8/94F4AJXRE77neiy17/rutwus59j8igfzRYRalaLYXJ/FazunngW71RK2R16BdsDy/1QoD1S9sqmY8PFTLQWq+YuAjGyJEfInThV9T5nJ6JYXacEWOz1MhhbNKpgu41i2m0YiE+JuvdurIz1yJvbpJK6szON6RAYcsi5BAykaG8Wd9pPAi/C7+l+TfNUVCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zmFWP5nqDNWgJ3slV5aqnNE/rzUV8n3Sgo0mDirUUGQ=;
 b=kTGJMW9yi7d1pEdRoEKsh6Xr6QkxUXvqVnT19CSHQGkgQPiIOomSYGtHWHk5yiFu+3yXkSUqgL6SKds+13Q/GE1UP4nLA9GacC14qrK8H8BiwYgN7jE6nN/JoWyBSzSyRSOnB5uFFJ28JJQYql1tahnzCc4vttvnxUgEHF83azGp5aWvghvU/XU7inTsjAAJ0zwTdASzK/IEHkieDKWnUJ0pS8XEgxgyyJY4J9RWw/UVCkViiQCGx/KPaNIv1dDbUg45T0QCamVieUqT+18Q5oqLCNGIH3R2jGK67znrTGKXCm93hR1FfXp+B/RpfWY8tuYk6AY/NPyugaIB0Y1psw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by IA1PR11MB7728.namprd11.prod.outlook.com (2603:10b6:208:3f0::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.21; Mon, 2 Mar
 2026 14:06:51 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::9eab:962:806:3794]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::9eab:962:806:3794%4]) with mapi id 15.20.9632.017; Mon, 2 Mar 2026
 14:06:50 +0000
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 <andi.shyti@linux.intel.com>, =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
Subject: [PATCH] drm/ttm: fix NULL deref in ttm_bo_flush_all_fences() after
 fence ops detach
Date: Mon, 2 Mar 2026 15:07:13 +0100
Message-ID: <76cc7180a08f0b61b85669cf2e5074efc0558478.1772460288.git.sebastian.brzezinka@intel.com>
X-Mailer: git-send-email 2.52.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: WA0P291CA0005.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1::13) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|IA1PR11MB7728:EE_
X-MS-Office365-Filtering-Correlation-Id: 4f9591a8-c9a0-4157-877e-08de7864f33a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: Fu4c+RBA7zcN91R7lNv/QUZFKo4Rnj3BApH+FC4D8tbBxXAiDvsC5QhkXEWMXfZ5I4ZJHkFS1dGI0vSdQkSer0qOHbWkHmWMwqGINfSSqC6lc7h4TT+4BDLFKR+hoyU7xyaiAJriQC0MKjPHRJrkq1JKYu6OaG0nhwKMft1YbOKrWoDN9k1XkHlpaHDcsYKS745mansmcSdv4TrO2GdgZZNom/HD0PkLyokE/qXK6SJAm4jJRMlnVzsp7xiH7Vl7yJ4eEUxShe6VQ9VdUbvUvtWcZNB6UeyHf+QNi2Qsc+HSw4A9oDwI4/fnGLkXDap8gRQrxiStZ71TdzUX2z0oGjnIBhI8gOesqt0gR03HTK5M1v5mL73jcKVc7TBqwi13wWokulrLhDJUfE0KJLY6pbWgcy9zh/w7OsOfxZTrRCMGY44DzNed7ePS1Gywq1Mvc1yqEOF/l4/QwRxxlfCd+ioFvVIFHRKIYsZeT4kzkP94EQLI3bJ1/9mXXb3oWY/FQyr2rqaUUBpH8ETitJsT0+dihCvFcQJlNpItiR+hNzhTZqyUKDWGDXrlvUvBx6sDU/SnaPhIQzZ9Jfh6kA67s5iurRrsDdNK4RzI9quqtYgxMnLkTU0LwanVyVxKPqgMDVbNIrhD9XmEw9Jrx0Gq0LadVuTswXvHAwYIr2ipr5mvH2WHUMMQV6Z52Uxiu2m4
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TCtnR1FtQ0ZQKzgwckEvYy96OUYvdXBxRk9FUHc0QVNkRXVTTDR0T3JmeWIz?=
 =?utf-8?B?Q2VvSW42c0lCclNzKzFHRVJaZlpEbXY5MmE0VXh4bkNoR1BtRTNmKzkvR3pD?=
 =?utf-8?B?MlhSTHpoVXVvTTIrNUVaK2dPQ3JUY1puRUpwSFhWZEE5TG1RdHl3UFJBYmVv?=
 =?utf-8?B?b05MT2ZGTlFuOTdaUjExK0NYSm5aemVxY1QrY1ZWWkE3K2tVOFZPNVlIZkFT?=
 =?utf-8?B?ank3TmNCNTlHRlFlendCSTUzMGdzT1dQb0ptaURJcDhQKzAyaTZ0MXR5MmtG?=
 =?utf-8?B?cHJkdzRHdXJBVVRVNXh6Z0FiY3ZEWHNxQTZWUGNzci9pbXlhOStjcDYwc1hY?=
 =?utf-8?B?WndWU21PWXA1RWcvNmduOUhRRTJmdU9ob2dIbzh3RnJFY3BSenhjRlg2L1R4?=
 =?utf-8?B?WmZpMzBBelBRemVpRFNhRmRrcUwyejZpMXFrZTRkQ3hTcnpCM2dhSEhQYnpo?=
 =?utf-8?B?eDhBenRSQ0VXRHdKVVI1OWNzTWtUUVhzV3V4RVhGR3IraE5RbDdhODNYRTI4?=
 =?utf-8?B?LzNBc21xd2sva1kyZjZoVG5TOGhsclh1SkkwdlNhRXhFZUdsTytJU1A2M3o4?=
 =?utf-8?B?QTFoSm1kcllnSE5oRXhXUmNnTWxjZTM0dXdWQ2F1VHNrdGd6a2MxRThlQXlo?=
 =?utf-8?B?bjcyT3VidUZSRURESGpYbmVIT0REcmliTHEvdkMrdWt5RTNIMFVrblVqN3Rn?=
 =?utf-8?B?bEpYRHk4RXlldkRVTzJDaDNrZHZGaW9BclhzZW9uQWlIU3VJSkY1UDFQYklT?=
 =?utf-8?B?TXVqbHhiNFdiT0VhWlJ1NHZYaXpBUWRXaWF0bVNKUnZMNUt4d0RpYmRwQ01Z?=
 =?utf-8?B?SGtWQ2M5dnQ1bDErdlE0ZGpDcXhCaHoyeDNjdTNmQm5hTjhKWGppS3JScC9k?=
 =?utf-8?B?bjlCUmRWWklaZ0lycVFKUHVISlBBVi9hNWpINjFwKy9FNjlUS2tIZVRZa1Uy?=
 =?utf-8?B?UThYbEVVdHpwQ3dVeFQvcmhqQm1xNFpldUtlOEFIWWdiN0J3ZFg4Ykx5b2x2?=
 =?utf-8?B?dTBNZ04rMEE3bFBwQkhYVkt1bUJrUXlJM3JwRE8wcWUxWlNmeWNkeFpZMWZa?=
 =?utf-8?B?K1IxWGVRY0craG5UZ3lRNW9YNjQyNDhabk9rbkJaNnVWclhIb3FmQ2s4NGNY?=
 =?utf-8?B?SDFzekpQYjVpWHlXK2l5SlAycmxvVWlWd2ZFOVh1aUhueGV5MjNyS3ZwVnRG?=
 =?utf-8?B?VnB4VkRaSE5nM0JheFg4SlR0TE16dWJORXh4NzMwYUZuZFIrT2ZXVUFwNkt3?=
 =?utf-8?B?ODhhdk12SUh2d2Y5YzBuaVZuK3FiZ1pEelNjSnlzNlowd1JEazVDb0ZISVZu?=
 =?utf-8?B?LzVSYzZMSWZjVUZNQ05lN0JqU0ROeW5GNFJYWldnalBURHl4TjFJOTV0ejNm?=
 =?utf-8?B?NGVmQkwvMFZvMFZ6YWE4NjZXNk1ERXVZbTJzbytvYUNJKy8wazVqd3lZYmw0?=
 =?utf-8?B?SmhPb21zTFhZUW5EVnBFQnRuc2E0L0VsamtWQlhwMDdOWmhicWRTdDFzVk1J?=
 =?utf-8?B?OWZYSmpkOFFPbnJCeGlpcGxYU3dZZEp1UlhaVHlNWU9DdXBSL1ZZTDdsa3dp?=
 =?utf-8?B?QlRSVnZYME5pb1RJUkRJN3V3b1BveFBQWFl5WFdBOFZvTEllb3RFZVNXZ0l6?=
 =?utf-8?B?UHlzUS9QUUN5eVNUT2drdUlYbnI5Z29CTTdCUmVHNjB6cTZNbDdnNE5XODBi?=
 =?utf-8?B?bEt4cXhldWRnWUhKVk5KUmVsME1jNGp6YTZVMVNQWGVlSHpUcFphaGJFRTZR?=
 =?utf-8?B?ZGJjaXRVd2FBVitEZWNnamg4cmt3S0JCUzNMK2Eyam95UUNsajIvZjMvYUwv?=
 =?utf-8?B?WkROTXh3YnJndndwKy83Z0dmaytWT2VjdStXZ0EzNWVKRlIrSkRvQVBxN3Y3?=
 =?utf-8?B?M0hib0F5d0RPSThBV2xMMmlaa3lLTE92dkVnWHNPZXd1NGhLamNJWFQ1WTJ0?=
 =?utf-8?B?em5jbExZZ080Q1FsYVBvNy9tUGZaOG14SlNVVGxmM2MyWUNFSHpZa3pNekNI?=
 =?utf-8?B?THR5dUJHWmdnSktzK2piT01EdUI0ZVFXY3BYakhPN1ZkcGF5YnBzNVMzazhm?=
 =?utf-8?B?cnBKNUtxRHlJQWpZUkNtVWpQK0k1clF3U3lmNmpVUmRwTDlWejd5bzRCQWxV?=
 =?utf-8?B?NFZmd3grVW9aSW1aTi9KLyt6Y1h2c3FKbnVuVEY4SmNhamhYdnh1Sks0WlNW?=
 =?utf-8?B?ZTkxRU5TQjBDTzVBVXRvanZWM2VWU1hMWVVSRk5kMEVwLzNzUzNPanpVWWVj?=
 =?utf-8?B?SGdaZ05oWVBBWTA5T0pTQlNCazJsZnM1WjI3UE5DMzRLZHp4SUZPMllMNU9x?=
 =?utf-8?B?UGpVNkViaXdsK0tmaGFTemxuTWpqWmlXZ3FNV1Z0R0tWazBQN0J0QUVyOFpK?=
 =?utf-8?Q?7Gz7ea5wS2Xijw+w=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f9591a8-c9a0-4157-877e-08de7864f33a
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2026 14:06:50.8532 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: d+OvvAWxQGX4jpvxmQZt2nNrp35b3ftb3yo723GyoBFL7o/qcy9VRlByrJpYLjpN0m3AdrGLBD3ScgZw7vgSKwqpIBHDwHCfPMXJjKewtck=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7728
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.69 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,intel.com:mid,intel.com:dkim,intel.com:email,gitlab.freedesktop.org:url];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sebastian.brzezinka@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 16F9D1DA603
X-Rspamd-Action: no action

Since commit 541c8f2468b9 ("dma-buf: detach fence ops on signal v3"),
fence->ops may be set to NULL via RCU when a fence signals and has no
release/wait ops.  ttm_bo_flush_all_fences() was not updated to handle
this and directly dereferences fence->ops->signaled, leading to a NULL
pointer dereference crash:

```
<7> [290.719359] i915 0000:4d:00.0: [drm:i915_gem_open [i915]]
<1> [291.602076] BUG: kernel NULL pointer dereference, address: 0000000000000018
...
<4> [291.602244] RIP: 0010:ttm_bo_release+0x1bc/0x330 [ttm]
...
<4> [291.602494] Call Trace:
<4> [291.602504]  <TASK>
<4> [291.602521]  ttm_bo_put+0x3c/0x70 [ttm]
<4> [291.602558]  ttm_bo_move_accel_cleanup+0xf6/0x3a0 [ttm]
<4> [291.602602]  i915_ttm_move+0x361/0x480 [i915]
<4> [291.603405]  ttm_bo_handle_move_mem+0xe8/0x1e0 [ttm]
<4> [291.603447]  ttm_bo_validate+0xcf/0x1c0 [ttm]
<4> [291.603485]  __i915_ttm_get_pages+0x73/0x290 [i915]
<4> [291.604208]  i915_ttm_get_pages+0x106/0x160 [i915]
<4> [291.604915]  ? lock_acquire+0xc4/0x2f0
<4> [291.604940]  ? eb_validate_vmas+0x6b/0xd30 [i915]
<4> [291.605633]  ____i915_gem_object_get_pages+0x3f/0x120 [i915]
<4> [291.606335]  __i915_gem_object_get_pages+0xa5/0x110 [i915]
<4> [291.607021]  i915_vma_get_pages+0xf9/0x300 [i915]
<4> [291.607774]  i915_vma_pin_ww+0xf5/0x1390 [i915]
<4> [291.608532]  eb_validate_vmas+0x209/0xd30 [i915]
<4> [291.609215]  ? eb_pin_engine+0x2f0/0x3b0 [i915]
<4> [291.609887]  i915_gem_do_execbuffer+0xda3/0x36e0 [i915]
<4> [291.610442]  ? lock_release+0xd0/0x2b0
<4> [291.610463]  ? kernel_text_address+0x139/0x150
<4> [291.610496]  ? __lock_acquire+0x43e/0x2790
<4> [291.610512]  ? find_held_lock+0x31/0x90
<4> [291.610527]  ? __create_object+0x68/0xc0
<4> [291.610551]  ? find_held_lock+0x31/0x90
<4> [291.610564]  ? __might_fault+0x53/0xb0
<4> [291.610589]  i915_gem_execbuffer2_ioctl+0x169/0x320 [i915]
<4> [291.611127]  ? __pfx_i915_gem_execbuffer2_ioctl+0x10/0x10 [i915]
<4> [291.611664]  drm_ioctl_kernel+0xb3/0x120
<4> [291.611686]  drm_ioctl+0x2d4/0x5a0
<4> [291.611699]  ? __pfx_i915_gem_execbuffer2_ioctl+0x10/0x10 [i915]
...
```

Fix this by reading fence->ops under an RCU read, and skipping
dma_fence_enable_sw_signaling() when ops is NULL. A NULL ops pointer
means the fence is already signaled, so no software signaling is needed.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15759
Fixes: 541c8f2468b9 ("dma-buf: detach fence ops on signal v3")
Cc: Christian König <christian.koenig@amd.com>
Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
---
 drivers/gpu/drm/ttm/ttm_bo.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/ttm/ttm_bo.c b/drivers/gpu/drm/ttm/ttm_bo.c
index acb9197db879..293f3d423655 100644
--- a/drivers/gpu/drm/ttm/ttm_bo.c
+++ b/drivers/gpu/drm/ttm/ttm_bo.c
@@ -223,7 +223,13 @@ static void ttm_bo_flush_all_fences(struct ttm_buffer_object *bo)
 
 	dma_resv_iter_begin(&cursor, resv, DMA_RESV_USAGE_BOOKKEEP);
 	dma_resv_for_each_fence_unlocked(&cursor, fence) {
-		if (!fence->ops->signaled)
+		const struct dma_fence_ops *ops;
+
+		rcu_read_lock();
+		ops = rcu_dereference(fence->ops);
+		rcu_read_unlock();
+
+		if (ops && !ops->signaled)
 			dma_fence_enable_sw_signaling(fence);
 	}
 	dma_resv_iter_end(&cursor);
-- 
2.52.0

