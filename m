Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1563CABD187
	for <lists+intel-gfx@lfdr.de>; Tue, 20 May 2025 10:11:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6672110E3F7;
	Tue, 20 May 2025 08:11:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KWh2hXcQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3CFF10E3F7;
 Tue, 20 May 2025 08:11:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747728671; x=1779264671;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YjU8qeBaCULmUI/wmPVv0hhCUE3IvclpZO7mYL+ReoU=;
 b=KWh2hXcQw0L7yZp2uqvj+1GBcpoxGNWidgSDuhyzb0+L049Fu6TuYNOz
 E8vYoyq39lQDEaZrU8MqwniIwBLzYtcUljGvFPYdqIGVj9rXQH1ryTC3d
 CVlVtwAtn/Vil8gKDKWVFxvirSTtgyMxMjyliGfZLzFPNGB5WvVyvPC1f
 2lry2qBD65QbNNlPzHWJPDbUC8UFw2inmke2sIPUMwUWqcwtF9QKYkFTn
 IfTeI5lMQuiM+mlmUSTJ0uwYyrv5NnDhQYB0dgpaC31J+dvtsR4LYTUiC
 8YWCjh5XGU8LeFw9GWEIeSRhUjNNJunEeb5T7TsYiikYmr/rF9yNkMDe9 Q==;
X-CSE-ConnectionGUID: rP1vVgypSH+maJL6pG45vQ==
X-CSE-MsgGUID: dfE0eChAQWCqYxygjGyjdQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11438"; a="49633441"
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="49633441"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 01:11:10 -0700
X-CSE-ConnectionGUID: K1AuKLSiSjuEraAaK6o8rw==
X-CSE-MsgGUID: kP5Y6XgcTNS7z7WWVxNy6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="140525918"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 01:11:11 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 20 May 2025 01:11:10 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 20 May 2025 01:11:10 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Tue, 20 May 2025 01:11:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=W9AmqqMQl0HQBcMKYgZVPaJgUUyuLRl9S/wr5qIWRFvJK9J9xcTUHQVEsMff2XBWCxqt+JbOJK+gPWsVlaaLQF7viHbXa4K+2e5OFyDFHlpSZKVL3SjCT0YIIaY4VN3AD9DyYzZaUGGEWUYLxkhUULCUMAilvxngVJrGsM7aZbvz6YaA0+lyn/B9UgrxU8UsOH+Hh6nV7s/ycZQ4ep6ctO0/qkwDZksO26RnEhzbhV6FZouA+F5rRAoR+THsIUPLSEAvZk55IUYrxpS2G5PEBIJYMq6ZbBDNcsqmdFxftBUJpVXZpXYSf0BsYYh1EPjgo8TpwNA6UoIFnu9zfQ4QWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mmXPYaATv1JwAtnbvqgdJesMHA8QeVdPWrgAacxaF/8=;
 b=SMTYonz8YMART8sFtWhASvnk/MXql3/ZxI6ksm98Co0gic+cZybJy8rO2mDX6nZSZIYT2xyRoZphf3xGlzDw/QMG1WrDyDVximmZuUFPKquesdGE9aMc0hBv8xmO5F93SKPmPi7cEQsmvv2134YzP7TMzE2obwaer0krv76gsABABcbEu3trxouIazKk2isjfuWvtFCMQByV/39zqLyVsr+YzGQfpny+PoI+3wOO5TqUMwnaXME+JX6P1MyNiqA2v1H20UALU6ZSNtcT4k+zvNAqs1JEdGZyc3QUy8WO1B8pA3W8+LhEqBhY0/npM9T63qxuLlu9w4Rd7EQ+WgqScA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM4PR11MB5325.namprd11.prod.outlook.com (2603:10b6:5:390::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.31; Tue, 20 May
 2025 08:11:08 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.8746.030; Tue, 20 May 2025
 08:11:08 +0000
Message-ID: <64cff23a-c07a-4461-a12b-21428ffd4d5b@intel.com>
Date: Tue, 20 May 2025 13:41:01 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] drm/i915/vrr: Program EMP_AS_SDP_TL for DP AS SDP
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
References: <20250505033911.393628-1-ankit.k.nautiyal@intel.com>
 <710c25e1b6962843508db103e27f726ef88dcec3.camel@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <710c25e1b6962843508db103e27f726ef88dcec3.camel@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0025.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:b8::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM4PR11MB5325:EE_
