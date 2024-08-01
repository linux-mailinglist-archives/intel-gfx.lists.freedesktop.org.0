Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F87C9450EE
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2024 18:42:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93A9910E91E;
	Thu,  1 Aug 2024 16:42:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HSJHOLEj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E01F10E900;
 Thu,  1 Aug 2024 16:42:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722530531; x=1754066531;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=I5/0Esqf84/uMvp4TE/utWOe/QcNENCmdyv8zUsxySg=;
 b=HSJHOLEjz7Zll1BGMKEFnMeu2RfVHXyDIMwYCsoXp0PkYhn8ErqhL0Qf
 bQg+pwWNYlMJV0dU3Wg+GoUw+wRPZXYs4FBo7fdTUFXmE0OaxF0hdbNLT
 oPQFZ5EzyO5UVQeEiUS/EzpWxfWjELrypfwc9migxl+ZBp5Jcdlcv5o2b
 T+KNx7ewTcCykKNfHQxkHFrV8l7mEbyZwwLb0yvlA9pQSVio9QIOdAQno
 pa6faqh8/usLt1fJyl55DO5q3VZh5WSDy3gfmXdyfYO0EQzE/fHJbfFEz
 AuaLn+M1s40Nm/p9rdDk7sDZ6DzZUmibRyPrdCysRhuRdNBkHt4+V8rfk Q==;
