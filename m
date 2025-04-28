Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00BADA9F1C4
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Apr 2025 15:09:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8466C10E4CA;
	Mon, 28 Apr 2025 13:09:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kGZX13vH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1013810E066;
 Mon, 28 Apr 2025 13:09:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745845770; x=1777381770;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CfiuGnCtjWB8j7k+iVtphcV+AtUz9uHvGXS3NGaquVk=;
 b=kGZX13vHl4JN/EcBb3YnQBlUE9wXAUP6zXehrM0ev9H5GgTFb3qy4Yla
 +W3cW3DpTEUwCfH+gD0OlhIOmOwZZDWxq+MHtqwOF8SAByQNIdlwaAdZl
 H/pi7eVMCj3OwdNwcn9ffnvEZifoO4xWuTMWBAyeBmyS+tTM/PkWR5MKw
 UzHMqj9IloOKp6avxryMbv92cuM9Lm4nsSWmM1fGKsebRLTPEW6NauPXV
 aGH+hfB0X5ra7sl8hGp2IJQX41WOx/sSCJ74jOoL+9FMaCte2GYr/qh4X
 25CFaywVSPZg8O62u2jAR8jO74AZ16odn8RTMLQXeqbFNoWrciKDtkqX3 g==;
X-CSE-ConnectionGUID: i1kCvk7VRA6lPd49TrUtqA==
X-CSE-MsgGUID: nC2+G5/GQz2dgBRPe1OASw==
X-IronPort-AV: E=McAfee;i="6700,10204,11416"; a="58799667"
X-IronPort-AV: E=Sophos;i="6.15,246,1739865600"; d="scan'208";a="58799667"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 06:09:27 -0700
X-CSE-ConnectionGUID: lHl8j2SIS0ebwmuFp8scfA==
X-CSE-MsgGUID: 2WyZtN5jSz2gM2rmbNw5kw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,246,1739865600"; d="scan'208";a="137566439"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 06:09:27 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 28 Apr 2025 06:09:26 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 28 Apr 2025 06:09:26 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 28 Apr 2025 06:09:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SsBlgnEQHoiDXKHGqM4C74o//+Xbat9CF4HgYPv1UaDM3QelRrKrOVdKpyCbwF3p3pigU3LdiAWF6MsDOmzZ2fj4DTTrsJQh86hiMr3HbEbGvUxZ0C6yrFGGh5vhnlg7SHZEOQGWpDvj4zazlXOwlDNRRRHvbI2HN6pUhNq2rkV4OW2rnGynt4SAySpMqGKUmujALQugduXz1iO1Ty7fmjJQTCU8JEsLJ6JtrjsS0dyu0WnyXE3Ksuc/n+L0pAduguB1eefXA8SUXQ89PEnzT9FbLLGrK7bEO/prgFnEapdIgm48OxnBIPYJY/cmwLVP+lQ9EFd/Zj9IdY3Va64lLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eEwio5MWqBji78CrJnX68/62i17QUcvTqdo8RcvN1jg=;
 b=tOO6p3njDoivPuT80XR0FNYvaNA6IuIrigYatrVax+WcORpfKnS38hXj8WvZG7SFhuv1FhnVW6BFcZko/Dj7hMfiX6Z2s/PS1X6p+0GWiwRGrRtAIjyr/Y15ogNFlrWgpUwdKrPjZ6LRX608+l/RIrMIV7A/MIkeJPpxfDvAQ+Iix/+bSoyGjMYR7SYqd012nUXX1o69PljzXxFsn+JnfBH/nOoWC2qnBO0crP7KnFlcgdE9kILcr3zGaXm4HqNB7HyDbw9/6nETI7eIu7KQ185sw+RTqsu9Vy5bQXS6uXa+223Zr9gMOJeQEIM+YyhNNUR97qVY1Y/hsAX1kjkxtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS4PPFDB7809488.namprd11.prod.outlook.com (2603:10b6:f:fc02::56) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.34; Mon, 28 Apr
 2025 13:08:44 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%5]) with mapi id 15.20.8678.033; Mon, 28 Apr 2025
 13:08:44 +0000
