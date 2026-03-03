Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WJ8dNpPTpmnHWgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Mar 2026 13:26:59 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AFE81EF63D
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Mar 2026 13:26:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E58E10E06F;
	Tue,  3 Mar 2026 12:26:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YZyc7CmX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A448E10E7AA
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Mar 2026 12:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772540814; x=1804076814;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=lSoDxiXziahfJmQcp+gAd25lBRy6a9fihiUFE/rd4bA=;
 b=YZyc7CmXFc8Fkwr+ERpnqeiYOkiubj5DthmbR7AVTUuwJN6vONWFzP/G
 IIY5JNWkdS/gsfZsayd3+pVs+IcXGVAEIbf9VPYMqHp4XpIWH7sy1eVCu
 2/pe6/QZUO73HCXnUyxqqSlHc60p7Nc9ScRFZe+SjNZdctsXy6PZvtQ0m
 OukQsFpt0wJjTLJmxeSLzfUQMlBztNlaaUeutYMqT49nKWP19snAce0qZ
 ZVGFsnQMGmCddEmPBzztdL7r3YZ5JOivmuwnWPIS+GA5d8Cbb/Y7WCRyr
 GrNpfy5ZIDJGgjfbrs1FfMVPA7fxvYiNn9YPWtv9l1C3WmgzvJoX2FfuP Q==;
X-CSE-ConnectionGUID: Lomi/6N5TEGl7TX8S1QWmQ==
X-CSE-MsgGUID: X65qqIeWTx2/FXf73yQu+w==
X-IronPort-AV: E=McAfee;i="6800,10657,11717"; a="84922112"
X-IronPort-AV: E=Sophos;i="6.21,321,1763452800"; d="scan'208";a="84922112"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2026 04:26:52 -0800
X-CSE-ConnectionGUID: HP8jL+BuRoauNb5KZTz9lQ==
X-CSE-MsgGUID: Pvmrb64/T+Cbk2zEYMb9Bg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,321,1763452800"; d="scan'208";a="220990571"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2026 04:26:52 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 3 Mar 2026 04:26:52 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 3 Mar 2026 04:26:52 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.53)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 3 Mar 2026 04:26:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OJCNy/mySD3AlgSG/nJllfzPOHXBw/l7PjsoU0TnkEPd62F8WjREVIyoMpBy3IpJ5DRd67d3tq2GSZhXx3B3APnTxmLqob20j4BbE2ujtkImd/m/Gix2gCY740HvtlWaicKQu5d8Z36uiPOH/MhWzinoXf9VjwCrfqWG9cAf8xJSb97rV1vgdoECf+wv0e+PA7MNglMPnYY2ISyz8Pe9zYg8Wgfx93ur7F2PDhYkb5JLN/uLFYyCTA3HOsCyWHQIZhPYRAM5gfGgTTTb6pyLT2wuhkjtUnQgn2u0V0arjdfMxw0limCsPyI76/fyT8lk+7ggQ8XacvKb10PgoEUwOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZlZQS0u4T+N6DZoVcrM3Hy8Mi/opFAPVWgrfegfz2GU=;
 b=r9VRCJIJoNCtTIPXICzD2pS8X1QDgVfmMAuOuc7+IMY86JNVuBjBilzLs/SiQZvNxGs7l8IEDYPoO+wYbJ2I11TtgkmpuhYLwsW+cgxRm7XkrDDX0M8Fs/hQL7oRKdEztJP3E+2nMIjdBujrGBp0OgDU52KBTuR4m+y/daL4ScBMyXPQSN39u6FSHzrsuE7fYIafml7nQZwF5Yu3JyOZZ8TkwGuLA/06XLiWgj16EJ6XQlIulKhvW2euTGouHfunn0eywyF3zUsaOs+W/6DF5y6igsXLUfHyG5wgnASmeSKdy8zrG6C5QY8i8I97RSMcYD/jjDUqJw/E1JYnEawnrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by MW4PR11MB6569.namprd11.prod.outlook.com (2603:10b6:303:1e1::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.22; Tue, 3 Mar
 2026 12:26:49 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::9eab:962:806:3794]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::9eab:962:806:3794%4]) with mapi id 15.20.9632.017; Tue, 3 Mar 2026
 12:26:48 +0000
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 <andi.shyti@linux.intel.com>, =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
Subject: [PATCH v2] drm/ttm: fix NULL deref in ttm_bo_flush_all_fences() after
 fence ops detach