X-CSE-ConnectionGUID: eHPYosM9TdKW8LoKC+p2hA==
X-CSE-MsgGUID: WBOxGCbfTJux9c0rhrsXew==
X-IronPort-AV: E=McAfee;i="6700,10204,11151"; a="31135276"
X-IronPort-AV: E=Sophos;i="6.09,255,1716274800"; d="scan'208";a="31135276"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2024 09:42:11 -0700
X-CSE-ConnectionGUID: jTFmG8iURjaZIjdUG5ShTg==
X-CSE-MsgGUID: NAreTJy2RU2oe6BXu/REQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,255,1716274800"; d="scan'208";a="55019032"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Aug 2024 09:42:11 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 1 Aug 2024 09:42:10 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 1 Aug 2024 09:42:10 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.49) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 1 Aug 2024 09:42:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kH5GEV8GDq7gqjU9RW7yHatSyl2bFl0lVMOcUoXYNdInbi24SRh/7l4sCkXdMio/u95OMtScu/KF/NJxPCuXe755BTCxYCtho5TAAnDAWBnYhxZFUaXb6nmqDzDf06YNaBomsIL+7beWnAKkT8JW/FPRyC7lv7rEOM5gaaxpUkwy3qJJ8Cr/nUGL49udnPktNdHvzydBXJWSTjaY9AwvForuwN2H37K1DrNJj7M8rL/UH2qqxOqc7xbjk6rSbxDKtQ6ouh8LxiKHWaEXv5I1ESQYZaUbwCikTfgacGmMhlfTgjao1XNZCKVOZW7wmiUQ/EhGMfNN0pw6TdZqfZjMpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Pft20ATgsZjHssQtJhXMC9tGAl7v0+hcciqu0wNFoP4=;
 b=w9sLXAuMenNvz5qer+YPhc+alvYCiVEe+7I6GmmIXiJCjEr5tQpWoPBLL0Pynek6CUoNCNdocBuSOkm4XCn2kt63zN3L5Gznf/mDp9LuzRQihfzSAZbVS7qtO3H62FpsKA4e686shsiArFhSBKnuqZ5nXXWitMzFpOZNeRvqrdqOGbAM0yEZh0+ajFJnbVdt7pnfS7DVX8jn78X1aKfaxvgnSu1mG4RYocFjFHvpBPWhgNgBD3IhDbJatP49uwaX8pVqZJkrA8PSdVq32WCQv+Xth7/jiOQtt3MdIr+DRFPkewLNOzMyI7haHikFGxd23/h5P1gY4y7kezTwXQBxiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DS0PR11MB7577.namprd11.prod.outlook.com (2603:10b6:8:142::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.23; Thu, 1 Aug
 2024 16:41:58 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.7828.023; Thu, 1 Aug 2024
 16:41:56 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <55d57008c0f9bcfc089cf8b940e531c770f43454.1722263308.git.jani.nikula@intel.com>
References: <cover.1722263308.git.jani.nikula@intel.com>
 <55d57008c0f9bcfc089cf8b940e531c770f43454.1722263308.git.jani.nikula@intel.com>
Subject: Re: [PATCH 02/10] drm/xe: add kdev_to_xe_device() helper and use it
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Thu, 1 Aug 2024 13:41:51 -0300
Message-ID: <172253051169.5121.1482254642233377824@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR04CA0220.namprd04.prod.outlook.com
 (2603:10b6:303:87::15) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DS0PR11MB7577:EE_
X-MS-Office365-Filtering-Correlation-Id: 1cb565e9-6404-4ab7-f3c2-08dcb248dafb
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NDE5NGsrNS9zMW5LbjY4N2k4TXlBdzhYMzNCYWp3RUJBN28wT0pkdXFoRUl3?=
 =?utf-8?B?cUFySS94UkNGOGphUFJ4dS9EdVpnaDN0QThFWEt3ekpwOURkNzBUZzkzZm13?=
 =?utf-8?B?ZEI3Z3BtY0dIeUY0WjBDL01jenlWSm02L0xsYm9pZjZXcytEL1NoN21jRUk2?=
 =?utf-8?B?a1NWRFFFdUdJcVgzdHpEbk1aaEluZElDZU9pb0pUTFZWbFkrdjRLSHNXTmd1?=
 =?utf-8?B?TEh4N2g0VFdIRU9UQWFLNG5SUDk5V0cwZTNzdU9WYUxWSzEvMnFmNHFXUGVy?=
 =?utf-8?B?NmhHVTRkdU82T0MxMENyL293elo3bmFVZFNkTExTS1ZNNGhsOHZaMzlkbmtv?=
 =?utf-8?B?UnJaSFk1UzdoVnFCY0Rlay9oRkhxTGM5RTdNZ0VIVDV2M0tXME1hQk5OYzdp?=
 =?utf-8?B?TVlyZWVYY3NrWTU4cGM1VldKcHFTSDRHVUNyb0ZjV2VBSk5kUkdZN0EzcExp?=
 =?utf-8?B?aHdyc1ZuMjMrMUdEaTNWZE9qZWMrSVVTekVkc2hLQVd0SXNQU3RLVHRDckhH?=
 =?utf-8?B?Q05TOGlwNkV1OFdpZDU1K0ZtUUZ1Y1pBL3I3TzgwUHJuazJ1dDk5akE2ZHFM?=
 =?utf-8?B?MFhKckRMSXlVcUZNV056YkZJc1crTU1DcUJuUlhDOVlJSEJnZTdxbDNzODBP?=
 =?utf-8?B?L2J1V2R1cTFBUVdSalg1WmJxNTFsa0FoWUROMVNlSWpLS0R3S1liNzRoRllL?=
 =?utf-8?B?bmJrZ0xlbkF5ODNpeUs3VXViTkg2K2QwTis1R1NucG5OTmUrdmhoSnJhWjNP?=
 =?utf-8?B?T2h6K3FXVE8rN3VkTGYvcEgwOVJEcDBqcG4xZVpnSDU2Z3FKaW0vUjlWVEM4?=
 =?utf-8?B?UW11RkMxdWFxRXVKdzBNdDUyTC9pUWJIa21zTG5XdFdrZGxuY2l2TTJ0RTFV?=
 =?utf-8?B?Q2l0QXRkMU5nRVpFQk81UEtaMzhMUEswS0NZNWVyR2JGWlFIUTZIVXp4blFM?=
 =?utf-8?B?UWdmOU8rc3MwRFBraEllNmJyeWRtaDZVRG1qMmRTN0pzbVZYdHV4NncyN29k?=
 =?utf-8?B?S09wa2dvOW9mVnBTNDVid1dpWnFJNlVKSUdlOHMvcXRuZEFkclVpYTk3SDB4?=
 =?utf-8?B?WVBXZGNvdmVVaEUvQ01iNGZuSERNRjU3VnJHS09XdUc4UGhpSU5xOTc2bExn?=
 =?utf-8?B?MTJNWWVLK3lUeHoxMEdoOEdCakFWREdkbmwyYVpBU1FOZ251V0VoL3hBN2FO?=
 =?utf-8?B?MC9tdG8zeTNmMzBTREJkeUcveHFLZmU4WXVtRzRHZkZZNjRUV3lrMG5vb3Aw?=
 =?utf-8?B?cGIwKzZHTXg4SklIZUk0OUFTa29oWUpJZnRiZDZ2eWcrNUpkejAxYk9GNVhZ?=
 =?utf-8?B?Z1JBN0s0QXhKS2pSckI4cDgzaUZtRC8xVGVVVEZMSHNaMlc0ZndjRFhBZnlZ?=
 =?utf-8?B?N0ZKWmFjaE1CM2RRMFVodURNYlh6NWxLcVRzSk5XdjQ5NE9DNndKZ253Tnpt?=
 =?utf-8?B?cnpqTXE2SW02RUw4eE9pTDMwSjNiaXUzQzhMdHFsQ0NyVDBJV3UwREZOTDln?=
 =?utf-8?B?TW5rdXZ0SnNRc01sUkNPeTFmUXd3ZWpPOE5SUGxDelhMRGlFaG4wMUVKRXRW?=
 =?utf-8?B?UWtvSnp3RVFHQlJvNEhKeXNWTHRrcWdlZ0R3eVRDOTc1N2dVd0szbm5EZHFr?=
 =?utf-8?B?Q0RaTGRWRTV5ZnJnY2RZYXlpTFhkNFVva3lXN0pncFlMMGt3VUhWS2VpZW1H?=
 =?utf-8?B?Q1J3SWZMaUU5bHVKWXBMeHUrOEdwOXFPNTZra1lOa0poSDdqY0JYQnBsMVJ2?=
 =?utf-8?B?dDZGakRiUzhSRjRCT2greVQwVExtMmpuVDlXSkxpMURLVGg4Rmo3dUx4SEl2?=
 =?utf-8?B?OTAvQUE4S054L0lzQjFNQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SWE1NEJlS0xQYWh3VFdzcWFtSnU3UnFkdUNscGxRMmRFbU0zREdEMHNvMEp0?=
 =?utf-8?B?QVNGdUMvblRhdmhLN29UMGNvOHlvdU9MWkN0czZ4TmMrTmZBWUF5MkdIdGVI?=
 =?utf-8?B?WEpUd1huOUtwdnNwR3J4NExpQnZJNVhtaEhtUlJvMzMycWhoeml2MUlLeXdx?=
 =?utf-8?B?d2NUUlJYRC9Dd0tMTDhnR2FnNGh2cmZlTWpPYnNsM3JGcm1ITHVkNDNTRkhF?=
 =?utf-8?B?ZFExWk9kOXZzZGw4WFQxQWhBTHVYZU1nQ0xEMFJtZmhLaWF2K3ZkSEcxZFFo?=
 =?utf-8?B?V1JyNmlwKzhlVFExSS9vVzZ4ZmdrQlFaVVExcmFmZ0pwWWJZUTh1QlNKOWYw?=
 =?utf-8?B?MnRiRVZmQzBOQlRYMnpNM09DUktOWEJCS0RRWnNCQjQyaTF0Q0R0M1FiSXNE?=
 =?utf-8?B?bnJTTzBlLzRleHdhcDRCZkhIR1V1R2puOUMySmRpQjJtaWFnVkRUVWRkb0x4?=
 =?utf-8?B?a3drd0hLejFaV01ZUDcvVjZVcW5jeEVqM0F3dEVVaXlPbUJua01teXZLZFNM?=
 =?utf-8?B?c3RCbzZYQ2JoeXlWSGpyL0s5dWZwWG9vVlBCNGZSY2xQejV4cDU5a1Z1NUcw?=
 =?utf-8?B?bjJHRDNIK0FyWEJldk83cDE4Q2p5NTIwUzJKbUttUEM0WVQ5RTF0SkZYY0lO?=
 =?utf-8?B?MzBtdTBuU0JMc0lnd1ZTcTBNbGZjOVJZSUZkRWl1ZnQ2dStyUFdYNzAvUUNO?=
 =?utf-8?B?ckpYa09xS1Z5MlpEUFZTMkxZUzJKMlU4NnJqN1RPN0w0K3RhbXVJYkIyZ09x?=
 =?utf-8?B?d1haVTdwU0cvOGp6dmZidERDUXJ2MHJmY2kvYmVwOWFSQXdzUWNvREQ5N2Jh?=
 =?utf-8?B?MkRmemlRQ0pMOUY5OENsME5yamw1NVdvRHdkSDlqSm10b1RONkpWQ2gwTGUx?=
 =?utf-8?B?RFFrMGJUZTRDM01sRkNSL3JySEtKeVZOZ3YwNDQ0K1FrL3c3UnBSSzJkTXla?=
 =?utf-8?B?T2xGUFVsZ3BVMkhpMnE3ZFl6Z2cxTWJVazIrNjRRYmFJcE90aDFGZzk1Lzc1?=
 =?utf-8?B?bi9vd2JvV29hTk1kbXYwRkd3RVc5ZUt1bVpOMXN6aTYweXFoWVluOU10Q1dT?=
 =?utf-8?B?dFNBNWRHTWx5NjNzbUN2TjF6ZFNhRWdLWFVub2h0eTg3YTh4Qk9uaXRXV0Zp?=
 =?utf-8?B?NXNqM24xMEYxTzFxUGhmbGV5NjJlSnJLZVQwVENSRlFMRiszUFYzZUt3SXUr?=
 =?utf-8?B?VHYrRWhHVkhYb3c3ZFUyOEgwZCtmWllpeU02UTducG1TeVdVdDNNcng1Nks5?=
 =?utf-8?B?Znh4aGJ3QVhFcnFBM05mTDlaUXdUWTBCR0FmVXBFaTFobUM3TmI5SE9BUGN0?=
 =?utf-8?B?amViSHVUN2xMbWdrWEZwb21iSllmamFFcTN6c2p5SDhlM1JIa1h5bEplRzBl?=
 =?utf-8?B?cTh4YWVZN0NTdFlDMFJ6TFJUZE9aVlllZUJFcjhGd1VGK292VFU4WlpzeGhT?=
 =?utf-8?B?anR4MmxsUmJleCt2WDlPc2pVR0duT0RKUW1TWFhjdnFJZGRpdVJoSGYvNytj?=
 =?utf-8?B?VVF6SzJtR3g1YVlONnNGSlNWTjViV3Q3VlUwY0VBTEVURk1xa0NNQXBWWFpS?=
 =?utf-8?B?SldLWW5yMUN2Kyt0d3ZWT3hIQ1hYeXpPRVNCakZuZEVlZmo3cjhSdHM0Q1p1?=
 =?utf-8?B?VXBobWZxMGJNNlNTUFFreHltT0tlM3RjWkhYS25uUkFQZnZvdkt0THlzUmx4?=
 =?utf-8?B?Y1RSdVlKNW43OWU4V2JQV3VubisvT21HRnYrSkkvWUdCQnZKVmdpZ3NMYmNV?=
 =?utf-8?B?U2RTMmNGd0N5UUZaeTY4ZmtJdVh0SnZlQWQ2T0RwcXB4TkkwL0htWmlLQk01?=
 =?utf-8?B?L1Y2WmJLNnl3STJrZ3VHa3pTOGtYRWJ1VXUzVkJJR2N1bXgyamVNN2I5cUJI?=
 =?utf-8?B?bTY4QnAvakYyS2E3ZVg4KzgxL1ZubVFEM08vcEFmZk9IUUF3STZVTFZ6S0ly?=
 =?utf-8?B?bWZ3aHVSclZzU0NDWVBZWkVzV2R2RGFta29yU2h2N3dNOHhtam9MYkZRUmRj?=
 =?utf-8?B?Um5xSWFPQ0xqZnNhY2VNd3p0cDBFRnVjRW1NU21CQTEwRWdHTnBUbnIyTi8v?=
 =?utf-8?B?TDBZSW1EYmVsa2JHK0pLb1UwSGF3YWFwSTJhZThkQkhiRVIxZWVmVXdTdFRw?=
 =?utf-8?B?NGlxR0p3SG1WcmtUUzRQbFJiMSs1WHFhUlhZNWM4YWFTaG5UU09WdUFneXN3?=
 =?utf-8?B?ZkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1cb565e9-6404-4ab7-f3c2-08dcb248dafb
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2024 16:41:56.4836 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DFxdVzO4uwqGRt/+p6aHoKu6JClhCTL3GswZRSP1ktAFBX0bvXFaHmhnbhDPxG8CrrAYux9Jyz06iSebW0L3AA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7577
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

Quoting Jani Nikula (2024-07-29 11:30:03-03:00)
>There are enough users for kernel device to xe device conversion, add a
>helper for it.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>---
> drivers/gpu/drm/xe/xe_device.h    | 5 +++++
> drivers/gpu/drm/xe/xe_gsc_proxy.c | 9 ++-------
> 2 files changed, 7 insertions(+), 7 deletions(-)
>
>diff --git a/drivers/gpu/drm/xe/xe_device.h b/drivers/gpu/drm/xe/xe_device=
.h
>index db6cc8d0d6b8..2c96f1b2aafd 100644
>--- a/drivers/gpu/drm/xe/xe_device.h
>+++ b/drivers/gpu/drm/xe/xe_device.h
>@@ -15,6 +15,11 @@ static inline struct xe_device *to_xe_device(const stru=
ct drm_device *dev)
>         return container_of(dev, struct xe_device, drm);
> }
>=20
>+static inline struct xe_device *kdev_to_xe_device(struct device *kdev)

