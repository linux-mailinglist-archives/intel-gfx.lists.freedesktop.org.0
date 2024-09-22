Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3174C97E0EA
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Sep 2024 12:34:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBF9E10E335;
	Sun, 22 Sep 2024 10:34:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F6ffz8ZR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5B7B10E335
 for <intel-gfx@lists.freedesktop.org>; Sun, 22 Sep 2024 10:34:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727001252; x=1758537252;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=FtzCHqeShysFN2FwmA/5GQC7f9T7Ky+vxiRyDD8poMY=;
 b=F6ffz8ZRFmjQw763ujPwBRd97zqAN5u7ocs+dZlDVTqlS8NE0c5ypo3d
 T77pme8HFRh6hBbNVvUwEUjmIdM12VUS946CvYQP3ZqHp7RWnEbF2QXe8
 VdrCoXW6Jt+axi9flYP2d0s7iCxBEy8wLl3zKV5ZyEWIGLTaivMYvM1Kn
 fHVOcye5KvO1ICtczzm6RM0F9Jp11LBL1AWdal52Izrrikmd3G6JzPqAG
 oxvKxIs5hSVIvrFTRbBolsa4OIz5g29YmE8xWuzPCbTqQ/B/IpS9z5fPQ
 Og/GsP77c0WK7gi1t6hDUS218jXVAWn1kmpYu8VVq922uv3r1BAp2JpD3 Q==;
X-CSE-ConnectionGUID: IKQ2TMSERx21/7OCbDPiwQ==
X-CSE-MsgGUID: ZXBBwQMgTwCFBz71SOTzag==
X-IronPort-AV: E=McAfee;i="6700,10204,11202"; a="28854760"
X-IronPort-AV: E=Sophos;i="6.10,249,1719903600"; d="scan'208";a="28854760"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2024 03:34:11 -0700
X-CSE-ConnectionGUID: d484750ITg6MI6JvrMh/2g==
X-CSE-MsgGUID: ALpmoPysS1GSuXwQRrKBzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,249,1719903600"; d="scan'208";a="101621010"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Sep 2024 03:34:11 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 22 Sep 2024 03:34:10 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 22 Sep 2024 03:34:10 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 22 Sep 2024 03:34:09 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 22 Sep 2024 03:34:09 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 22 Sep 2024 03:34:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ROlHfEKOfwE4enz9Rbbtpb70anTNeeuxEvv/fUijmcqmAj1xkPV/hnE+iGYxEorRKEqSq4iWcbpeg68VAmr2azcQsuZRqnBt7oDhAS34hBuvCttnu7r2Jk0ZCS4sYKpg/EcttH9M8RYgxySbWhnqkvpsfyM/+rK//AASsVuCw+6q3s8T2YgcopdHluzwdrAMKgqQciWd/VZjsxZMEXa4SHU4F8Ndh3t4AVSRnC3b5CWPWDAfDSyRVvvzfHRPVvttjNxTgIPgEXn5akoz2FU16VyQVAbZrzmT/QdyzPzn3Qo5fz3f//cN4aQY+6YxksA2ZMsULq8oX2FD71dKLYIjAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FtzCHqeShysFN2FwmA/5GQC7f9T7Ky+vxiRyDD8poMY=;
 b=f5Eh9RN3BkuE3xeHSPTKuqR/c65H5JoW7gbIf39uFabFYjfKEjcjTCGehunsW53AWR6xF7Qhwi8Pfn8sgDUzlUorH2U9Ihgjf1uNI45gRZ5ggYsGfGzA8MqyxLVkLZ1pnslcJ44dZrL7xcY3RQi/dHIFH9v/PebLA62Dq6jSRx+BvFocL1Ymqebh8ZF6iOX/BmXsfgatQBaLqnnxqhVxJwPhZClz/6OdaYoP52ZIVGdxwd+sy/UdIsGYhNa6+vw+GOU1K1NFVyhp96TG5shvSP12te2QjyZrD3GRCXJLcwAKx/VEEofNyh9dSaUUYBLkxuLSqUhxJ3C+B9Pe+HW1Dg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by SA3PR11MB8048.namprd11.prod.outlook.com (2603:10b6:806:2fd::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.24; Sun, 22 Sep
 2024 10:34:07 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%6]) with mapi id 15.20.7982.022; Sun, 22 Sep 2024
 10:34:07 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 4/7] drm/i915: Clean up intel_wm_need_update()