X-MS-Office365-Filtering-Correlation-Id: ca44a96b-c4cd-4423-1063-08dd9775dfd9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NmEyWnNXcmNBb0ZOcVU2V2FQblNQZm13QnpRUy8xQnZ4a1JYRldOT0JlblFm?=
 =?utf-8?B?ZlJxMndTQXdYRUN1MmR6L204cnV2cFRjNHNrRStGNWdlWjdhRURTTndGZ2Z4?=
 =?utf-8?B?ZXRBb0FzelVNQUQ3Rzk1cExkSDBKUlY5aHRPZkszZXo2WHRoa2trczZVeHFv?=
 =?utf-8?B?K2hxS1BQUVFSdXdIV0svVmFYblFrK0t1bU1RYk5KMWxFNmdBTnpTVEswRCs2?=
 =?utf-8?B?ZmxCdjh4MWtPT0NWNUM4S3psYVlFMFZVblJHdW1Cc0VPcFJEelh6STc0MDlH?=
 =?utf-8?B?WGpHNnVZRFJaOFhYaS8vajdHSXZYaExickVCUjlBK29TdGFkaENPbFF4L1hu?=
 =?utf-8?B?N2dDS0RNYXF1QktLN1F0NG12eW5NeFFxWm9LcWlwOStaZmxseEd1VThpRjY1?=
 =?utf-8?B?R3ZIa0FRVXNkL0IrT2ZmQ1d2NUV0RGJ3bmo4R0VzUzVmampRT296dks4NFRO?=
 =?utf-8?B?MDFhOHFDNlNRUkgzWm9YeFFibGhhY1dsUFllRzRvM3dwalM3K2RuTDBjY1N4?=
 =?utf-8?B?ZUZMYTJlcCtIZ2J4Y3ZnZnJvMHRkNTZxWlB3QjFINCtXTXA5Zkgwc2NxbzRM?=
 =?utf-8?B?cmh3U1JNeC9WQUJiOWswQXAvMFZHUHBJUStWZzVRbWpCM08vQ0kwMXJYTnZF?=
 =?utf-8?B?ZlVmY0g3UGRDNVhoTVkyYjJ1a05weXlKZEdiSXpXMnhZNEs5MHA0SzVxTWxy?=
 =?utf-8?B?cGRKVlI5Uno1ZXp3Z20zRGtDQmFTdW5ZTEpKbXoxOVhPeEl3N01lNmd5akRC?=
 =?utf-8?B?RTllaVZNMGw2cngyNVBiS3I1eUNKYXkycHZzbnVacnNxMWJKdU9yN05QczNW?=
 =?utf-8?B?SFJucGZOamJEQ3lMbis5czA3RDlRS1BsNVF5TXZkVnVhaWpSRjNwR2NXMCtm?=
 =?utf-8?B?L0U4SSszVVM1M1N6QjY0TEl0a1RBS2h0YjFNRmZkWFZpU0psc1hMSnV4dEVY?=
 =?utf-8?B?d3dDb2FBOUVIZ0RtS0dUWi9NYVBRR00xK21UcGxWZlVYWitqUW02cXF5Zklj?=
 =?utf-8?B?aVlXS3Nvc0JVaTJLVjVveWF6SlVCVXIrbDc5eGFCL1R5RDFzSGRpdE1LYWNK?=
 =?utf-8?B?YlFrejg3aDRKVlY1WXB5U2JpZjkrWS93STI0Um9hT2xxZ25aWWx2V2E4aXYw?=
 =?utf-8?B?MFdNQ05WWHNHdHVJVStWWGtxczB2VEtvMjVsQlJZRGpIQTJoZWhqN1RFd1NT?=
 =?utf-8?B?YzJUbEVCbmo5azBoZ1hQU0RYOWpUWXdiaVdYRmxjcXBpSjgrWXlqMlZZZmNk?=
 =?utf-8?B?VWZrdGU0OXFFSTRHMk8wSG9vNzR3TmhhQzZweko4YUZTdU5WY1M1VnptNkF4?=
 =?utf-8?B?TWhDeFlkYW1wdjVkSm1KaExKd1B6SXhDakJiMTZNdndwZUFudWUycG9wb2Zk?=
 =?utf-8?B?NnFabDdxdllMUVFzczlnMU5pUjV4WTgxR0pzdUpYQ3QvUjRGN1JKN1RkeitJ?=
 =?utf-8?B?M2p3ZU9rTlErYVRHbjZTelV5aTF0TE4wTXhIKzlHQWl2dWxtZzB4YU53M1RH?=
 =?utf-8?B?Mk01bWR5QjdQMHFkYVpMczc0NUNwNHIwNTRubjlKRWtBaGRvZ3czVUFqMVAr?=
 =?utf-8?B?Mmd2VDMzelBjNzR4a2FWVUFFMUpPVUVOR2IwQ0dRcjBSaWowdFdMRlp4SFpv?=
 =?utf-8?B?OTgyWmVMN3grT05rdTR0TnR1enloRGJXeHBBa2pFOEhsdFVNY01GQ0VRWFRC?=
 =?utf-8?B?ejlFSS9Qek0vMHNCSW9TSUpHQjFlUEVtWjAxT2FtR01jcE9EWTUydWlobnFx?=
 =?utf-8?B?TE9JNlZUOTRDaEZPVlYxMUJuOGZmTGtCMUdsYzNjaUFCZUUyZkVPK3hWTGJL?=
 =?utf-8?B?dzVmRkR0OTJJbDVyTG9pTTNrS3RBbUVBU21BRno0VktLbTFoUmNwMHlQWita?=
 =?utf-8?B?L2lRbkhhdENPWTMzQUhUdGNjL0pFaHljWE1FRHpSS0dYaGc9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z0E1M2JLV0g3QXBWbDRVSWkvK3hmVnplS29uTW1DREo1V2lqazJveGVUUDg1?=
 =?utf-8?B?QUFDdXF5YUI4R0FUT2dQYXZXQ0wvNXNwSmFLcDZSeFFoSkJialAvdkZ6VDZI?=
 =?utf-8?B?TW05ZzB6bXJTc3BPYVhIMEtTeGdxb3dONmFNdHo0V0ovaDBHV3VWN0hSMFBr?=
 =?utf-8?B?N0NCKzZJQUVHZzFzL3A5YWJCUzVBVXROVFVnRlczQ0hIVUxiOVp6Y1crSVBP?=
 =?utf-8?B?am1nbTlyRmlXS2ttdDZpcS8wdlIrWThOK0FMVVQ2WEhQeHllNEpVSnIzcnd5?=
 =?utf-8?B?WXIwMmJrQlBtaXN0YldtdTA3Rld3bkFQNkRhSkozNmNTaWRXa2t1ZWNITTdV?=
 =?utf-8?B?dnZqSFlDQW45ZlBFSldrRWVJQmdPVUUzWUJGLzVZc1dJK3Nkd1hTVmdlZExp?=
 =?utf-8?B?MysrWlA1RnEzNmtENkpadEJZcDJrRDQwNVhhV1dkRURTL1hQeHhhWmQ2RnVY?=
 =?utf-8?B?dGgvdndGUDVGYjFETHlYU0k1UjZZT0QwNlBscjNSMERUdTdFL09YbFd1V0hh?=
 =?utf-8?B?RStOaFJIemhFTVpJZDRrNG9sYUhPWEFrclUyVFduU1RHYW5IU1hOR3JYeUYx?=
 =?utf-8?B?RTJrTWNLZDJCYUZsUWovVUkvTWFVcTRYOFlGTm4xQ2xyU1lrSUdiU280aFg2?=
 =?utf-8?B?RitvVDNKS2Y1ZXFSUUNTcFZhQ3QzeWVwOXlabm94Nm4rTjZBUWtpUGtBMXpw?=
 =?utf-8?B?SHZHNUVETzhXc0EzalNUUis3aWIxZ05KbURKMlE5WWlGYTlTTCt0aWpZY1pw?=
 =?utf-8?B?R0NOQ01hYnFLTXcyVDlyNjEvQ0RPTVRUYlNWamVKSGpxZEs1aU9nOHpwSFFS?=
 =?utf-8?B?ODYyMVRRZjhWTGtMUnhmZ1lFUUVEMDNUNnhNRXJZaStrajdrNW9DbXRHZkVm?=
 =?utf-8?B?NVFidHlNVlIxSTRWcHVSQ1orVmk4SFkvRlJFR01WNUE4ekNuczhhR2JkMGtN?=
 =?utf-8?B?S0RXbFg0NDZyaHA3dWRnSUYzZ2NRTUMyQ24rajkxRlROc3U3QjJqODhSQVhS?=
 =?utf-8?B?d01vU2M0WkVQSm1UR3k5empnNVJmS3lkYUpzajA1d3N3cEhBcDAwZS9tU0ZU?=
 =?utf-8?B?RlFodXdNcHU0cWo3bXEyLzlyY2xQdHZJSUQ5bm90RDZmOXBVTjArWUlvUmU4?=
 =?utf-8?B?ak90T3d6QlJoMjQrbmROOXp6VmRLZ2ZhSzZNeUVIbmlGWGI4S3JnUjRadHcr?=
 =?utf-8?B?eGptSnZzRTlrTHpGZmdFa2crMGNTSlNtZFA5U2dCOHdjNkFGTlNCUWhQUlFY?=
 =?utf-8?B?YUVERS9uV3o1MkxiYzBwL3k5dHV4N2U5QXZMUFNRVVVXWHJ4eVBHcVd3QzFT?=
 =?utf-8?B?NlQxbFVoeDlSWWdjNkhJK3kzeVFXZWxFTHJxa3hSeUJXd1ZGMkRQZUhEVDZt?=
 =?utf-8?B?V2UzWWJ1SUxubFk5ZkswdnIrT2lETXlxK1BWQkJwbytmNEp1VHcxS1c0WVJQ?=
 =?utf-8?B?c2V5N1o4ajByVHZYeEFYNjZqVmx2WEhBU1Bzamk5N0hVZzF1Qk4zd1NaSHdS?=
 =?utf-8?B?czFUUlVRd3NNSEtXTW9zaTZ5UU1lU0tzYy9LZDlCMVJVMVNqZFI0TGpxc0dZ?=
 =?utf-8?B?TndiYWlhbXRab0grS3N6RlFaa0w3NlZDaUszMlFhM1c3d3lxMXM0TURITStn?=
 =?utf-8?B?Z2lRMy9Wb3ZHU1hIY01rckUrUEt5L0JpMTNQRGVjaUp4bVpHRC9CUlFBUndJ?=
 =?utf-8?B?Q0JhaE92OXpWL0VYMisveitPdlNGNERPZzNzNHNSU1R1czJVa1ZzeVdRdk1F?=
 =?utf-8?B?bUcrSVE2NzA4Q3lFM3JWeHVuQW55eXlKTUtyOU5PUzM5UnlzNEJCL1ZycXVY?=
 =?utf-8?B?NmRSRWU0eC9ZSkt4TU9XQVdmaStuN1hpOHBTdjJxWUFLK3IxQ3BOc1RheG9Z?=
 =?utf-8?B?N0wzZitNNjZXOFkyalVRZFVCNDFNU0kwYW1KZklsUzRNbDBQSkxTVitzYVcw?=
 =?utf-8?B?bERZejRueEZ3TmNEN2tKaU5vcHNTUWR4MElQZ3pVK3FMc2RWTGtGU0d3RE9H?=
 =?utf-8?B?QTZpUFRaa2c4U2psbkJLUEYvVHRzSGNBdGw2L2twNTVjTS9UL3JqUms1bkZz?=
 =?utf-8?B?YTY3NHd1ZlNQYjBkMDNleFBNbU92MEQvNVJEZUNHdWhZN1JselpQTHNkV2hx?=
 =?utf-8?B?RFFjUVZLVjZIZDRUd05ZOUIwTDZHaUFjWVM2Z0o5YTlURzM3NXp5UjdHdjVB?=
 =?utf-8?B?ZUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ca44a96b-c4cd-4423-1063-08dd9775dfd9
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 May 2025 08:11:08.3112 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4tz2d94D1VyfETGRU/xpcWsGFlkg1VF4LnE4G8W/1kAHDnnVBuhxF6zcywDoaJTzT+Ps3nQAFbYNyqinaVvaGPYgdEs97fQQtaxLeoDy0aQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5325
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