Nitpick: Although there are some places that do it differently, it seems
it is very common to use "dev" to refer to the generic struct device, so
I would s/kdev/dev/ here.

In any case:

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>+{
>+        return dev_get_drvdata(kdev);
>+}
>+
> static inline struct xe_device *pdev_to_xe_device(struct pci_dev *pdev)
> {
>         return pci_get_drvdata(pdev);
>diff --git a/drivers/gpu/drm/xe/xe_gsc_proxy.c b/drivers/gpu/drm/xe/xe_gsc=
_proxy.c
>index aa812a2bc3ed..28e6a7a1d282 100644
>--- a/drivers/gpu/drm/xe/xe_gsc_proxy.c
>+++ b/drivers/gpu/drm/xe/xe_gsc_proxy.c
>@@ -62,11 +62,6 @@ gsc_to_gt(struct xe_gsc *gsc)
>         return container_of(gsc, struct xe_gt, uc.gsc);
> }
>=20
>-static inline struct xe_device *kdev_to_xe(struct device *kdev)
>-{
>-        return dev_get_drvdata(kdev);
>-}
>-
> bool xe_gsc_proxy_init_done(struct xe_gsc *gsc)
> {
>         struct xe_gt *gt =3D gsc_to_gt(gsc);
>@@ -345,7 +340,7 @@ void xe_gsc_proxy_irq_handler(struct xe_gsc *gsc, u32 =
iir)
> static int xe_gsc_proxy_component_bind(struct device *xe_kdev,
>                                        struct device *mei_kdev, void *dat=
a)
> {
>-        struct xe_device *xe =3D kdev_to_xe(xe_kdev);
>+        struct xe_device *xe =3D kdev_to_xe_device(xe_kdev);
>         struct xe_gt *gt =3D xe->tiles[0].media_gt;
>         struct xe_gsc *gsc =3D &gt->uc.gsc;
>=20
>@@ -360,7 +355,7 @@ static int xe_gsc_proxy_component_bind(struct device *=
xe_kdev,
> static void xe_gsc_proxy_component_unbind(struct device *xe_kdev,
>                                           struct device *mei_kdev, void *=
data)
> {
>-        struct xe_device *xe =3D kdev_to_xe(xe_kdev);
>+        struct xe_device *xe =3D kdev_to_xe_device(xe_kdev);
>         struct xe_gt *gt =3D xe->tiles[0].media_gt;
>         struct xe_gsc *gsc =3D &gt->uc.gsc;
>=20
>--=20
>2.39.2
>