Thread-Topic: [PATCH 4/7] drm/i915: Clean up intel_wm_need_update()
Thread-Index: AQHbCFTu1+DtbemE8UmKWwy68iO0f7Jjmi2AgAALDoA=
Date: Sun, 22 Sep 2024 10:34:07 +0000
Message-ID: <b32bfa82c4dbbf611b4bcd613c154261e4d8cb6a.camel@intel.com>
References: <20240916162413.8555-1-ville.syrjala@linux.intel.com>
 <20240916162413.8555-5-ville.syrjala@linux.intel.com>
 <005dc35a0daff49c6d15fb68fb9e76f5e9836be3.camel@intel.com>
In-Reply-To: <005dc35a0daff49c6d15fb68fb9e76f5e9836be3.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|SA3PR11MB8048:EE_
x-ms-office365-filtering-correlation-id: 35df70c1-f61a-4014-211b-08dcdaf21655
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?cTR1TEZtWWtYU01KZWp5OFRRZEw1Ri9XSDVhNmY1aVhmaDRTbXVSNE5BTXRG?=
 =?utf-8?B?YW9lTE5obnFudmZxZno0ZGFvQWdlcWdiUEpyVHJoRHhac2sraHhOV3h1Z3pB?=
 =?utf-8?B?WjRvOU1KZmxwMkZjNDFlSVROZTFyOC9IdmtSREJCTWJEdXVOUzR1ai9iLzFN?=
 =?utf-8?B?MisyckVIQ0l3c1k3clc4cXBiVEFWWjRaclV5ZDlubENJeTFQK1lVMGo0MTUw?=
 =?utf-8?B?TEM4UnpwV3BTT1N6RjhhNG5wZ1gxRmFWZDgwSXB5cUYxeUhDYUNnU0JOZ0Ux?=
 =?utf-8?B?ZEppTDFXcTAzdkt6SGVVWUZKWnJya1dGd2ZrcDNhUThCSkJGWXRUdS83Q3Rk?=
 =?utf-8?B?WFIvaGcvc3JKbkpHdHpFczh4T3dFNVJvbEw2b0o5RkhzelBVNkoxWGs1TnBx?=
 =?utf-8?B?ZVhhbWVqMUlnSFNLQWh0cFRWbVFLYXlueGkwT294OGNVWVVvU1lwdkh1ZHlT?=
 =?utf-8?B?dG04ZmF5bnZORmhpWmM3MzgvRURqcjNPNkcydVBrQTRWUTdnREVRWmRLdzdW?=
 =?utf-8?B?YU5uTTF5bHVtZElqd3ZvMWxTVmx5V2gwZFFEbWtwZHMyenpkSmtSeDdmWU4w?=
 =?utf-8?B?NDhVNUhldDQ5N2V4WVRadmdSSnFlQnVTV0hDTHFQbzdJSUhzaWF3QVVNSWVM?=
 =?utf-8?B?ODNaN1Fxay95RVMvaUdPODR4dDBtaDdLVWFYUFNMNFk4QU4yL21wYUJhS2sx?=
 =?utf-8?B?R0IwekRkOXdsTll2Z0JpWFhkZzQ2dFNsTWpGL1hxdUlBTmRRZ1lJb1VaaDVa?=
 =?utf-8?B?aWhscGt6ZDJqYk5ZNGJmNmFLNit1WWJRbVo2UVkrUDNDcjJsNTBZZG8yMUhp?=
 =?utf-8?B?TSt5c3gxRlFrbGNzZ21RRDMvcmhpMGZKZEJaUmx4TlIwdFF6dXhIeW0vb1h4?=
 =?utf-8?B?eC8wb0FNZDlXdU9KcjliSkg3cVZ1N0IraStneDdCN0htcVRGWUNaeUFuMzVZ?=
 =?utf-8?B?cVRpQVlJYmdjRUxHN0c3QytYajJKMHJpb2twUUhzTVQ3Q0tZbldmTFo1VWNS?=
 =?utf-8?B?V21hTG4zUDMzSEJWa2xMZFU5ZHFLZGdDTnBvNGt1aXA0TndkZ1dCWFhuUE8x?=
 =?utf-8?B?YmswdWdOZ3Z6ZURsNXl5N1ROUE1jTHNTVzN1WVFDb05mUXlWL0xCVHplZ290?=
 =?utf-8?B?T2NhczNMVnhyUFhrZ0tVTmMrSHNUTzBwZXBxaEVYcWgrb2VnblRvOVdRR1VJ?=
 =?utf-8?B?SGJlYkpLUEtUVnhlN2VJVTNqSGJyREMrU2oycUdLaWRCR0xyQVhiWjc2dVdT?=
 =?utf-8?B?RXBUeVlFSHpFSjlrdm9IaU10K3hybGYyMHVQQktQcnliZXg3anNJazRlY1RE?=
 =?utf-8?B?QmtFc2kyTkM3S3VMSGRGWXZJVUJCbGJaV0d0K2s3eGxVejkrRTdCbGsvZmZO?=
 =?utf-8?B?TkYzMVI5OXhjbTVEUVdwSlF0NVl6ZlF6bDdhcXFpK0VpdHY4c0R2emM1RThW?=
 =?utf-8?B?bC9WZWpFRXZJekd2cldlS01ScTVaYnp4R2EzblF0VWhXUndOZmNCTU8vNzdh?=
 =?utf-8?B?ZFdEK1c3NWtkbGdZanhwaFI2cTNlYSt2Vm1kWGlSVHp4UVRqZENyR2lnSHBN?=
 =?utf-8?B?bFZsSEF5K0VtT25MT0pyWldsRnVTQUd5VHN6WHppWEpCb1hyTEFYdGVrMi9l?=
 =?utf-8?B?eGtBeVJsekllVW9XckZFaEpMUHV6VGxtc3lyU081ZWptdVFoWjZhb3FZV0xM?=
 =?utf-8?B?aWdYVkFGZjdUMytxNkNNZ3FRc3o0eUF6ellpRmJ2SXh0MDlhdGpCdHJyQjhy?=
 =?utf-8?B?SS84VE9RS2ZpYlA5dHJ0V3Z1eVdlQjZmSWdNMDFDTkp4ckpMTnpnYUFMS2g2?=
 =?utf-8?B?emVGbC8vQXZnVC8vOEF2dz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?emRBQm5SMGI5bjdyUXlHRGdDVFRaalRZa1JwUHE3eGZ6c011YzFDdFNzUTlr?=
 =?utf-8?B?dXBGeGJaSUl2RDdNZEIwS3VJK2w3WEJOdHh1TGxPcVZsaGdZdDdia0dZSUQr?=
 =?utf-8?B?UExNZE40OVJpTTNhU3BYZWJnY0g4ZkxnZ3hBOTJzczlteEo5Qm4za3BvMEJT?=
 =?utf-8?B?UVBUMDlFeS81SWRCMGp6Zm5YcmRNL0xCUWp0d2RLOXU1YnNVTDVRMDdISXlT?=
 =?utf-8?B?UGdWMk1acGxsR1JxNHRxSXA3S1ZTS1BDSlJjR21raFpWSmlYaHhJYkZuRm5U?=
 =?utf-8?B?c01jcFNPcWV2bVdqZVB2RFl6eGpFRGpjTE44NERqQ0dSUmJzKzFZMGxLMjdH?=
 =?utf-8?B?MDhRTkF0NHZjbmJqQjZpaVh3NE96TkZITmV5Z1VUdHJrOE5sTXU4ZFJqc3cr?=
 =?utf-8?B?YWZKaTh3eTJsV3IrcWdhNW1oa1hEM2tmOENDajg5Z1BiMXlMMllyYjNteURX?=
 =?utf-8?B?NFZEaWtsVXNqbWloajdSNUkyOUZXRHk0NmYyYW9DYVFiT1pyRy8vQ01iVHpQ?=
 =?utf-8?B?elo4ZjBvK0pRTHRIRVA4TFJJNGxnbEkycDUwbE94VHF5SXdhYkUwVC8rYU9x?=
 =?utf-8?B?MzdJamZKbEF1WXlvMW0rWFcxbzgrR0VZbC9NK0g3cGttOElmQzk1ZmJ0WnRy?=
 =?utf-8?B?b3VLMlJrckE5aWJpeXAvVDc2aXRBNTcvenA2ZHJzZ09EcTdkUE43ZGRIM3Er?=
 =?utf-8?B?bFUxRzQwZEJYcXVGdGpZci8xTVdDOVBEeUdmTHpBeHZJNjgrWTZXYVpxSTMw?=
 =?utf-8?B?MHFMeFJsMUpSWEFPRzYxVEJaeFhUTm9RWW9uRWNMVVVPMVR3Sys0NWl2eVdH?=
 =?utf-8?B?TWhuZ2ZtU2dRSGNsSFJBSTNoaWZ0WDlsVEtXOFVmU2xYV1g3ZEhuMUpjNlhj?=
 =?utf-8?B?M3M5elNBMWF4U0lTSGE2czVoZGRMUjZPaGRSMzk1b0NrWEdLeUpyVTkvcCtN?=
 =?utf-8?B?M3o0V3AySW5FOERvZ2ttOHFIdVUxZDVsc3RQYmE4STVwL3lkdlJ6dmgxUC9y?=
 =?utf-8?B?N1dOeElVdStRa3IxSVlOdGdzczRPNHEzQnZWc0NhcVA1RmpmZ04yVjQvOWdw?=
 =?utf-8?B?NGFaazQrUWQveEUybDc0QS9ZZVBEVGVCdTBjc0pydzB4Z3I0Nm95bWFXbGlh?=
 =?utf-8?B?d0tJV3RyQjh0NnhiSG1JR0JrWjczZ3ZZWDFxRXlqdFduVHpBQm9XYjZBUWNy?=
 =?utf-8?B?bHNsR2ZIaHlSSG5oVUlXSXFORzFtRlFJUHpxTWtLT1Q3cGRKZHphUFI1cGdx?=
 =?utf-8?B?RFpsTC83RGJwbGh3WUkxWS9mcnBWK1UzbmVZSk5GV0N1QUJISGsyKzhRR2Na?=
 =?utf-8?B?Sm1mT2ZpRXJtd3FvblZJUnF4SEJIUmdybjdsYmlaL09OV0NIUW85RVVwN0Ev?=
 =?utf-8?B?QTcwcUg5SlJpWDltR2dZNkwxbkoyTHoyYk9hQytuSThydVB1cmhuMjE3b0ZZ?=
 =?utf-8?B?a3RRVHBoMGtnMWFkdFNPd2R1bE9SUXpjRGdhZFFhcHhCV3VKby9CSFRpQnlU?=
 =?utf-8?B?ZHUyQVlHaC9aWnc5bmtWckplWDZXK2czUXJBM3pWQkdIRnE0NGFSZzRId2Rz?=
 =?utf-8?B?MWZtY0F1aUtSQU1uUUVRVmlBUk1qV2Z2Q0pkZTZqMTE0NE9pa3Q3UVlYVy9L?=
 =?utf-8?B?dWdHUWMvQjA1ZkZBdnZoNzFtdllRcnpLRVl4L0xDdWd3bDFDZnI2RUVTS3BT?=
 =?utf-8?B?VTZzbU9lZHpEbDNNRnMyQW5yZ0FJQXJsWXVHeHRwUEg3VHI1aXA4TjFlb2k0?=
 =?utf-8?B?dG5rdW5IUmRnNnlndGtQU2VhNXY0Y2ZDQUZ0VmdVMjNWd1N4Yy9VMitRRHFD?=
 =?utf-8?B?M2pxUHdaclEwdzB2Y0VaVE9sNTFRY25DMWxiN0pBUFlYRHZ4a1dpZEo2eU5o?=
 =?utf-8?B?Wkl0dUtvTmZZbElVSXZLeVRlL2xNeFFKbEZjbnpVMXphZzdkU1o3WktSaVBo?=
 =?utf-8?B?ZzJxczlwK3puT0tuQ0JVZzNjMDVkeGI3YkRaNnY1VGFnTHVBQUF4clByYm55?=
 =?utf-8?B?dG9GSUt0VDUzazhlOElDTWpwbForTUs3dmV6b1ptT29XMUZFNHo1eUV1UmJR?=
 =?utf-8?B?MWRZWnE1YVlLQ3oxZDNuK2N1emNUMmZXejFndngzajhVZnh3a1VWYVNnbEpl?=
 =?utf-8?B?dHN0VHZ6dm85SEIza2JjL3BHemN6MkJvS1h2bW1FWlVLL0E3QlNiOGEyZ0JW?=
 =?utf-8?Q?YUi7lE2xN3zrEIF+UnqEReo=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <444C24E50F6CE3469FD52EB2C6CF3E88@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 35df70c1-f61a-4014-211b-08dcdaf21655
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Sep 2024 10:34:07.0756 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yzOxh8v1nDJmbYIN5/tpgb4dxJc8WPzZ+UeIWbN4qhvoi9UyFc/ItjiAquyROqQh6/AAS0Glj/ykkgR+pMAyZkUpsTmbES0JAZ7LMxKPc9k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8048
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