Date: Tue, 3 Mar 2026 13:26:42 +0100
Message-ID: <1c2f34351b6fb70ab576aeac07987542a4d480b2.1772540459.git.sebastian.brzezinka@intel.com>
X-Mailer: git-send-email 2.52.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: WA2P291CA0043.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1f::28) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|MW4PR11MB6569:EE_
X-MS-Office365-Filtering-Correlation-Id: 12c8c99f-b750-4949-8b3f-08de79202437
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: ZJdVz/9C3ZbaQX6LNVU18TWX/xezxKIfGTEOZxzrV2llcOB2Vlyn70XTRpRv3fTi6f/IwFj0B1xm+21eZfBIASM7sBCBg4uO9EUXMbWJylJ91qqOfGlp7q5u/soYKGvhDPZVLGTthgEf1ayQLXFYjHvVxlASYJKWMWK0LKZEhkp/U0TMR4PqIttHyL/jIlTdpz6stzNIjSYiN9Go/a82ou++9/mKg+bnZEKb5IqxA54pUxr5ikil5qshClNJYg6iCbwyZS8XjesGIqV6xkv3EyGURv8c4ks97fW14Cf7Y81OM1pSuJtD/rF9b/7d0L/iwO/TPqCTX0Jni1QScWGfRyfCZ9umHcCnPNFGF3i8gOo9EkgZlU4zvFRTB20R6/XsGD15ZnBPnuK/CehNlsyT5vOQm8ncH1eM2xomzLRmzmnH7vyOe58TZUZwdzS+20+93MwQvwg0foKycWWwVwXVheT1gpnhPVaru8hCGp2oSoPl6ucbCAhXxk3CK0RkwZjOEDxtfKhS4tEPh4enUOtaMBYuPiLvkFjI6+cqqbWf6ZKQ9ILbpIQnRY8LpA4ZkLT8jpHgzQNGkxpfRc4u8zskr5oLwj5EPgUD6729S9kTsNK+le6DAILz6lILlcXz4gU8h+Qt/LqVf017vBVfT/QD9zxBjOytZYckvK94smE+vn/nph1uhAwYdL1rlE99KZ1x
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U2xVNVByeVZrbTNoQmpsbmIrUG5zakZTMWdtclVxVkV6TC9CdnZJUUJXczUx?=
 =?utf-8?B?NCtJampkYXg5Uml6VlI1S2hwdWsxQVo1WHdnQjdseUllWkhkNDNQdlRmVmFE?=
 =?utf-8?B?WnlaQzh2ejcyMExkZU0vcGI0NWZIUThIQ0ttOXEzQWhFaFdHTy9UMERUU0dn?=
 =?utf-8?B?dlA1Qmt2cm5Fd21QSjBEVXRrbkFwY1VKZFIyZVk1dHdYdmFkYzMxSy84SjlT?=
 =?utf-8?B?bkdzYWRjYUpxbkRTZFY2WkVwc0hQSVlRbWpzV2ZKdHp6bkxwOW5ZUFRHNE9w?=
 =?utf-8?B?RzZBNzhFOUxpR3d1VTNLSEJ4dWN3dWxmVHZpejBnUFhCeGJvVHZxQXphYjJF?=
 =?utf-8?B?a3NCOGpXRnVZeS9RNjRpMU9jSXhaQkF0MmFYbGZFclROeXlqMndiSnJYcUI4?=
 =?utf-8?B?Wm9OOGNNcW5Rc1lSMDhXZU1RaWh6KzMxWEpFQW8wTktMa3J6UGVEQlYzMVBS?=
 =?utf-8?B?b01PakRtQzI3ZFRkRGRmNm13RXQ1amlLZGVYV3d5VWJncCtkOEFHUGdia01P?=
 =?utf-8?B?bTlmZnZNT0c2U0hKcDl2clBpaHRBazZRaGV0MTI0S2xjRWdocjhUMnlNMFVM?=
 =?utf-8?B?VmpvUmVyaTgvcG5oUitIWitJbWE5TXJwTDhNY2x3L3cvb1M0QXlOaG1JQVpL?=
 =?utf-8?B?Zmk0ZkFGU3IyV2FKWSs2R0pFMmRjUmYvTlVvNk82L1BkZjlSd0ZNOGJGUmsw?=
 =?utf-8?B?MHpTLzR1ZTluMFZaUDN5T1o5L0JyWlBWNzFyTVNXblpzYnovR1BoTXZjRE9r?=
 =?utf-8?B?YU4yMUVURzcrU1hzZG9WUGpFa0NNSjh4YVlqcnBMSld0ZnQyVkdveGZjd0hS?=
 =?utf-8?B?NVZxbDJoN084L1l1MFQzRVBjZjdDUFliNFNyWjQyVHFWV1NoQmZhSnczRzJU?=
 =?utf-8?B?MVJhb1l4NU9aNE1UUTNaVzJQNkZ3YUx2ZnQ4N0NHWFhNc00vRWtHWHlkRm5s?=
 =?utf-8?B?dm95NVJlSFMzUTFaYWdGUUtHNDdqUjZIYWNLUXZrNzdFNTVORkZyN3E2WXJj?=
 =?utf-8?B?SkJOTG4vWlpmZFVwdzNqL0xJL0p4YmJSMGwzMEFkS0lXTzlvVHhGK3A5TlB6?=
 =?utf-8?B?YmVBa1crQnlqbC82SUxYcTE5VE9udWtBRnNuQUdHSHNCMHpKTEkyRkVVT3NJ?=
 =?utf-8?B?bjQxYk5mNk9SMi9ZWUxlL1dBSlBLKzhLTnpSTEU1M2RGQmFsa3MxR1lHTHpw?=
 =?utf-8?B?K2hMaHhCUlJkL2MwQ3M1SXpEWlBtanRnc2xkQkxaaEorL0RPSnlIQXY2RDhN?=
 =?utf-8?B?N2gzTUVSZENvSDV4QTRpUERObTJBYkl6dlEzcU0wY1JOUTZ3RjIyZXRuRTBs?=
 =?utf-8?B?K3NvZ1NnWXI0cHhZVk1PaXFLVTgzN2E2YlFVUmtDZTlKMEluU0M1V3V5aEd0?=
 =?utf-8?B?V1YxZlo2TFE3Q3M4MkEvYjdxOFlMeHlvUzVGYkh5VWFSNTRSbHliUTcxZUE1?=
 =?utf-8?B?VXduWk9tNXpndFAxekxkaXY2MjI4TzVKblByZ0hYYlRoU0cvR3NUa2NaTFpT?=
 =?utf-8?B?YUJQdU5ibWtzcjRtK1BHMis2RDFOUEZhNHpjN2ZrVkhMUGdWSW1hbW5wWFRI?=
 =?utf-8?B?a2FabnZQdXFCelBWVllVQi9sNTZGU2ZEVlcyL21OaUwzYXFpTHFhalUxVDU1?=
 =?utf-8?B?TkRkOGpGdEkxMHI5aTFCc2tNcGpSVlFtRmd5Mlk0T21oTzBTWjBKUHhqRnlI?=
 =?utf-8?B?ajNZWEw4M3UrYVNsa0EzUHdFL2lLazd3amNyZVdxN3BIU3BIc2RQT25CS3VX?=
 =?utf-8?B?N2NWVlhLM1pXWHVoM0p2TFdpTDBLS1JUUnlFNlVkcXN2a1JEYk1HYlhwNDg3?=
 =?utf-8?B?WXFRbmxGdHdJc2xDYVB2ZFNMcWFVVmdmTGFpd2FwUDBuZmdZS09QUU5mK1dy?=
 =?utf-8?B?cGtSbjVObkVqUkhjdE1RakNEUzVIb3Qwc1IrYjgyMHh0d25UdExtdGNjRUph?=
 =?utf-8?B?akpZZWg0dnpONDB6QlNVUFdCankxTXUwbDFoNEptVmw1VU1FZWxjVXNvbEFI?=
 =?utf-8?B?YnF0Wmk3SU9FcDdaVVpCZm9WdzRqUDRaclpLUStTNStGeHp2YjBmRzZjQXNm?=
 =?utf-8?B?N0p3Z3JjeHVPVm9TZVFZb2J4ZFc3MUtwb00zOGt4eHFmbER6SlIxdk4rMGdZ?=
 =?utf-8?B?dWd3NmFWWW5ETXFWMnZvREs1TzZ6dTNyeGNiS25GamhzTkRQRk5EOFAzUGlF?=
 =?utf-8?B?NDkxekxaM2RNRGNSWmxHazZ3bi9GWndYdlN0ZUc0dklGek9kWS9KS0ZOeXhj?=
 =?utf-8?B?Vmsvc3htTWV0Y3o0ZXVXV1pleUZoRWg1bWlMSHBlMWZ2dVZBYlZtWU9RSVdj?=
 =?utf-8?B?MEN3T2hLQmdqTkJtWWZmUjh5UkdRWjFZek1VZ2JrdjVYWDVyZU82emllSkRm?=
 =?utf-8?Q?NsXtwvkSb3q2mwq0=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 12c8c99f-b750-4949-8b3f-08de79202437
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Mar 2026 12:26:48.8419 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OB6xxzU0RZHmj2fVmHgSl9pQlQ0mnRxBGVydWedJexibmMuFMAW37i5B85TTuBAARM2lqMwhVx56QJcAk2l+E3j/oJki64D0ECn8kUS8Kmg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6569
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
X-Rspamd-Queue-Id: 1AFE81EF63D
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
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
X-Rspamd-Action: no action