Message-ID: <c9494071-dc67-4291-b144-9f8f669cb559@intel.com>
Date: Mon, 28 Apr 2025 18:38:37 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 06/15] drm/i915/vrr: Add state checker for dc balance
 params
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <ville.syrjala@intel.com>
References: <20250428062058.2811655-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250428062058.2811655-7-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250428062058.2811655-7-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0002.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:80::8) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS4PPFDB7809488:EE_
X-MS-Office365-Filtering-Correlation-Id: 70b648a3-9d2a-4e07-c416-08dd8655cd94
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VHJzeHhVaTYweDMrMUhwN1JSTWVCTWNReFVmazQ0M2ROcTRsMGJId0lHSVhR?=
 =?utf-8?B?S2cyMktidVpLZkNTWFI1TWMzZ3NxNkFxZ3Z4ZU9CMlZXaEh6SDNySkdMSStE?=
 =?utf-8?B?V3JQTWZTVXlydHloeXBzelNJTm83cWYrTGRVeXVYdkNCVGVURXluc3M3MDE4?=
 =?utf-8?B?bkFoWHoxVE9JbjgvR2VIZ3FuRFZTb1l1WlQ2RnNoYUM5Rjg5aHVxcU9HSnJT?=
 =?utf-8?B?c3ptZitoWHdFL0czVlZOSm9aTGZMRUZDMExYNXowOS9EL2F0Y2hVcnljUk56?=
 =?utf-8?B?MnlQSkhOU0ZQTmFnRXpXcEhOTXRVLy9ydWxKV3JTMmUrUWtRQWdDNjloZ2hw?=
 =?utf-8?B?Y3dBcUw0OE5mZ2ZBaUQvZXJHNWYvTlZNc0RBd083M0tTOG1Md1NqMGNTcUFz?=
 =?utf-8?B?Y0NuTGk1amR2b0VrOWJ1NzBmb0dUTWJMRVBJakNIZ25QTU03K29Ca2lMN3hH?=
 =?utf-8?B?OS9ZMUI4ZTZEN1FSMlJOMXVtdlQyS25jKy9iTG0rbmxXY3BUQU1lWXN6TzBO?=
 =?utf-8?B?ZlJlOE01V2VXYUhMUFY3SlVxWHgwZEFxVXFEUDM1SEVEQlU4OTNRWG54VFhH?=
 =?utf-8?B?NU5iVUFiK0FDd21hMUpjS0k5OFJkb1VXQ2hBUEdKdTFIdWVtNnFGMTV4aEl1?=
 =?utf-8?B?OVZTOXBKeWtBbDk5Y2tVY21NcHBRUkFhMHllZkpzSzB3UGEyUzZodjNJSWo1?=
 =?utf-8?B?V1VFR1AwQU9KNjZnenIzMUlva0pTUmdWQUFVUVJJNTIzYzFERk9XK2lQc2Fw?=
 =?utf-8?B?S3lQaXlIY0RxWW9UUW5ZRWc0M053U0o0RXh2dUxYMVdxMXVZd2JpVnFrMXRY?=
 =?utf-8?B?dTF2Z1JwS3JDNGlJTlc1SlpCTWJZZHJiOWZPZU51c2F6SlUzVEF0dHZSVEJy?=
 =?utf-8?B?bHlXbWtIaTltQjZ6RDQ4dXhBREJMMFMxeW1oWi9UaFJySVBsV3NHbzNDN0xk?=
 =?utf-8?B?WFF3MFE0a3ExbTIxQzhvaWRWaUFjYmQwbkhYNlJWK09KWEdUQ3Jzc3YwT2M0?=
 =?utf-8?B?WENJR1NobzdDWVN1REhLTEVxT2xGVHg3clpzZXp3cDZIZlhPV1AyYkVWRnpZ?=
 =?utf-8?B?Ry8zajYxQkZ1UFpmaW03Y0FiQ2F3L2U3MUJsdkI0V0NFcFJEb2dVcm4vRkZB?=
 =?utf-8?B?VFJwZjN4UEJFcllXV2QzUklUT3lJRU83TzhlckNlR0djT0IyamNrRDBlRGxn?=
 =?utf-8?B?aWFWY2MzMkdvSWJBeW80c3d1NDZWQ1MxZTBjVy91ZVVEUnF3NHExeXVjRXh1?=
 =?utf-8?B?WXVqdWQyU2k5dkgvYkZCNkhxdWxFdkpISnBGa3hMSUJ6OVozZ2pMbkkxbXBa?=
 =?utf-8?B?aWp0TjBCb0Fya2RGRGM4b3JTb3pIMDdCaFF4ODAraWhGZlpFZVVheGhIQzZs?=
 =?utf-8?B?cTJMdUorOUVhUGlWY3ZIdWZ5RCtLcDArcDF4NlA5WnpieHF5UDg0ZUhjRzRT?=
 =?utf-8?B?YmhleXNrK2ppcnZLQk9nSlFtaDl0Z1psMnN5b2ZXbjkrUjhzVnY5RWhvZlhp?=
 =?utf-8?B?WlROaGZNNVZWMHduRVZDNi9Gd1pmM0U2aFJodHdlUXcwYVByblhiczUybUFJ?=
 =?utf-8?B?SkRqSXpPTjhzc0dTTXhQaEVUVmpKYmFNQUsrQk1IeTNFdUlpZ2xxYmZwcEtX?=
 =?utf-8?B?S3RQQXArS3ZuYmhhTGV5WXo4a01WKzF6RUxKb3Jtc3hGRTM3T2ZHakp3cktl?=
 =?utf-8?B?U1kyc3JQZ09seTd0aTNkenVBelk3TUUxaTd2eU45Vlh2M1pyZ1pEYnNUQVNx?=
 =?utf-8?B?NjdHd1dqMys2YWFmclVLZzlyZnpuTzRqV013RDYzOFgxUnRxUDVGUVJnbFVl?=
 =?utf-8?B?S0Y2emY0enkzcyt6anBCRzZrL1RjbEpOR1dHSk9MNTIxT2Nvb2ZMazNVZmFQ?=
 =?utf-8?B?YVU5Yy9SUHpyL09qS1Q5UkdsYlN1dGZESVR3VWJmQzBWRUpBTHFoRWVaUjlZ?=
 =?utf-8?Q?hdU98WNNUh0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bEpld1hpdndLNmVkak9iMXRVYVZ2OGtMZy9OWlU1VGRBdTE0M3I3Z3dZR1Rk?=
 =?utf-8?B?RXVmM0QwdzhIYXRrOHFnMkprT2tyeGtzc2RKNDY4cTc4bnM2WWJ1UTlPMEh2?=
 =?utf-8?B?WUU4VUF6bFFkbkVZOWRXQ2pkMGFnYy9RT2pKTFkyd2RqL1JvV3N4SWlLZm9C?=
 =?utf-8?B?YlVSMUF2YnBoaUZtcndGZ0VmYmJLdTd3S0RUU0ZyWWY2K1pjWDkwV1krcVJp?=
 =?utf-8?B?RDFUVlJ6b0o5OVBZanVzY0FseFR5YjBFbERBbGgxUHBLNFFPRVR2WjhsODUr?=
 =?utf-8?B?Y1F0cUZCUEp0c0JZZEhRTVBrZkdMNFVCZDVoOHh2VzhKbi9DS2lHZFh3ak5G?=
 =?utf-8?B?bTl0cGxpNmNtSUNVQ05CT3JjcnNINUpsT3B5TmM3SFpNQmNSQTJBVTlLWU5o?=
 =?utf-8?B?bjQ5L0xKZ3Vrb2huMm9rRGlrTzdPM1F0Mk9SdUo4bnVIUTNNcHF3TkVJbCtD?=
 =?utf-8?B?RlNXNUltVDlrTXJFUlJGVnpsU0VCMUFBV3l2a1JodE5wS0M2by9tK3JFTjhK?=
 =?utf-8?B?VndjMDIrWHFZbnA0R2UzaExKQlFNY1kxQkdUVkx1Unl2TnArTGxBK1FDNVA2?=
 =?utf-8?B?UzZoUlNsRGkvRkxNcEs2RHNZei84cnBTRU5WWm0yOWFOU2FLa1ZJd0sxa0xj?=
 =?utf-8?B?KzJiaGVNSUUvUXlweEJ4Qlo0d1hpa2lJVGV3OG1BTW4zK3BGWlRPK0FXOFJS?=
 =?utf-8?B?TVpiM3VwZ1RFUlltak85ZzRzQlNYbEJhTmZ1S0JkUlJqRFBJQklKMUhlY3J5?=
 =?utf-8?B?N1BnbGVxOWMyd2tnYUNVdElmU2tKTE14eHZmM2F4THpWUXlnMjFwbjdTQlM4?=
 =?utf-8?B?V2xVZEV1aFJwZ3RJa3BZQ0ZTdnZocnFWV1A2ZWFVTmloMEZZU0ZKL0VERjh5?=
 =?utf-8?B?b3dKRHUySWJRWVdLeGJCVmtzaWNOY0FHMjVmcWNXcXA1TE0zbTViR3lwVGdN?=
 =?utf-8?B?YnZtc05XSGZiUE9XVFZEUDdCajFUWVhySG9sOFRHQ0w2ZEU1ZjlWRFNxdVZ1?=
 =?utf-8?B?bkw5TU9sSUpVT0ZtcmpaZnZYWjFVZ2xYSVoyYXhDUkxrY3dDRVZ4cXhXWXho?=
 =?utf-8?B?eWkxbUFCeDljbnVkbCtZNjh3ZUdjMDhvYmhua3pjT2JNUkllK1FTa1NlSzJL?=
 =?utf-8?B?Uml0VDhpQStOZm5vQ0xvVG9XQzlNaWh4aXczQjVQTG5DSXpUMUNPMFFZQm1q?=
 =?utf-8?B?Q1hUaGVjUEllK0tST2M1TXNiVHNKQ0J2WTdqQjJKVVp0NHQwWk0wVFZVcXpp?=
 =?utf-8?B?aVoxZzhXYm5iQlU2ZDNpdk0rNStnMngvSlZBRkJBMnRHRmxyQmEvWVRJangy?=
 =?utf-8?B?WnBzR0lwb1ErQUo4YVdYczN0U0w0RitkVmhmQ1BpNUJZSXR0Qmlsc3hEUXps?=
 =?utf-8?B?TEM1RVErNXBNVlhjRlVPWVVPc2NaMmRPZGhYLzNuQlpoYldETk1QQ2lMckF0?=
 =?utf-8?B?b3kxYUovS3VCRVJ5OS9rZGMvWWF5c0RjQ3Z4Ylo5YmhUNWVTU1JwRVVpRlht?=
 =?utf-8?B?R05IQXpmbUNhY25WektwMHA0YWpEZGRLS2ZKaXpOS0EvWERZaHBKNUprMUhL?=
 =?utf-8?B?dGYrWU5MblQzS3VGK21WZWhjRm5LU0dEL3pKOWtwWGszQ0J0R3puUldwZklY?=
 =?utf-8?B?UXpySmVKZnRINTRoSzBweDBRZEZNMWJQZ3hRSHU4T0hGOFhnTEo5TUE3blRj?=
 =?utf-8?B?c3N2aFkzRWx5QUtKZG1EOE8vYUdHWFhWaVNWalhMN29jeXBiTW1xaVMzU3Ix?=
 =?utf-8?B?aUx6YWRmZWZHQnhpdUFPcDVzUlorTlJ6bkVReFNtOERDeVdWN1VvUlZna1RW?=
 =?utf-8?B?bDhuUldBK0V4UnlCMWlHMzhEdVVJNjdFTEVxVnZlZThZVmNudHlaN0ZqZGMr?=
 =?utf-8?B?b0dDR2ZwY1pUcG50cWlJeHhpdTlaem1PUHVaQm9XTGxjRFBMRWR6a1ZQVXNI?=
 =?utf-8?B?RjA3Zm5wNFdLaTExZVFocmYxdk01L2YrdXhEUFRQM0RQRlVTYWVrQy9qVWMy?=
 =?utf-8?B?dFZ0aVo5V3pZUDV5K1RuTEd4YkJMZElHdzJuSWg4TnBxMEt2Z0g5Y2J4czlC?=
 =?utf-8?B?VU9tampLSHV3cmJnUCtIeENrZ2kxb2ZZblpoa0daTTRIa1FlN2l4ZFYyeTc5?=
 =?utf-8?B?OU5iVlpjM0ZmU2p5ZTg2THZ4VmVrWTNQazc1TDVWdjAxTnFObFA3bEtIbE1x?=
 =?utf-8?B?Vnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 70b648a3-9d2a-4e07-c416-08dd8655cd94
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2025 13:08:43.9436 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: umdqNYoYFu3ViKM/cF5L1xKbOR8qs5ogRGG8K2VFTNT6tD5rXGxLkEwZWiMKHmGmNS1C6ra2oatD4565mhi/wzX8204JvaF9JiHjo8HY4VA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPFDB7809488
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


