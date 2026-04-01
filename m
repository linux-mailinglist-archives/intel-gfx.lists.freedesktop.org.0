Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IDTCEQu1zGlWVwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Apr 2026 08:02:51 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA6B37505C
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Apr 2026 08:02:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F63610EC38;
	Wed,  1 Apr 2026 06:02:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nIfX4X2j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D2F810EC38;
 Wed,  1 Apr 2026 06:02:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775023367; x=1806559367;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=S5c2i4eL103IsMgb3Nl1okFX06dco9EaqJlSN8x0t6Q=;
 b=nIfX4X2jnwjbFqifomPvIk8GCRbwZhnr4A6bdAqxQp6zfvpKvEPfgLbU
 GdbsX0RC/5GuRJxNwVLNa6zJh6blSeHdvtwe8CxuK+hFO3Z14LajStQ4x
 +NV8lU4PE4aQhrpyrUOzXF5jzi54cEzGeOCzVNDt94dKrYaH+0eiyWeZ1
 UyDMKvWTu5dU2MJAnJCtc/OWCNvEtbwhotpPYsFltjulXbrohDUCkaNoI
 JKJYzLEv6Zse9o52TOENnR6M5mxO/DvOxbDUZQyOFYXj7G6Iw0pI8DWAU
 V9Bq+EpLmOu6EnlS5bAZK4vhecijiWKwU+OIXzh1rlZ0NGHMYUK6C+YRG w==;
X-CSE-ConnectionGUID: kDC76K9zQ9O2Lhz1tsyKnQ==
X-CSE-MsgGUID: r3RdNtZ6SMi65yo7PMFULg==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="76165821"
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="76165821"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 23:02:47 -0700
X-CSE-ConnectionGUID: 6i1Qx5xzSkmER9WMMR1zRA==
X-CSE-MsgGUID: 3jlCQ0eeTjyvshbUTX/ckg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="264515152"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 23:02:44 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 23:02:43 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 31 Mar 2026 23:02:43 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.6) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 23:02:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pjzysG29e1tBQeO4F/XpISYfM21g7jXscrwCGEDCZSLXBPW8603CrUqD+vQ7cm6Ioav/wUc3QxopqAnfM3qEe+PIAolyvWHTQfE7XarC1/WpZ9BsNnviKGxi0jaTto7p4Bs1+SbycNKJ2zpZ9PtN7QbXT0WMrE0frUKmDC1QSxff0zE9U7GYD/bsy4tbfXQDrHCHIb8TLsMtDJ7b+uCplwYtLSZMoqEXv9kx2R55GH3uXGR0fOkTLhIAkfE4UbZmXezAxear/6qnjASEHjTC2FHd7cObqAEmMm3SzNwpOyYHvg/bvEFritX8QIcivp2/eJZQnOZvCAv8hcAXdnN9qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=arQgEnARJAlardBW8RT2VF+KHQylh5sE0QwXxp3B3JQ=;
 b=jJobgrtdclZ/n/TvKLVU52HtUDEVH1se0hOXGfSFH/7HG1kBM0/ZTByE3PKcGruCyBXm8Cy3QLx0oDQeJJwPlXjGxZRZFvxekkXuqrG2WtjUbrWsczwyV2oq5L06gcai0QqycKnTC1ys71+qZxoRnRM8K8zucaSCCR/tq7EgLZ+r1lM3T5LIth7EEG3K+B1f/f6l8RhQVdZlcasVAe2yQvc+kkWHqkCR8n4cWotmu4rvsWhNuEp5hcDKgRsCdQRCvq1IN3itj9/8FH3r8XSzKDjCGq61nZT2LoAGNclitf7K5lvO/JS1NYee/Avzu796A1LBfmC/NzOUxt1rpY7Bmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH0PR11MB5880.namprd11.prod.outlook.com (2603:10b6:510:143::14)
 by SJ5PPF57F27BA08.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::82b) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.10; Wed, 1 Apr
 2026 06:02:38 +0000
Received: from PH0PR11MB5880.namprd11.prod.outlook.com
 ([fe80::b706:268e:9753:cdfd]) by PH0PR11MB5880.namprd11.prod.outlook.com
 ([fe80::b706:268e:9753:cdfd%5]) with mapi id 15.20.9769.014; Wed, 1 Apr 2026
 06:02:38 +0000
