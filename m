Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB1E9B00AE
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 12:57:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53E0F10E2B3;
	Fri, 25 Oct 2024 10:57:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QJWjC/Bl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E4DA10E2B3
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2024 10:57:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729853868; x=1761389868;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=P7NeDjCRks1p9Wuk8P7MtYKA0aQnbd1yoCu1hY3F9+8=;
 b=QJWjC/Bl0G3l/b8ogsSc84DJcLcPdzCw5XAtZ3CxuIA9iQEM8KgJjO6H
 RjIvsLqdAxb30C6nsMee6Mbfmrb7rJ9FQVwzRX/x4N35xGUh0SW23T4B6
 03on0iGYLFSvRRqqfHNj+30UhLHFci4I/AtpNslY9njPqyHWtMzcLGB24
 lPEr3eKXGMlWtqRGaH8j6DsxYMcXlKv8Vv8+UstxoeHLVNlPkLoSRHK4i
 KIV+OFSHwHc/NcQYxYc33KfTEBWpadIe/+CAr58AbaQm+z10Fljt9/HEE
 teiXl+S82N6iKRxb29tYDd+snW5H5ChRTQqKRmwKcFdV355jG/YR0WzEK w==;
X-CSE-ConnectionGUID: qGrp9E5mS4awjF/r/gSZsA==
X-CSE-MsgGUID: m0I/Il23Q3mD+iyj+99JjA==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="29737357"
X-IronPort-AV: E=Sophos;i="6.11,231,1725346800"; d="scan'208";a="29737357"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 03:57:48 -0700
X-CSE-ConnectionGUID: 1rnQQ2R4QwCP7X56bRLnZQ==
X-CSE-MsgGUID: TGW86kMsRZedqVZ078hioA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,231,1725346800"; d="scan'208";a="80991299"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Oct 2024 03:57:48 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 25 Oct 2024 03:57:47 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 25 Oct 2024 03:57:47 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 25 Oct 2024 03:57:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bFFWZFNY31qmzXtEMozC5DMQ7SvhwrLyPm4jP06HyOxlXT5zFVUGnyIgIfrqryrRxKrdSPo0/WgyL3t5lejUB2gSbJgoRAgaYxm0AZJ4GMrA0RBpIAtNwo9EEX9qbKq/0tHqhQ9PvfZrL20sthgwNBlDarnG28p2oguO3jVGLd0dmxvVXKCw2S/CJLaCDyz5TuV0b5yw0OVjYzCT0ltBTcplluQ24uqImcMxlkq4dcibxGpH2n65Ztq1impSJsb8kQHtyM5Ig154S61tDguRmY8fD4W65c2mB/2B7cLYP9LFbbLecJtGJe5Zugc9CAe1Xcz7spK0L69etAgpRQOgwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fXxGEvmgtISJKNuGVOOjAKlO3NulIfMw2hULu3FzLRw=;
 b=T9mNurNXPK1meVsPnLDp5QxYAWfTn4K/AeWfKZmaNEsM1q7rqSx00DYNDowhza2t1votPKSzyanyGOP56rDuo85HJN02Oi40lK9FiIA3bZVmS/uFunN3kUZd/FBSsLEytaRHoScCp4/JA4nYjJDclgBcam4cyOyBkeW0esN7CcXIp1is87EasLVlJRURjt98Pg/XLhv10fDC3cgJzHCla2QIPh+kcehHFv4eduvgIo4eAr8uZZH6RHa6SB1Zo0OykdEdMKLON+zvr8u6UhB186IX4VI1rJBR2EUW1XJJ8BksgdmnlTrhrJTamJM/pZoyMNtX+RpRkvxihufIJRXhKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by CH3PR11MB7769.namprd11.prod.outlook.com (2603:10b6:610:123::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.21; Fri, 25 Oct
 2024 10:57:45 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548%7]) with mapi id 15.20.8093.018; Fri, 25 Oct 2024
 10:57:45 +0000