On 4/28/2025 11:50 AM, Mitul Golani wrote:
> Add state checker for dc balance params. Also add macro to
> check source support.


This is now introducing the new member for tracking vrr dc balancing, 
the commit message and the subject should reflect the same.

>
> --v3: Seggregate crtc_state params with this patch. (Ankit)
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display.c  |  8 +++++++
>   .../drm/i915/display/intel_display_types.h    |  7 +++++++
>   drivers/gpu/drm/i915/display/intel_vrr.c      | 21 +++++++++++++++++++
>   3 files changed, 36 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 58845b74f17d..1cd9c65da576 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5403,6 +5403,14 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>   		PIPE_CONF_CHECK_LLI(cmrr.cmrr_m);
>   		PIPE_CONF_CHECK_LLI(cmrr.cmrr_n);
>   		PIPE_CONF_CHECK_BOOL(cmrr.enable);
> +		PIPE_CONF_CHECK_BOOL(vrr.dc_balance.enable);
> +		PIPE_CONF_CHECK_I(vrr.dc_balance.vmin);
> +		PIPE_CONF_CHECK_I(vrr.dc_balance.vmax);
> +		PIPE_CONF_CHECK_I(vrr.dc_balance.guardband);
> +		PIPE_CONF_CHECK_I(vrr.dc_balance.slope);
> +		PIPE_CONF_CHECK_I(vrr.dc_balance.max_increase);
> +		PIPE_CONF_CHECK_I(vrr.dc_balance.max_decrease);
> +		PIPE_CONF_CHECK_I(vrr.dc_balance.vblank_target);
>   	}
>   
>   	if (!fastset || intel_vrr_always_use_vrr_tg(display)) {
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 7415564d058a..e6b5bec748cd 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1308,6 +1308,13 @@ struct intel_crtc_state {
>   		u8 pipeline_full;
>   		u16 flipline, vmin, vmax, guardband;
>   		u32 vsync_end, vsync_start;
> +		struct {
> +			bool enable;
> +			u16 vmin, vmax;
> +			u16 guardband, slope;
> +			u16 max_increase, max_decrease;
> +			u16 vblank_target;
> +		} dc_balance;
>   	} vrr;
>   
>   	/* Content Match Refresh Rate state */
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index ab4f8def821c..55923eadc3c1 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -10,6 +10,7 @@
>   #include "intel_de.h"
>   #include "intel_display_types.h"
>   #include "intel_dp.h"
> +#include "intel_dmc_regs.h"
>   #include "intel_vrr.h"
>   #include "intel_vrr_regs.h"
>   
> @@ -738,6 +739,26 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>   	else
>   		crtc_state->vrr.enable = vrr_enable;
>   
> +	if (HAS_VRR_DC_BALANCE(display)) {
> +		crtc_state->vrr.dc_balance.enable =
> +			intel_de_read(display, PIPEDMC_DCB_CTL(display, cpu_transcoder)) &
> +			PIPEDMC_ADAPTIVE_DCB_ENABLE;
> +		crtc_state->vrr.dc_balance.vmin =
> +			intel_de_read(display, PIPEDMC_DCB_VMIN(display, cpu_transcoder)) + 1;
> +		crtc_state->vrr.dc_balance.vmax =
> +			intel_de_read(display, PIPEDMC_DCB_VMAX(display, cpu_transcoder)) + 1;
> +		crtc_state->vrr.dc_balance.guardband =


IMHO, 1 should be added only if the value read is > 0. Otherwise it will 
give mismatches for cases where vrr is not enabled.

Regards,

Ankit


> +			intel_de_read(display, PIPEDMC_DCB_GUARDBAND(display, cpu_transcoder));
> +		crtc_state->vrr.dc_balance.max_increase =
> +			intel_de_read(display, PIPEDMC_DCB_MAX_INCREASE(display, cpu_transcoder));
> +		crtc_state->vrr.dc_balance.max_decrease =
> +			intel_de_read(display, PIPEDMC_DCB_MAX_DECREASE(display, cpu_transcoder));
> +		crtc_state->vrr.dc_balance.slope =
> +			intel_de_read(display, PIPEDMC_DCB_SLOPE(display, cpu_transcoder));
> +		crtc_state->vrr.dc_balance.vblank_target =
> +			intel_de_read(display, PIPEDMC_DCB_VBLANK(display, cpu_transcoder));
> +	}
> +
>   	/*
>   	 * #TODO: For Both VRR and CMRR the flag I915_MODE_FLAG_VRR is set for mode_flags.
>   	 * Since CMRR is currently disabled, set this flag for VRR for now.