On 5/16/2025 12:24 PM, Hogander, Jouni wrote:
> On Mon, 2025-05-05 at 09:09 +0530, Ankit Nautiyal wrote:
>> The register EMP_AS_SDP_TL (MTL) was introduced for configuring the
>> double buffering point and transmission line for all
>> HDMI2.1 Extended Metadata Packets (VT-EMP for VRR, CVT-EMP for DSC
>> etc).
>> This was also intended to be configured for DP to HDMI2.1 PCON to
>> support VRR.
>>
>>  From BMG and LNL+ onwards, this register was extended to Display Port
>> Adaptive Sync SDP to have a common register to configure double
>> buffering point and transmission line for both HDMI EMPs and DP VRR
>> related
>> packets.
>>
>> Currently, we do not support VRR for either native HDMI or via PCON.
>> However we need to configure this for DP SDP case. As per the spec,
>> program the register to set Vsync start as the double buffering point
>> for DP AS SDP.
>>
>> v2:
>> -Make the helper more readable. (Jani)
>> -Add more information in commit message and comment.
>>
>> Bspec:70984, 71197
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Tested-by: Jouni Högander <jouni.hogander@intel.com>
> Reviewed-by: Jouni Högander <jouni.hogander@intel.com>

Thanks Jouni for the review and testing the patch.