Date: Fri, 25 Oct 2024 10:57:35 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>
Subject: [PATCH] drm/i915: add GEM_WARN_ON to remap_io_sg
Message-ID: <fzn3jb4cdylc7fj4og2hgy73onelzurxmmsrzqix6yswms4ite@d74hat7krnm6>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
X-ClientProxiedBy: MI0P293CA0013.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:44::18) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|CH3PR11MB7769:EE_
X-MS-Office365-Filtering-Correlation-Id: e94f17e2-a849-4fc2-5152-08dcf4e3db1a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?K09kQWE4MWcrTzcwSjlBNWxSdnhGeklkd3MwcXM5NTlNelNxTlBQWnpsazdP?=
 =?utf-8?B?SHlmYXY5ZGtDWjdtK2x1eHpOVU9FaTIxd253NzlvOUlWT3lUaHJUQUkvU1ZJ?=
 =?utf-8?B?UjFxeUwwS0RVNlNBSERZVGxhNzZQQWVpMkExOERsMjhlVUZlcHo5bitVQ1Jz?=
 =?utf-8?B?MWNRbGY3WG1ISUp5RE52Nitaa0h5V0NQNWpMUTFzS3Z6L1NpQkJUREYwZTB2?=
 =?utf-8?B?cHRkSm1QblBwdTF1RVJCQ1k3d0hJYVp3SHJGQ0tMNDJMT0E0bWNYbCt2dm1n?=
 =?utf-8?B?ZkN1eDhQRlpJV3c4Y3V0S2JiTzFGbVF5Zk5IZjFpY0RGL1dWZTdPU1BJclJG?=
 =?utf-8?B?MmprSWxzMWFZY0lhQzBGM2hVVkJIQXFCRkt5OUs2cVY2YjhwVzdSYjYvdm9v?=
 =?utf-8?B?WVRjT3gveWo4MkN4VWd5UW4zaVp2VG85WFQ4Nno3VG5xd3NhL05VV2NYbXhB?=
 =?utf-8?B?VEhRaXJTTnJDZW9GNkwzdjc3NXRSNGRHWm1KbW11amVjZXFGM0dBWUlMTU45?=
 =?utf-8?B?OXYyR2NoOVBnM3VDK2dGczlsZm5HVGJnSjFmeW0xc0JxWUFOd0dNdlNXRkM1?=
 =?utf-8?B?VXh0NVUvbVNvMnZBZXlBNnVYVGtONjdWL0VBRkV4Z3F0WlRxZXplc2JLSzdr?=
 =?utf-8?B?RmZaMVUrUnRZK0Z3Zkd2a3B3UnFpMUJDaDZZUCszT3BwNTdPeHhhSnVranJ3?=
 =?utf-8?B?T2ZkcWd4U1JNWVIyL0J3ME5uc21WU1BRLy9SMGRycEFIVEVIN0JkaUhJcVVV?=
 =?utf-8?B?UjVmMVJwRkVOS24rR00zRHF3c1FmTUJlT1NUaFhPMm1TTFdtWTFLZU9rSEtk?=
 =?utf-8?B?VnIyc1luZUFRaFFaZkRWODhBYVF4N0ZIU1ZhYnR4Vlg0dGdoaVltVVpkMllB?=
 =?utf-8?B?WGdIN09iczFITXZBN2dNTlFhVEdoTXhkMjhuM1dFSEVnbFJEbnBldUQzNHda?=
 =?utf-8?B?MjcwVTVrMUlwSHNvQWttMzVtSjVhS2J3Snl6Sm56bTB6RHowelNWSzBVUlM0?=
 =?utf-8?B?ZmRQeWczSndqUnN6RWg2UzdtckxhWWhTaDU2VXJ0RWJVMXh5a014T1lXQTZ0?=
 =?utf-8?B?WTBqSXZXM3hoTnAvSGFpWlhxZllEVVo3Qzl2NFE1cThVc0ZUaU0yRkdGME1N?=
 =?utf-8?B?azArMEFRQXo5K29Jb0s1NVdaaStpbE93b0tCalBKc3poUjFJaS9TV3g1NFlh?=
 =?utf-8?B?dUkxY1JXVnVuVDFCN0xNU2sxQXlyT1dsT1VtSHU3ZFJMaGUrdmc1Qjg2UnhO?=
 =?utf-8?B?bHh6a2hsVVEvK0FaNytPcndMbUZkUElyVFZjRXNVWFBieXZHdXFmRjZQbnRk?=
 =?utf-8?B?bm9QMExPeWZQa1d6NTRpLy9PeTE0UGZUbGhQNXR6TC8yT0RmRWN0M2hkL3JL?=
 =?utf-8?B?UVJwZDBVN1hKVTJRNzFSNmpOcmkwbFM5ckVWWWp2ak9KMDZIZEtkS01oVkdF?=
 =?utf-8?B?SC9oZC8xb0NqY1dDSXJEN2J5MlNtYUx5TzJIcThIeEJiZmNJWW1IbTZaTERy?=
 =?utf-8?B?Q3dvM3lMVmlHaDRDL0RyYUVtOHlVbG1QeUhvVXlGWG8xRHM5d09jK0JabEph?=
 =?utf-8?B?R3E2QTk5ZTZRc3RleXlnZ3RmWkdpOWJDRE1GbUtZWEE1eUN6NzZkamxXQnFC?=
 =?utf-8?B?WXRrNitUbUNqVEZlYUVUMmJxZFNvUjBOdGFrSThwL2FoM1VWMU9PQnBieHBF?=
 =?utf-8?B?N2psWTQzYzREc1EzN3VSN1ZBYmt1bGlscnQrMVowSFFheGdOZm03UGdZWm10?=
 =?utf-8?Q?ByikmY1QTIPYZa74cb351kxdCFGMJ05u8s4IMm8?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S2xsem5lZThlTHpXUVBZVGZBOVBReVdySlNxZFpaN3IwdFJ1dGM5ZjFGR1Ro?=
 =?utf-8?B?cXRrRG5RMEtoQ3RVeGs0cXRBcWY4b1hHV2IyR1F2N0xINXpKNjAvcnh5a2dz?=
 =?utf-8?B?ZVBJMUt1aVYrTGQyNkZoZnFIYUdOUEVIN2FiL3BYS0pnTnZ0eTBZVnF5WmdY?=
 =?utf-8?B?UW9nRFVmNkxSb2F4SCtJM0lYdUtQOS91OS93Y0dmWXZVQjNyYXZkeWY0Rkd3?=
 =?utf-8?B?akFCWWtVdytvV1N6VVB6QnFZY0JPRVUySWNuSk9SMEF2dzd5QnF4TWZ1VHdi?=
 =?utf-8?B?WjQ4bm5tNmUzVWdqeXJsUkRlZVdJWllsOTNtTWZpUTR6aENLV2JadHptTWNM?=
 =?utf-8?B?MEV3UHNURVZnRGhLTGhEM3lEQ0Q2OVBtbnZQZExUL2RHV1JBMTc5Rkd5LzJv?=
 =?utf-8?B?YUxhVlFXc0wxZ0NSOCtQN0E2bVhYdFZNaklUWnM4Q0FrblQzNkZpdHhFUmRa?=
 =?utf-8?B?WWp5QUtVNUo2OTR6MnUrMTByZDFDWGZFM3M5bmlkSVZNVlhoTkRsVC9jTTZ5?=
 =?utf-8?B?djJoRFdtWW1aaXA0eVhxVVdDeVNXdW9SWkEvK3hHSklhV2l5Q0ptMEdUTmZh?=
 =?utf-8?B?UHp0dFlRYWJ6MFVzZTdLWGNyb3pWK3FjYk9DR0VUOGU0VHEzajdLajBhMjIv?=
 =?utf-8?B?SXRaaHE4TTFkLy9tTWpVUURFbGwyVjlRM2F3RlNHbmVDL05RWFh2YjJsSW5J?=
 =?utf-8?B?YjQ5c2RKYitwTnVqZXZLTFZxUE1kUkhaZnBGT1I1WGZQVUZpMWZNSzM5SGJW?=
 =?utf-8?B?cnpPbHpIWlBRc2lyUWFRc2hWbW8vV2RWcXpwUnl3YkFwWSswbVdPUEREVVJ1?=
 =?utf-8?B?OHZjQ0p4VmRJOVNjWHQ3MEFoZXR1TXJmMHVCcDlITGlxMmpnQjNCc0hsaVdI?=
 =?utf-8?B?RHNaWjFmeC95U3BuYXJuSHpqbjZkeml2TUFRQWFnMDgzTXNzS0FrYmthcUFX?=
 =?utf-8?B?bHQvRW5MMCtKdnhoOWNHREViVk5IZ2s2THlCVUY3TzNzTVlXS25pVG9xZWZr?=
 =?utf-8?B?aEFzM3pNTVdpaVpYaEhLTmJrRjJuNVBaY05aR0I2ais1SWhiYkpxaEUxWWxR?=
 =?utf-8?B?U09OL3M2d3JwWDJqbFZuc2Vpa0ovd2pSN3h5ZldHbXg1OWUrSS9ndjlEbHBL?=
 =?utf-8?B?TWZXbWc0TkZmRkNOcGhEOTM3VVZob1lmM2JtRlJqL1B4dk5hdFF5TmxSSzNF?=
 =?utf-8?B?WitUelF6NVY0eHVDN2NVaFZ3Q1Z1cmFUeW82OTBjNVV0YmNtWGZibmNITVlK?=
 =?utf-8?B?emlBR0RTbGRIdDBXemw2RDVxTEtMdGRnYTJrdDduVlQwOWFhdG4yK1AvOUhT?=
 =?utf-8?B?M3o1Vldmdms0Qml0TWk5TFdad0dhS1lGL2lGKzlEOXJZUnNYOVRFNGJwdS9U?=
 =?utf-8?B?UWZFajZ1TlBJZ0ZhQWJWL0Q2MXNnQkwzZlhLTG1rVy9RV2lEK29jSHYwd3RN?=
 =?utf-8?B?ajFiSDFOWm9rUW5lMWsrUEVHUjVvQ0pRcUJwdzlzSE11QVI0RWZEWkVpRFpN?=
 =?utf-8?B?UDJINkFWM0RhTmQwZjN4bkhycm94bThoVlI1SFlvcDVKN2pyN0FKUmUrT2xC?=
 =?utf-8?B?UTB2NFgyQU81RUhuWmtPNEppSSt5Zi9VdVl1MXNieDBkSURXZjl6U3JGVlA4?=
 =?utf-8?B?RnBvQXBvWnpOaXMrSEZadmNUZ1JBaVh4Q3h0UmI2bWU0NWdrR2VlbWF0bEpq?=
 =?utf-8?B?RW9hN1QzMStKNllUbjV0NC9sdTFyQlVURWpaVlRBU1JNSmdyMUZkYUdkT1Ri?=
 =?utf-8?B?a2Z5QS91VmVpTHZSemNRYzJ4RTQrYys4ajNiOHlLb2J4UFZrSTZTL3ArZEVU?=
 =?utf-8?B?YjRndFZIU2RDMytpMkgrTktrQU9hUU5vZEdId1JKY1h6NlFKVXdGODVyekZZ?=
 =?utf-8?B?S2xDN1RtWWRKdmRWd3E1OVV2anVRQ2FWK3BNb2U3NFI4aE9xNlQvUFZZcnYz?=
 =?utf-8?B?WUNWY3lEVlBCNjU1Sk1MUUN5OTJlTmhQd1pnblQ3QjhsUm1EcU9FNi9pT0dH?=
 =?utf-8?B?VDBlNUlBYU1JQmtQaFMrUkoyZlhxUEtRaGxWQ1lNck5vL1IrMDU4VVRod0cv?=
 =?utf-8?B?UUxDZ2pxSmxmTEFtY2QzWDRnelNDTGZhVExicUluRVF6RUFjcUxTWmxmOHhU?=
 =?utf-8?B?V0x6dUd2c05IQ2xXSk9lcVk5MmplL004WjBjTURKcDBrNUFQTWZhZkw5L3Z2?=
 =?utf-8?B?RWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e94f17e2-a849-4fc2-5152-08dcf4e3db1a
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Oct 2024 10:57:45.1505 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hzgsTGJ/f84nk0XgGeXZCo9rTwAysobQJ86spdnCX7/r03g7nnkeM8DtvJFz6ZBo7bQqiV7aOfKSYIsIeVrEOZPJsDPCKSatqC1VrrX2yvk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7769
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

Since we already have that warning inside `remap_sg` we can also catch
this condition inside `remap_io_sg`.

Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
 drivers/gpu/drm/i915/i915_mm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_mm.c b/drivers/gpu/drm/i915/i915_mm.c
index f5c97a620962..8a2779191f18 100644
--- a/drivers/gpu/drm/i915/i915_mm.c
+++ b/drivers/gpu/drm/i915/i915_mm.c
@@ -146,7 +146,7 @@ int remap_io_sg(struct vm_area_struct *vma,
 	while (offset >= sg_dma_len(r.sgt.sgp) >> PAGE_SHIFT) {
 		offset -= sg_dma_len(r.sgt.sgp) >> PAGE_SHIFT;
 		r.sgt = __sgt_iter(__sg_next(r.sgt.sgp), use_dma(iobase));
-		if (!r.sgt.sgp)
+		if (GEM_WARN_ON(!r.sgt.sgp))
 			return -EINVAL;
 	}
 	r.sgt.curr = offset << PAGE_SHIFT;
-- 
2.43.0