Message-ID: <3af4af49-5575-4109-8a5a-58c8de5e2c99@intel.com>
Date: Wed, 1 Apr 2026 11:32:30 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/9] drm/i915/casf: Integrate the sharpness filter
 properly into the scaler code
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 Nemesa Garg <nemesa.garg@intel.com>, <ankit.k.nautiyal@intel.com>
References: <20260326223139.19116-1-ville.syrjala@linux.intel.com>
 <67337fdf-1a98-4449-ac54-04b14805ad8b@intel.com> <acu_T8mBOpfZIJN2@intel.com>
Content-Language: en-US
From: "Sharma, Swati2" <swati2.sharma@intel.com>
In-Reply-To: <acu_T8mBOpfZIJN2@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0002.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:176::11) To PH0PR11MB5880.namprd11.prod.outlook.com
 (2603:10b6:510:143::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5880:EE_|SJ5PPF57F27BA08:EE_
X-MS-Office365-Filtering-Correlation-Id: dd943fa0-300b-4d0a-3309-08de8fb44727
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: 1IIMh6nyTDy8WQmhvlkaGkcmOMzQ5Ku3cCZu5rW1NnEmmUZaXSsNTlZXEeAIEBepQ/g5OsfIUnc74hqC5tyLN3dBQITF4U0OhAZF3yVpk1lbJhLqWYKyO9frlmyV5CwmlSr2C2LRkH5QmIJRtUpc6LhgcmBFBQ4U7cATNV3feLr0hVdoXo9ekmZ7oG2fOkK9NjBFSEhcMTwGp4jruBZw/VFAmxvo/kj/klQd+NPmXcBL2Uey6KJOaXgz9tZjIsjkcaIYnFBs9WO4RvSkFs2+aam9gxrMKHp6OTEQRASFx6ood+EZ6R9ccRFr5e4MP+C2O7h/zIEwbYMJcS83d/aZWyphTmbWl2h92qqy+Ge6A2aOZl4+3bjSfBOsdhBqN42SDmHhCzy9W9xVNKqrdKrvHENw8B/oW+GDueDf+4EO+ELU3buGRMF7nLj/SNyAd8j4k+KhhvMtfD+tjLJRAmP9jVbFuxykhE1iBYHp1W6rxwzLkbd0zW6nwgKKew2U/M49NMk5IQKy0EiuMCknR48I+FcXtJB89RcdZGUPjRSd3kXafzd6WXK1UNQDmwMLldssaBcSLDHBYZyT6YpHA/IfelphR2JjWDNmNVueoor/FGJjgbJ8BLPOnbudYDJLPScYzbqA9BMU0VxrSyXm4jA0MuFnO+BnCIQ6XHdubBkTD6iwjY0Y0vP93YkBLWqyiyKv
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5880.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c013RzlKYnVPTEcyUS9RclNNYW5HMVNKV2xiRTAxV2Y0UVRzcTdRNnNRZndp?=
 =?utf-8?B?MjN0TVRBY3MwSTZTN29MK3Z1Y0FLTDV2dFFTZm9BaHY1Qmxzdk5Oc1F1SEZw?=
 =?utf-8?B?dGlJT1hYYWtNYVduVlJGOUFrVUhoa3RtYUQxeFJ3bnhsWXN3NUVHMWFJd3la?=
 =?utf-8?B?RFp2V2Z3M0thaXJDbjVxUncvNnh6TFZNSzk4YUFaWjZSMXgvTGg2Nngzeno1?=
 =?utf-8?B?WGoyUjlxU2phaG1IWFlkMEJzUGhvc0pSMTRJYVZMdGQyT0tjUFd0SWJOdU1D?=
 =?utf-8?B?N2NnZCtTN2tSMWoxOTRNNTd1cEtmSjJwekZpVXN2eUl5ckdMTS8vaWZGRmF5?=
 =?utf-8?B?S0ZBWThMMm83RmNiN055V2huQTlEY0J4bXhKTUlwZDVTMlhidUE4Q2xpWEdH?=
 =?utf-8?B?OFhKMkVuUkk3cDVxbUZhNWZvUUZZaHB6TTZSWVpoRElPRkpSb05hc3pTU2dj?=
 =?utf-8?B?YkZTSkl0a2duUkhDanU0V3NHTHN4ZUFYcFZsVG05Sllla3U3Z3lHL0xJd213?=
 =?utf-8?B?b0FKSTJvOERkS0Vyd2RKd0VOVG1EaU4yVEpNNFRjUHIxdVdEbkNrVnhUb00y?=
 =?utf-8?B?dUt4TEFDdGtRd3FTUmpPTXpWRzQwTDRqbmlxUXBOblpkVGhGUHpjdVZZRVNq?=
 =?utf-8?B?VGxWTG9DaW1wSmhMY05BREdVMStRN242V2xwVmQxR0xxbnRWa3packJ5bmdS?=
 =?utf-8?B?ZUZUNVREbHdTR0RyN2V6dHdaWUJQSjJGVG9PQmd0WDBxckRycW5jT0tPZUFD?=
 =?utf-8?B?MXE2R014Qzg4ZnRFL2IrMzNHOUo5ZXN6anRRNkZXZW9uVDJ4RHpaTGM2VXYz?=
 =?utf-8?B?TFJQcjVBeThGNFRRSTVWOW5adm5oL0VUeENYUXNTUHFSSkFVU1Avc1BtTWMr?=
 =?utf-8?B?S1ZXM3Y3T0ZsejU3MStFYXRCY3ZEM2tFdlZ3dmNyTHJrc2NLTWRJam9KSnlu?=
 =?utf-8?B?M3Bidy8zcEd3QWdWOUlBMnEzbkNOSG1JdERXRm9YbGZydnpJODltek9aV1hp?=
 =?utf-8?B?UGhHTTBDU1h1QVNiTmM5cTV1a1VKUUlHVlZQUGhHK3U4Tk1rSDBIM1FQbnIy?=
 =?utf-8?B?ZERvY1Y0RGxhcTBhUCttTG5GTkFrNTlITVNhTUo3ZG1JaGRNQ2JBU203dVJI?=
 =?utf-8?B?emJhRWNtdUhCaHIyZmNQNlJGS0o5RkpUZnRXaHUvckJiMythWFZtSHgwOXVz?=
 =?utf-8?B?cHRrK2tYNFVwZXBzWnNHQzZCQy9kQSthOUdDS2cvRHBVM0NMMTQ2U3hxdDBV?=
 =?utf-8?B?ZThrU1RSRHZvWTlGWmtpVlR0QXJhMlZaSUJFWDV6Q2RqWTVsUjZhcExQOHhU?=
 =?utf-8?B?bEliSnZmWi9JR3lBV2sySVRsb281cGlaMk0rdzVMenlySE5EZnVmVk8xVmN5?=
 =?utf-8?B?NllydGxKaFdtdXl6THdXRnMwUUZpb3FGYkppNEdlWUhZTElBWHhISWg0ejNT?=
 =?utf-8?B?MU1UMENTRjhmTzZaaWFaREtPZ2dVMG1USjc5U0x3TURsRW93cGVYcDRnSnYy?=
 =?utf-8?B?bWUxREozMm9HSGxZMmlYN2M4UTZZWGdrWTNoTmYrZk1KRE9idkhleWlRZGdK?=
 =?utf-8?B?WXJ6RVdIZ0JhODBEam9Dd2NXTlFIbUFTOTBNSHF6TmxjekJGZ3l4RHBxbC9C?=
 =?utf-8?B?ZS9CYWsyNlVlaDhwT0RFWGE3TEtGZnZuQmdKTlRnMXZKb0xWK3hPVUdxRlU2?=
 =?utf-8?B?cmZmU2cvQjQ4RWZhbmxaWHlhcDNMZ2JLYzlzWVFFZ3cxNVppOStaL3RTcHN5?=
 =?utf-8?B?WkxUa2xINzFnUjV5dkNDNzFGMlhFQzV0ZXRYVlk5cDRaTGt0L0dKV2NIR3FE?=
 =?utf-8?B?M3JOT1lvU0FUSFVua3Z0UmtuUWJCdVJXL3VRcmxudjBaTGk2QUx0RUNhNnM5?=
 =?utf-8?B?cFQ0WllQRTQrUzhlRGdJT1pjN2JoN2xkMExzWGk3Q2JVcWFoR2RoQnFkeC9q?=
 =?utf-8?B?VkdJQ2czZVl4d211eFdUR3JIQTd4N0FvN29qb2VNZmgyUlhmN0p3SzRzUHd3?=
 =?utf-8?B?bDMrd3QvVFBBbm5pdVZzTUxRdWRMTjdVQ3d3L3FqSFgwUUwzSnNwYS9odThM?=
 =?utf-8?B?TVJ6MW9yd3FqSjkwOENMNWE5c3JqcXdMOTIwYVNkdnZabnVaV0N5RnozaXp3?=
 =?utf-8?B?d1h3dVh6Uy9nSFNlZnI2VHIzc3ZtalVHckh0V3lnaVd6NllmMGlqVkR2U3B1?=
 =?utf-8?B?d1FnYW1RTWtueldBajgvdi9halB5Z2Q0anVtbElHY1lIcHdYSnd6aWhlZ2VT?=
 =?utf-8?B?ZHBpWW1wNHdOREpWd096bFU5K0IrVnJsZmV1ZzVyRmkyYjd3cTFrKzUzalg4?=
 =?utf-8?B?R3FQMXJYSVFqUzJYYkt2aU5JK2RZS0ZtVkFPdCtONTNac0dxcTFUZ0hwOUl5?=
 =?utf-8?Q?9h/7pUx++0+q+Pfw=3D?=
X-Exchange-RoutingPolicyChecked: AuOhoMiNqoYLCjorqpIRAFTScFel4aMJV5BIbZfTOBV4xUQG4VKSTk6m4f6ZN5aFYXFyIwT3Wdgkkm1rjgzHDRLe4dmYtmBJcSbfFKCtGhJtfX4FpxoMk12XtvJT/hzGrTX5oe3esO75wbLVO47qEsTOayTpaxSKjO7JAm+oo1GsXjH4Qh6EIDs6UgvXs3/t5SjsVvMuSpwNPst4sZKsoNxSG5RR0qp5UnXLxMopTxJKNYTRAT2KS6ql4qdc0RW4I1wMyMdWLMwrlGe7c9Kbl0bk3ap1Wdi5dn5afBb0lli+y6bOMuJer+MFrshLKljFTpcWzTFKbGSxJKbrDQUSWA==
X-MS-Exchange-CrossTenant-Network-Message-Id: dd943fa0-300b-4d0a-3309-08de8fb44727
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5880.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Apr 2026 06:02:38.5045 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WDCqJW6OQVVlqyenJ7yS71sIXYy4l/aoRq1YxEUvR1tNbQMUIziSUHuywFwZlpPpX+r2EmD8NaCdold9yyuz9g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF57F27BA08
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid,patchwork.freedesktop.org:url];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[swati2.sharma@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 9CA6B37505C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Ville,

On 31-03-2026 06:04 pm, Ville Syrjälä wrote:
> On Tue, Mar 31, 2026 at 05:10:42PM +0530, Sharma, Swati2 wrote:
>> Hi Ville,
>>
>> On 27-03-2026 04:01 am, Ville Syrjala wrote:
>>> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>>
>>> The sharpness filter isn't anything special. It's just another
>>> mode of the pipe scaler, so treat is as such.
>>>
>>> This gets rid of tons of special casing all over the place,
>>> and will allow me to finally land the pending pipe prefill
>>> series: https://patchwork.freedesktop.org/series/156137/
>>>
>>> Note that this will fail some kms_sharpness_filter tests,
>>> because those tests are basically incorrect. But I couldn't
>>> decide yet how much of that entire test should be nuked. It
>>> seems to be doing a *lot* of things, most of which have
>>> nothing to do with the sharpness filter...
>> With your series I could see only 1 negative test failing -
>> invalid-filter-with-scaling-mode-center
>>
>> https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-163952v1/shards-all.html?testfilter=sharpness
>>
>> Is it sharpness and scaling-mode-center can work together? Since
>> scaler-mode-center doesn't require
>>
>> scaler.
>>
>> You rightly said, all tests are not related to sharpness but covering
>> valid scenarios for scaler + sharpness.
>>
>> Apart from invalid-filter-with-scaling-mode-center, which other tests do
>> you think are incorrect? We tried covering all valid scenarios as per HAS.
> I would probably nuke all these:
>
> Nothing to do with the sharpness filter since
> it's on the pipe scaler, not plane scaler:
> - filter-modifiers
> - filter-rotations
> - filter-formats
Ack.
>
> Doesn't seem to test anything at all:
> - filter-tap

Intention of this test is to validate different taps. As per spec,

different TAPS will be selected based on different resolution selected.


TAP 3: mode->hdisplay <= 1920 && mode->vdisplay <= 1080
TAP 5: (mode->hdisplay > 1920 && mode->hdisplay < 3840) && 
(mode->vdisplay > 1080 && mode->vdisplay < 2160)
TAP 7: mode->hdisplay >= 3840 && mode->vdisplay >= 2160

>
> Maybe a decent idea, but really wasteful to have these kinds
> of things for every little feature, as opposed to just
> some generic "did we restore everything after dpms/suspend
> correctly" test:
> - filter-suspend
> - filter-dpms

True, but we did caught an issue during local testing with this test 
where we were not able

to retain sharpness after S/R.

>
> And I guess we're missing a test for sharpness filter vs.
> scaling filter.
Can you please little bit elaborate more?
>
> And the CRC stuff is really limited, so we have no idea if
> the thing even works from these tests. But I guess we don't
> really know the secret sauce algorithm, so generating a
> reference image is hard :/

Yes, right. For this we created chamelium specific test

tests/chamelium/kms_chamelium_sharpness_filter.c

where we are comparing frame dumps with and w/o sharpness enabled

and you can clearly see difference when sharpness is applied. Though we 
can't check

degree of sharpness but can check if there was some change wrt reference.

Test summary:

     This test validates the content adaptive sharpness filter functionality
     by toggling the sharpness property on the CRTC and capturing frames
     using Chamelium. It ensures that the filter visually alters the 
output as
     expected.

         step 1. Display a test image with no sharpness filter.
         step 2. Capture output (Frame 0).
         step 3. Enable sharpness filter at mid strength.
         step 4. Capture output (Frame 1).
         step 5. Disable the filter again.
         step 6. Capture output (Frame 2).
         step 7. Re-enable filter with same strength.
         step 8. Capture output (Frame 3).
         step 9. Compare frame pairs:
                     - Frame 0 vs Frame 1 → should differ
                     - Frame 1 vs Frame 2 → should differ
                     - Frame 0 vs Frame 2 → should match
                     - Frame 1 vs Frame 3 → should match

> If/when we get writeback we should be able vary the sharpness
> strength and do a diff on the resulting images, and based on
> that confirm that it actually did something that looks
> reasonable.

Sure, we do have plans to verify sharpness and colorops once WB is enabled.

So, for time being we are relying on chamelium with frame dumps.

>
>>> Cc: Nemesa Garg <nemesa.garg@intel.com>
>>>
>>> Ville Syrjälä (9):
>>>     drm/i915/casf: s/casf_enable/enable/
>>>     drm/i915/casf: Make a proper hw state copy of the sharpness_strength
>>>     drm/i915/casf: Move the casf state to better place
>>>     drm/i915/casf: Extract scaler_has_casf()
>>>     drm/i915/casf: Handle CASF in skl_scaler_get_filter_select()
>>>     drm/i915/casf: Constify crtc_state
>>>     drn/i915/casf: Remove redundant argument from
>>>       intel_casf_filter_lut_load()
>>>     drm/i915/pfit: Call intel_pfit_compute_config() unconditionally on
>>>       (e)DP/HDMI
>>>     drm/i915/casf: Integrate the sharpness filter properly into the scaler
>>>       code
>>>
>>>    drivers/gpu/drm/i915/display/intel_casf.c     | 102 +++++-----------
>>>    drivers/gpu/drm/i915/display/intel_casf.h     |   6 +-
>>>    .../drm/i915/display/intel_crtc_state_dump.c  |  11 +-
>>>    drivers/gpu/drm/i915/display/intel_display.c  |  46 ++------
>>>    .../drm/i915/display/intel_display_debugfs.c  |   5 +-
>>>    .../drm/i915/display/intel_display_types.h    |   5 +-
>>>    drivers/gpu/drm/i915/display/intel_dp.c       |   9 +-
>>>    drivers/gpu/drm/i915/display/intel_hdmi.c     |   8 +-
>>>    .../drm/i915/display/intel_modeset_setup.c    |   1 +
>>>    drivers/gpu/drm/i915/display/intel_pfit.c     |  13 ++-
>>>    drivers/gpu/drm/i915/display/skl_scaler.c     | 110 +++++++-----------
>>>    drivers/gpu/drm/i915/display/skl_scaler.h     |   2 -
>>>    12 files changed, 112 insertions(+), 206 deletions(-)
>>>