T24gU3VuLCAyMDI0LTA5LTIyIGF0IDEyOjU0ICswMzAwLCBHb3ZpbmRhcGlsbGFpLCBWaW5vZCB3
cm90ZToNCj4gT24gTW9uLCAyMDI0LTA5LTE2IGF0IDE5OjI0ICswMzAwLCBWaWxsZSBTeXJqYWxh
IHdyb3RlOg0KPiA+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+DQo+ID4gDQo+ID4gaW50ZWxfd21fbmVlZF91cGRhdGUoKSBpcyBhIG1lc3Mgd2hl
biBpdCBjb21lcyB0byB2YXJpYWJsZQ0KPiA+IG5hbWVzIGFuZCBjb25zdG5lc3MuIFRoZSBjaGVj
a3MgYWxzbyBrZWVwIGFsdGVybmF0aW5nIHJhbmRvbWx5DQo+ID4gYmV0d2VlbiAnb2xkICE9IGN1
cicgdnMuICdjdXIgIT0gb2xkJy4gQ2xlYW4gaXQgYWxsIHVwLg0KPiA+IA0KPiA+IFNpZ25lZC1v
ZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+
ID4gLS0tDQo+ID4gwqAuLi4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5l
LmMgfCAyMCArKysrKysrKystLS0tLS0tLS0tDQo+ID4gwqAxIGZpbGUgY2hhbmdlZCwgMTAgaW5z
ZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pDQo+IA0KPiBSZXZpZXdlZC1ieTogVmlub2QgR292
aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5jb20+DQoNCkp1c3Qgbm90aWNl
ZCB0aGF0IHRoZSBuZXh0IHBhdGNoIGluIHRoaXMgc2VyaWVzIG51a2UgdGhpcyBpbnRlbF93bV9u
ZWVkX3VwZGF0ZSgpIGFuZCBtb3ZlIHRvDQppOXh4X3dtX25lZWRfdXBkYXRlKCkuIFNvIHdvbmRl
ciBpZiB3ZSBuZWVkIHRoaXMgcGF0Y2guDQoNCkFueXdheSwgYWxyZWFkeSBSQi1lZC4NCg0KQlIN
ClZpbm9kDQoNCj4gDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmMNCj4gPiBpbmRleCBiNWJiY2M3NzNlYzAuLjJh
ZWI0Y2Q1YjVhMSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2F0b21pY19wbGFuZS5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYw0KPiA+IEBAIC0zOTMsMjIgKzM5MywyMiBAQCB2b2lk
IGludGVsX3BsYW5lX3NldF9pbnZpc2libGUoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNf
c3RhdGUsDQo+ID4gwqB9DQo+ID4gwqANCj4gPiDCoC8qIEZJWE1FIG51a2Ugd2hlbiBhbGwgd20g
Y29kZSBpcyBhdG9taWMgKi8NCj4gPiAtc3RhdGljIGJvb2wgaW50ZWxfd21fbmVlZF91cGRhdGUo
Y29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpjdXIsDQo+ID4gLcKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBp
bnRlbF9wbGFuZV9zdGF0ZSAqbmV3KQ0KPiA+ICtzdGF0aWMgYm9vbCBpbnRlbF93bV9uZWVkX3Vw
ZGF0ZShjb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKm9sZF9wbGFuZV9zdGF0ZSwNCj4g
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpuZXdfcGxhbmVfc3RhdGUp
DQo+ID4gwqB7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoC8qIFVwZGF0ZSB3YXRlcm1hcmtzIG9uIHRp
bGluZyBvciBzaXplIGNoYW5nZXMuICovDQo+ID4gLcKgwqDCoMKgwqDCoMKgaWYgKG5ldy0+dWFw
aS52aXNpYmxlICE9IGN1ci0+dWFwaS52aXNpYmxlKQ0KPiA+ICvCoMKgwqDCoMKgwqDCoGlmIChv
bGRfcGxhbmVfc3RhdGUtPnVhcGkudmlzaWJsZSAhPSBuZXdfcGxhbmVfc3RhdGUtPnVhcGkudmlz
aWJsZSkNCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiB0cnVlOw0K
PiA+IMKgDQo+ID4gLcKgwqDCoMKgwqDCoMKgaWYgKCFjdXItPmh3LmZiIHx8ICFuZXctPmh3LmZi
KQ0KPiA+ICvCoMKgwqDCoMKgwqDCoGlmICghb2xkX3BsYW5lX3N0YXRlLT5ody5mYiB8fCAhbmV3
X3BsYW5lX3N0YXRlLT5ody5mYikNCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oHJldHVybiBmYWxzZTsNCj4gPiDCoA0KPiA+IC3CoMKgwqDCoMKgwqDCoGlmIChjdXItPmh3LmZi
LT5tb2RpZmllciAhPSBuZXctPmh3LmZiLT5tb2RpZmllciB8fA0KPiA+IC3CoMKgwqDCoMKgwqDC
oMKgwqDCoCBjdXItPmh3LnJvdGF0aW9uICE9IG5ldy0+aHcucm90YXRpb24gfHwNCj4gPiAtwqDC
oMKgwqDCoMKgwqDCoMKgwqAgZHJtX3JlY3Rfd2lkdGgoJm5ldy0+dWFwaS5zcmMpICE9IGRybV9y
ZWN0X3dpZHRoKCZjdXItPnVhcGkuc3JjKSB8fA0KPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoCBk
cm1fcmVjdF9oZWlnaHQoJm5ldy0+dWFwaS5zcmMpICE9IGRybV9yZWN0X2hlaWdodCgmY3VyLT51
YXBpLnNyYykgfHwNCj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqAgZHJtX3JlY3Rfd2lkdGgoJm5l
dy0+dWFwaS5kc3QpICE9IGRybV9yZWN0X3dpZHRoKCZjdXItPnVhcGkuZHN0KSB8fA0KPiA+IC3C
oMKgwqDCoMKgwqDCoMKgwqDCoCBkcm1fcmVjdF9oZWlnaHQoJm5ldy0+dWFwaS5kc3QpICE9IGRy
bV9yZWN0X2hlaWdodCgmY3VyLT51YXBpLmRzdCkpDQo+ID4gK8KgwqDCoMKgwqDCoMKgaWYgKG9s
ZF9wbGFuZV9zdGF0ZS0+aHcuZmItPm1vZGlmaWVyICE9IG5ld19wbGFuZV9zdGF0ZS0+aHcuZmIt
Pm1vZGlmaWVyIHx8DQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgIG9sZF9wbGFuZV9zdGF0ZS0+
aHcucm90YXRpb24gIT0gbmV3X3BsYW5lX3N0YXRlLT5ody5yb3RhdGlvbiB8fA0KPiA+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoCBkcm1fcmVjdF93aWR0aCgmb2xkX3BsYW5lX3N0YXRlLT51YXBpLnNy
YykgIT0gZHJtX3JlY3Rfd2lkdGgoJm5ld19wbGFuZV9zdGF0ZS0NCj4gPiA+IHVhcGkuc3JjKSB8
fA0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoCBkcm1fcmVjdF9oZWlnaHQoJm9sZF9wbGFuZV9z
dGF0ZS0+dWFwaS5zcmMpICE9IGRybV9yZWN0X2hlaWdodCgmbmV3X3BsYW5lX3N0YXRlLQ0KPiA+
ID4gdWFwaS5zcmMpIHx8DQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgIGRybV9yZWN0X3dpZHRo
KCZvbGRfcGxhbmVfc3RhdGUtPnVhcGkuZHN0KSAhPSBkcm1fcmVjdF93aWR0aCgmbmV3X3BsYW5l
X3N0YXRlLQ0KPiA+ID4gdWFwaS5kc3QpIHx8DQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgIGRy
bV9yZWN0X2hlaWdodCgmb2xkX3BsYW5lX3N0YXRlLT51YXBpLmRzdCkgIT0gZHJtX3JlY3RfaGVp
Z2h0KCZuZXdfcGxhbmVfc3RhdGUtDQo+ID4gPiB1YXBpLmRzdCkpDQo+ID4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gdHJ1ZTsNCj4gPiDCoA0KPiA+IMKgwqDCoMKgwqDC
oMKgwqByZXR1cm4gZmFsc2U7DQo+IA0KDQo=