This was pushed to drm-intel-next, missed to update this earlier.

Thanks & Regards,

Ankit

>> ---
>>   drivers/gpu/drm/i915/display/intel_vrr.c      | 23
>> +++++++++++++++++++
>>   drivers/gpu/drm/i915/display/intel_vrr_regs.h |  6 +++++
>>   2 files changed, 29 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c
>> b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index c6565baf815a..c55b8144e234 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -576,6 +576,25 @@ bool intel_vrr_always_use_vrr_tg(struct
>> intel_display *display)
>>   	return false;
>>   }
>>   
>> +static
>> +void intel_vrr_set_db_point_and_transmission_line(const struct
>> intel_crtc_state *crtc_state)
>> +{
>> +	struct intel_display *display =
>> to_intel_display(crtc_state);
>> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>> +
>> +	/*
>> +	 * For BMG and LNL+ onwards the EMP_AS_SDP_TL is used for
>> programming
>> +	 * double buffering point and transmission line for VRR
>> packets for
>> +	 * HDMI2.1/DP/eDP/DP->HDMI2.1 PCON.
>> +	 * Since currently we support VRR only for DP/eDP, so this
>> is programmed
>> +	 * to for Adaptive Sync SDP to Vsync start.
>> +	 */
>> +	if (DISPLAY_VERx100(display) == 1401 || DISPLAY_VER(display)
>>> = 20)
>> +		intel_de_write(display,
>> +			       EMP_AS_SDP_TL(display,
>> cpu_transcoder),
>> +			       EMP_AS_SDP_DB_TL(crtc_state-
>>> vrr.vsync_start));
>> +}
>> +
>>   void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>>   {
>>   	struct intel_display *display =
>> to_intel_display(crtc_state);
>> @@ -595,6 +614,8 @@ void intel_vrr_enable(const struct
>> intel_crtc_state *crtc_state)
>>   		       TRANS_PUSH_EN);
>>   
>>   	if (!intel_vrr_always_use_vrr_tg(display)) {
>> +		intel_vrr_set_db_point_and_transmission_line(crtc_st
>> ate);
>> +
>>   		if (crtc_state->cmrr.enable) {
>>   			intel_de_write(display,
>> TRANS_VRR_CTL(display, cpu_transcoder),
>>   				       VRR_CTL_VRR_ENABLE |
>> VRR_CTL_CMRR_ENABLE |
>> @@ -646,6 +667,8 @@ void intel_vrr_transcoder_enable(const struct
>> intel_crtc_state *crtc_state)
>>   	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
>>   		       TRANS_PUSH_EN);
>>   
>> +	intel_vrr_set_db_point_and_transmission_line(crtc_state);
>> +
>>   	intel_de_write(display, TRANS_VRR_CTL(display,
>> cpu_transcoder),
>>   		       VRR_CTL_VRR_ENABLE |
>> trans_vrr_ctl(crtc_state));
>>   }
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr_regs.h
>> b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
>> index 6ed0e0dc97e7..09cdd50d6187 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr_regs.h
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
>> @@ -108,6 +108,12 @@
>>   #define VRR_VSYNC_START_MASK			REG_GENMASK(12, 0)
>>   #define
>> VRR_VSYNC_START(vsync_start)		REG_FIELD_PREP(VRR_VSYNC_START_MASK, (vsync_start))
>>   
>> +/* Common register for HDMI EMP and DP AS SDP */
>> +#define _EMP_AS_SDP_TL_A			0x60204
>> +#define EMP_AS_SDP_DB_TL_MASK			REG_GENMASK(12, 0)
>> +#define EMP_AS_SDP_TL(dev_priv,
>> trans)		_MMIO_TRANS2(dev_priv, trans, _EMP_AS_SDP_TL_A)
>> +#define
>> EMP_AS_SDP_DB_TL(db_transmit_line)	REG_FIELD_PREP(EMP_AS_SDP_DB_TL_MASK,(db_transmit_line))
>> +
>>   /*CMRR Registers*/
>>   
>>   #define _TRANS_CMRR_M_LO_A			0x604F0