Since commit 541c8f2468b9 ("dma-buf: detach fence ops on signal v3"),
fence->ops may be set to NULL via RCU when a fence signals and has no
release/wait ops. ttm_bo_flush_all_fences() was not updated to handle
this and directly dereferences fence->ops->signaled, leading to a NULL
pointer dereference crash:

```
BUG: kernel NULL pointer dereference, address: 0000000000000018
RIP: 0010:ttm_bo_release+0x1bc/0x330 [ttm]
```

Since dma_fence_enable_sw_signaling() already handles the signaled case
internally (it checks DMA_FENCE_FLAG_SIGNALED_BIT before doing anything),
the ops->signaled pre-check is redundant. Simply remove it and call
dma_fence_enable_sw_signaling() unconditionally for each fence.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15759
Fixes: 541c8f2468b9 ("dma-buf: detach fence ops on signal v3")
Cc: Christian König <christian.koenig@amd.com>
Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
---
 drivers/gpu/drm/ttm/ttm_bo.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/ttm/ttm_bo.c b/drivers/gpu/drm/ttm/ttm_bo.c
index acb9197db879..0485ad00a3df 100644
--- a/drivers/gpu/drm/ttm/ttm_bo.c
+++ b/drivers/gpu/drm/ttm/ttm_bo.c
@@ -222,10 +222,8 @@ static void ttm_bo_flush_all_fences(struct ttm_buffer_object *bo)
 	struct dma_fence *fence;
 
 	dma_resv_iter_begin(&cursor, resv, DMA_RESV_USAGE_BOOKKEEP);
-	dma_resv_for_each_fence_unlocked(&cursor, fence) {
-		if (!fence->ops->signaled)
-			dma_fence_enable_sw_signaling(fence);
-	}
+	dma_resv_for_each_fence_unlocked(&cursor, fence)
+		dma_fence_enable_sw_signaling(fence);
 	dma_resv_iter_end(&cursor);
 }
 
-- 
2.52.0

