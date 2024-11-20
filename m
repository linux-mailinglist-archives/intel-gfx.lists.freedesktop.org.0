Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 697E39D3863
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 11:30:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39CBD10E3F4;
	Wed, 20 Nov 2024 10:30:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nvGhV9Fs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2271C10E3F4
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2024 10:30:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732098650; x=1763634650;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nMRCAlYvkNdkfPFAszDGCFZ+y4mDzOJ3lN0eE3pRlW0=;
 b=nvGhV9Fs6bGXd96VM4U0x7OvbLkPIxEan4KQCHwSdKOC2BeRoSdWctsv
 8nZroq239C6kXnY76bFFkPe0GkSbG+E0sihGAJg1eLh9bFWuGRczHynfS
 zF/Ocsfrs1Gb6oSa9xL8KXQPBJAcnpe/aSetYcOtRLPdz/V+fIWNQqr/9
 HtjAGUDQfcPiMkhNzlv/fIhilG7Kq++7qWTFfLJUGUstegJCt13XiSjhx
 CSU+SoBINnYmMfY0qfOE69JR2Am+1oHIU/t/6qqKI8tjd4FIWTl/yzs/j
 MvWKeTC/SE8NBnzB+XBNyw9k8T070uOE4POQ6jrOWlLp4BEaxVSuJg8iu Q==;
X-CSE-ConnectionGUID: jj3DrtHWRmWeNGkivLvYcQ==
X-CSE-MsgGUID: dT6ZX05LTgSC4MhRpJiKxg==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="31519510"
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="31519510"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 02:30:50 -0800
X-CSE-ConnectionGUID: 9ZneYJRUTWSKBg/EZNLJeg==
X-CSE-MsgGUID: Zx+sXKSiToG896bU4tnnzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="89673015"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Nov 2024 02:30:49 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 20 Nov 2024 02:30:48 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 20 Nov 2024 02:30:48 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 20 Nov 2024 02:30:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LwtBMkbbL79i1O5Cl8znUCvUDJ35RB7SIK3y5e42oyKjUZADrLxPqpjKjk9mF5XFjuirsdwhPcoZRQAvEIwEvOwyL5d92g0bZt+uCEAtE0VOr3nUJdHFDIrp5zM8pGf8YbHwcEUPe62cxrsfO+64FlSaQuPHrb/E8Suey26PHuXyG1EEK6a4kHA/lNIjOJ0WmRskrM0gxIzDM8AUwlSZeo58eOA2GSIpp0lnyyg4BjQYtoPhUlbNGFjKugDfE8U9MKivXESMByx7artWjbc0xioKZofYYS3683Oh1CMGUy+IqbJFsUsElGyyYTszM1Qm0CmevqKCfll+KEQM1fz5cA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nMRCAlYvkNdkfPFAszDGCFZ+y4mDzOJ3lN0eE3pRlW0=;
 b=DpHJWcV5s2yerw+/EQ3jAarP8GSE2+3YIAg10tmiuV0VKTXIaB9rJDy7snrCeJF/SxKCg7klDjPBNgmeQNc5foPLiGNg/x1ajgZnBbkthKA1XW5VHJ4+ArLIUYqI3D3gxDVO8QUbuNaKZXU4fU4bdeJmLSuocIHwFTfP31gZlcEQsYRLK0M3sib17oRmNAtiECYqmXfGs4OZpx4nyLJqZiGrHgLY+wpH7s7hWhwirqX3yeJ7WTQEWRQCOQjBVwASRHnr6Z6zmIdzO+gTZ8fOCRMQVWZb3U22BLoZ9Tp3ZIyxFM7e2yXE+6Scin8UBslTB6/zhuCPjuG7Hp5G9dpj/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by LV1PR11MB8844.namprd11.prod.outlook.com (2603:10b6:408:2b4::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.23; Wed, 20 Nov
 2024 10:30:44 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::df5a:a32c:8904:15f1]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::df5a:a32c:8904:15f1%4]) with mapi id 15.20.8158.021; Wed, 20 Nov 2024
 10:30:44 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Nilawar, Badal" <badal.nilawar@intel.com>, "Anirban, Sk"
 <sk.anirban@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Poosa, Karthik" <karthik.poosa@intel.com>, "Pottumuttu, Sai Teja"
 <sai.teja.pottumuttu@intel.com>
Subject: RE: [PATCH v6] drm/i915/selftests: Implement frequency logging for
 energy reading validation
Thread-Topic: [PATCH v6] drm/i915/selftests: Implement frequency logging for
 energy reading validation
Thread-Index: AQHbNbKHO/N6t8whC0yUCJHrb3AnTbK/3NEAgAAlFbA=
Date: Wed, 20 Nov 2024 10:30:43 +0000
Message-ID: <CY5PR11MB6211197718B2E2C6AD71C87A95212@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20241113095004.2441052-1-sk.anirban@intel.com>
 <1c2f4bf1-daa8-43bd-8870-304b2d7989e6@intel.com>
In-Reply-To: <1c2f4bf1-daa8-43bd-8870-304b2d7989e6@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6211:EE_|LV1PR11MB8844:EE_
x-ms-office365-filtering-correlation-id: ec0eef91-2f2d-415f-f259-08dd094e639c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?NThzL1RkMG1tc094UFhqZEhXT2kvejNpcUZPNHdGSnBtZE1ETGowTGRiM2lH?=
 =?utf-8?B?R1QxYXczcWorOGxXTzgrSmxDN0MvaklrZVQ1ci82R0RQdWNRMnk0dXpSSlo0?=
 =?utf-8?B?VjdFN3JlTHlEL0k0RmhSQ1dXR1g4TWZ5YWtqVTkxOXhlb1c1Z0dTUUJqTml3?=
 =?utf-8?B?OE1QRFR4RlQrYTN6SWx2V2NoallOWlhodi82WUpGZkZ4ZzhDYjR5cFdkWmZj?=
 =?utf-8?B?aTUxS2Y5dDhvVjg4QldBZGJpWS9FTlhXdXlsVkgwNERZbnA2TXdMdWcvT0Vx?=
 =?utf-8?B?akRsby96ZFBRMi9ZcWNNZHdaR25sTm1Eb0VzL1NydDJSRnc1UVlvYnpVM3Z2?=
 =?utf-8?B?RkhCcmxVR3dGT0R2eGJNdXdpVUxucldSZjU4cDllSnpvcjRIRysrQ0Y2WE0r?=
 =?utf-8?B?OXI5Y2FoYjk4a1FpcjluZlczZHNRNVlCMzNTODRsd1RKYy9kR1JBUUpWWGNa?=
 =?utf-8?B?WlFWSXcramx2MVdmLzV3Z0tWOElKSHo5aDloSDJDWWVIY2w3SDVwek0xODcv?=
 =?utf-8?B?Y3lZcUIvRnRsUG9aaDE1L2U2K2hpeFdMTGF1UnZDZmFIek43eWJ0NzE2Ukcy?=
 =?utf-8?B?ekFsRVdoOTRmSGlzSzA4TnVZSnlSMTh5cHNBZ29xcGIvWHQvSFJwZEhOS2FD?=
 =?utf-8?B?VEZQSlV4OEZ4Um9JRlk4QUIvODhkRWxLNnNwejlHcGQ4UWozUTdremtxUVpS?=
 =?utf-8?B?UjlXaTd5UEsxTjI3UHhLNXZvWEdZMGV3eEduQmVwbHdLQUdsejdsM2ZJa3JC?=
 =?utf-8?B?UTZWY0hKK1hoNTJ6MGs1TWd3OEVsMGh0b3dvVTdmTjk4VXRMdFVjbDJ4c0RB?=
 =?utf-8?B?OVNyUDlmNk9la2JLeFhrT3Ftc2Q2N1ZVWFlCS2F0NWxLbW5IM2RYZU1QOVRK?=
 =?utf-8?B?cWR3UnRzUmpzbHhjQms5aUF6dU5JSkJzZERISHU2NHNIcjMvcU1lc25IbnZY?=
 =?utf-8?B?WlE2T2JJK3hhNFhKNmk2em4zRlUzc1NqUHJJTmFDZUtRY2hMd0tOMDg4Mzls?=
 =?utf-8?B?UU5YMURhdGFFMGM2dzVNc2dzSGVLRU9KcllhcFlnbG9vWCtoSitvemk3clBm?=
 =?utf-8?B?d1RYY29QTDBQdEpXMVdMRG1TRlh3bmdWOVZobHI2ZjEvNGVreTdkTnZwbXNP?=
 =?utf-8?B?aWdZay80VkE0SDFTcW1XaFdLeXNNL0NXd3Z2UEV0RkRVVE4wd0o4QW9mMmVv?=
 =?utf-8?B?YmNmZnFWOGUvSnMxYk5kRkFOUm9oME9Fd2liTXVDUGVwWnlsWjlDY3VVRC90?=
 =?utf-8?B?dUpQcGN0RlhZLzlmOWpxb3d0U24yK210ZDVTNnZ1QmlFZE9WTlNJNVNnblll?=
 =?utf-8?B?YmlGVGJ4VjBOTWEzYi84eGYyYUZGWmVMOFNvQU92TzNSZ3pwVUd2OGhFbm9D?=
 =?utf-8?B?b1l6UnBxUEtHNnJ5bHJwV3djcWJXL0hrODNBMHZGS2I0TVludVRJdk1xN29G?=
 =?utf-8?B?dkoySE5wbjZ2VStQT3ZkRUhQbE1sM1lFb1dBNWlybnl1dE1LU0t4ZVQraHFn?=
 =?utf-8?B?Mmt2Q1hieGpLV3VILzE3UGUrQm8venJkY0NpOXVCcDA0RngwbE1OOEIyQUI4?=
 =?utf-8?B?eGNVaEhjV0x2eTFaR1EwNTRFclZpdTN1anpwOXFva1piODI4WTRWY1ppYjV0?=
 =?utf-8?B?KzlmMlM5TGlucy9NeHludC9xcnpobUxhK2hQTGw2ZnA4VHdicnhzempodGk3?=
 =?utf-8?B?ckV1dmNaYzU0UkF3TG1hb1I3OWIrMlJ1UGtueHRDUlJ1NnYvL3VtY1loR1Fs?=
 =?utf-8?B?RlJSQjcrVkkvMC9Cd0tXV2ZjWEZ3Nm1zUURsajMwODBUbmdnVzF0c0tWSy9j?=
 =?utf-8?Q?qwr3tRxD+9jbTdsm+g8DdlHdW++/esA5f1Xjc=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QS95Yk9WVkxVekwzbG1UckRFanZ3Ukw5YnBxL0o5MGtLWjdTaDd0UWoycHNu?=
 =?utf-8?B?RG5iTFJFbHZEZVNFSTFHbmR5UEZscG83OEtEUjkyWFZYM2hyZ0RSRUo3aEVW?=
 =?utf-8?B?S1NLSFBwaTIwbVJ6SnpzZUdiZERkM2RxMXE5VktHMzl2U1piOFBDLzJtTXNG?=
 =?utf-8?B?VWh0WnhFL1ZSTnhSeVpHYjRldVNteGlnNG5WUDBYeGsxUFREV0RJbFFqT1Nv?=
 =?utf-8?B?NksveHF1OXp4U3NNSldBVk5HWm1DNkZhT2Z0bWZtUVh3UlEyUk1zbzlNZGs4?=
 =?utf-8?B?TG5jZHBRMDJKaVc5VmloOFd4ZWN3T1BtcVJzaEdnVVBqQ1ZMak16T1ZTSlhF?=
 =?utf-8?B?QVNSQ3RoTUlwc09JYVlyM1BaS1Y4N3g5MmlzRVRqSmdHbXJLTXZXQTdZZW9k?=
 =?utf-8?B?dmxReWwzRWx2cXlBNnBCNmNLU24zQVJhMHBQd2IyUFRtVjNNajQ2ZUJ6ZUlC?=
 =?utf-8?B?WWNKWnZxbG1kdXZLUlhUbnVYVEduRjk3cHFEMlQxUU0zOXFFODlaZFVXMWNC?=
 =?utf-8?B?b2R3VG9RSk5DRFJKV3UxVzVLcklCcnd4Zm8xY0U0SFNDZklScm1BQzc1QjNL?=
 =?utf-8?B?TnR4dHdXbm5TazhheVA5TGxhditlbWVzeWlNYTJXdmhkdklZbE1sL1BsZTZR?=
 =?utf-8?B?T2orNnM3dW5haytiMExWRS9KWnA4YUFIMUZDaXRZZ2wrNnBhaDdtN1JsZkpU?=
 =?utf-8?B?ZlM2ZGpHd1FWOUNKdHBqWEYwdTQ1amFCMVhXM2JwZDJvT0VRejYyR2V6NXBh?=
 =?utf-8?B?MUJoUlZMckZDd1ZnSHhXSk50VnZCN09IWnlEUnVDV3I4cGd6VkMvNG5JNmR1?=
 =?utf-8?B?S3BPd05kK3JRd1FQMjU0NzhsQi95bG52ODc3MGZpcnZlZ1hBZkN5dFl3VlI3?=
 =?utf-8?B?U3lyMithTmoxYzlrVElqWG5IVVJOUEFjUW5WWUJsNGRCNjk0R0l6L0FWTGNr?=
 =?utf-8?B?VnRadFAyRTU5V2hyNkZQenc2ZmZBcFhXTG91dk1rem5XazJJRVZLa0FZb2Y4?=
 =?utf-8?B?Yk8wVlVzaGx5eVdpYTdSSUpHRUdOdzlnbkt1alM5dzF1aVF0Q05mSitadEpD?=
 =?utf-8?B?VXFoR1BTWkhEOERnaHJTVjFIVlRRcm1XNDVWbkpraG81Y1VVd0pDc1lPeUt1?=
 =?utf-8?B?MnZuUlpqRkZrMms3TllQUFpNMjlvTSsvZDFYREpOelR2UjZyQnBSTVc0c1B5?=
 =?utf-8?B?TEUyeURXNUhZSitzd3RNZTlRY2M5SEVaZmhkWlM3VlNEakp1aDdDSFh0RUts?=
 =?utf-8?B?RHl2ZDN4Y3lrUzBYV0VwL2V0ZHBNZE5nUUM2Y3l6Z1lTQjZpVUNYOEgyUUhK?=
 =?utf-8?B?dDNQWVBOWnpNY2hRQzh2REMySjhERHBjNTNhWVFQMGZJSHJ2QXRYaUhOWTNa?=
 =?utf-8?B?NC8vNjZRM2NlYzYva083enN1ZlR6andGektRbWhtbGhvb2Z3LzlUa3pwVlNw?=
 =?utf-8?B?ZFVkbXNxYXk4WkdjU0tLRWQ2bEhFTkdleHdzMGhyZ0MwRis0eTRJQkZNL3Bz?=
 =?utf-8?B?YVFvdzBhOHo2OUpUTHhBRU4xSWllZmVLeWx0K0Q3dDlXWStlanlRWnBTc2VD?=
 =?utf-8?B?cGpIckJ5Zi94ZkUwSmpxN1U1MmVBVmMwZEtDemQ5bkhnaGZEVmVxZlpxUHh5?=
 =?utf-8?B?OEx2cXVYc2E5bUs3OEU1MGVoUFFFVjNCQW9KVy9SOUhzN1V2WDJrZUMzODhm?=
 =?utf-8?B?amM4MDdnZDYvaGJYY3B5VGJmVms0Y0lWTjVGR3dtM2xTaVZXdUlYeTRHalpO?=
 =?utf-8?B?ODhNUm1Ib2JkaXE4VEliYXl3L0ZyRUt0S1orazVsNDcwVzgxb0FnZGJVU0Y4?=
 =?utf-8?B?TnN4dDRyK0hWMWVrUkJBbGN1REkzU29FdGZmVGdXNWh4UkNFRU9qTFFQMUE3?=
 =?utf-8?B?OWVtc3BvZW82dW14c3VTQ1FKT25yUEJmdk1FVkJHV2RsR0hpYUIvdklmbC9E?=
 =?utf-8?B?cTFvOHZMTU9uMHg4NnlEZHpqMlI4ckNxZUtPNXp5emE4dGh6aWtmbDFIQnNz?=
 =?utf-8?B?RlV0V0dteE1oMzQ5VjA2aWRoYVpkM05RK3ViUis2dHhJWWQ0Mm4xVEtQc2RE?=
 =?utf-8?B?UUtndHJ6STAvLzdPczdxK28wM0g0MVc2ZGx2TlJHY0RUbEFRRE5DelVMU1pJ?=
 =?utf-8?Q?3qXWlw1t8aG0D8q9PzRqDibEW?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ec0eef91-2f2d-415f-f259-08dd094e639c
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Nov 2024 10:30:43.9739 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OEFpOGVoyzgnk5iNr0a3XYcCljwzTE6ZLONK9ezAo2aYWjk9n5mgrH7Eah31bgDlL1yczlZngg7/OGa2IUVUkYTFTIctFrmOK1E56/VAcqQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV1PR11MB8844
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTmlsYXdhciwgQmFkYWwg
PGJhZGFsLm5pbGF3YXJAaW50ZWwuY29tPg0KPiBTZW50OiBXZWRuZXNkYXksIE5vdmVtYmVyIDIw
LCAyMDI0IDE6NDQgUE0NCj4gVG86IEFuaXJiYW4sIFNrIDxzay5hbmlyYmFuQGludGVsLmNvbT47
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IEd1cHRhLCBBbnNodW1hbiA8
YW5zaHVtYW4uZ3VwdGFAaW50ZWwuY29tPjsgUG9vc2EsIEthcnRoaWsNCj4gPGthcnRoaWsucG9v
c2FAaW50ZWwuY29tPjsgUG90dHVtdXR0dSwgU2FpIFRlamENCj4gPHNhaS50ZWphLnBvdHR1bXV0
dHVAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENIIHY2XSBkcm0vaTkxNS9zZWxmdGVz
dHM6IEltcGxlbWVudCBmcmVxdWVuY3kgbG9nZ2luZyBmb3INCj4gZW5lcmd5IHJlYWRpbmcgdmFs
aWRhdGlvbg0KPiANCj4gDQo+IA0KPiBPbiAxMy0xMS0yMDI0IDE1OjIwLCBTayBBbmlyYmFuIHdy
b3RlOg0KPiA+IEludHJvZHVjZSBSQzYgJiBSQzAgZnJlcXVlbmN5IGxvZ2dpbmcgbWVjaGFuaXNt
IHRvIGVuc3VyZSBhY2N1cmF0ZQ0KPiA+IGVuZXJneSByZWFkaW5ncyBhaW1lZCBhdCBhZGRyZXNz
aW5nIEdQVSBlbmVyZ3kgbGVha3MgYW5kIHBvd2VyDQo+ID4gbWVhc3VyZW1lbnQgZmFpbHVyZXMu
DQo+ID4gVGhpcyBlbmhhbmNlbWVudCB3aWxsIGhlbHAgZW5zdXJlIHRoZSBhY2N1cmFjeSBvZiBl
bmVyZ3kgcmVhZGluZ3MuDQo+ID4NCj4gPiB2MjoNCj4gPiAgICAtIEltcHJvdmVkIGNvbW1pdCBt
ZXNzYWdlLg0KPiA+IHYzOg0KPiA+ICAgIC0gVXNlZCBwcl9lcnIgbG9nIHRvIGRpc3BsYXkgZnJl
cXVlbmN5IChBbnNodW1hbikNCj4gPiAgICAtIFNvcnRlZCBoZWFkZXJzIGFscGhhYmV0aWNhbGx5
IChTYWkgVGVqYSkNCj4gPiB2NDoNCj4gPiAgICAtIEltcHJvdmVkIGNvbW1pdCBtZXNzYWdlLg0K
PiA+ICAgIC0gRml4IHByX2VyciBsb2cgKFNhaSBUZWphKQ0KPiA+IHY1Og0KPiA+ICAgIC0gQWRk
IGVycm9yICYgZGVidWcgbG9nZ2luZyBmb3IgUkMwIHBvd2VyIGFuZCBmcmVxdWVuY3kgY2hlY2tz
DQo+ID4gKEFuc2h1bWFuKQ0KPiA+IHY2Og0KPiA+ICAgIC0gTW9kaWZ5IGRlYnVnIGxvZ2dpbmcg
Zm9yIFJDMCBwb3dlciBhbmQgZnJlcXVlbmN5IGNoZWNrcyAoU2FpDQo+ID4gVGVqYSkNCj4gPg0K
PiA+IFNpZ25lZC1vZmYtYnk6IFNrIEFuaXJiYW4gPHNrLmFuaXJiYW5AaW50ZWwuY29tPg0KPiA+
IFJldmlld2VkLWJ5OiBTYWkgVGVqYSBQb3R0dW11dHR1IDxzYWkudGVqYS5wb3R0dW11dHR1QGlu
dGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0
X3JjNi5jIHwgMTUgKysrKysrKysrKysrKy0tDQo+ID4gICAxIGZpbGUgY2hhbmdlZCwgMTMgaW5z
ZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9yYzYuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3Qvc2VsZnRlc3RfcmM2LmMNCj4gPiBpbmRleCAxYWExNDQ2YzhmYjAuLmE4Nzc2Zjg4ZDZh
MSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9yYzYu
Yw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3JjNi5jDQo+ID4g
QEAgLTgsNiArOCw3IEBADQo+ID4gICAjaW5jbHVkZSAiaW50ZWxfZ3B1X2NvbW1hbmRzLmgiDQo+
ID4gICAjaW5jbHVkZSAiaW50ZWxfZ3RfcmVxdWVzdHMuaCINCj4gPiAgICNpbmNsdWRlICJpbnRl
bF9yaW5nLmgiDQo+ID4gKyNpbmNsdWRlICJpbnRlbF9ycHMuaCINCj4gPiAgICNpbmNsdWRlICJz
ZWxmdGVzdF9yYzYuaCINCj4gPg0KPiA+ICAgI2luY2x1ZGUgInNlbGZ0ZXN0cy9pOTE1X3JhbmRv
bS5oIg0KPiA+IEBAIC0zOCw2ICszOSw5IEBAIGludCBsaXZlX3JjNl9tYW51YWwodm9pZCAqYXJn
KQ0KPiA+ICAgCWt0aW1lX3QgZHQ7DQo+ID4gICAJdTY0IHJlc1syXTsNCj4gPiAgIAlpbnQgZXJy
ID0gMDsNCj4gPiArCXUzMiByYzBfZnJlcSA9IDA7DQo+ID4gKwl1MzIgcmM2X2ZyZXEgPSAwOw0K
PiA+ICsJc3RydWN0IGludGVsX3JwcyAqcnBzID0gJmd0LT5ycHM7DQo+ID4NCj4gPiAgIAkvKg0K
PiA+ICAgCSAqIE91ciBjbGFpbSBpcyB0aGF0IHdlIGNhbiAiZW5jb3VyYWdlIiB0aGUgR1BVIHRv
IGVudGVyIHJjNiBhdCB3aWxsLg0KPiA+IEBAIC02Niw2ICs3MCw3IEBAIGludCBsaXZlX3JjNl9t
YW51YWwodm9pZCAqYXJnKQ0KPiA+ICAgCXJjMF9wb3dlciA9IGxpYnJhcGxfZW5lcmd5X3VKKCkg
LSByYzBfcG93ZXI7DQo+ID4gICAJZHQgPSBrdGltZV9zdWIoa3RpbWVfZ2V0KCksIGR0KTsNCj4g
PiAgIAlyZXNbMV0gPSByYzZfcmVzaWRlbmN5KHJjNik7DQo+ID4gKwlyYzBfZnJlcSA9IGludGVs
X3Jwc19yZWFkX2FjdHVhbF9mcmVxdWVuY3kocnBzKTsNCj4gPiAgIAlpZiAoKHJlc1sxXSAtIHJl
c1swXSkgPj4gMTApIHsNCj4gPiAgIAkJcHJfZXJyKCJSQzYgcmVzaWRlbmN5IGluY3JlYXNlZCBi
eSAlbGxkdXMgd2hpbGUgZGlzYWJsZWQgZm9yDQo+IDEwMDBtcyFcbiIsDQo+ID4gICAJCSAgICAg
ICAocmVzWzFdIC0gcmVzWzBdKSA+PiAxMCk7DQo+ID4gQEAgLTc3LDcgKzgyLDExIEBAIGludCBs
aXZlX3JjNl9tYW51YWwodm9pZCAqYXJnKQ0KPiA+ICAgCQlyYzBfcG93ZXIgPSBkaXY2NF91NjQo
TlNFQ19QRVJfU0VDICogcmMwX3Bvd2VyLA0KPiA+ICAgCQkJCSAgICAgIGt0aW1lX3RvX25zKGR0
KSk7DQo+ID4gICAJCWlmICghcmMwX3Bvd2VyKSB7DQo+ID4gLQkJCXByX2VycigiTm8gcG93ZXIg
bWVhc3VyZWQgd2hpbGUgaW4gUkMwXG4iKTsNCj4gPiArCQkJaWYgKHJjMF9mcmVxKQ0KPiA+ICsJ
CQkJcHJfZXJyKCJObyBwb3dlciBtZWFzdXJlZCB3aGlsZSBpbiBSQzAhDQo+IEdQVSBGcmVxOiAl
dSBpbiBSQzBcbiIsDQo+ID4gKwkJCQkgICAgICAgcmMwX2ZyZXEpOw0KSWYgcmMwIGZyZXF1ZW5j
eSBpcyB0aGVyZSB0aGVuLCB0aGlzIGhhcyB0byBiZSBwcl9kYmcsIG90aGVyd2lzZSB3aGF0IGlz
IHRoZSBwdXJwb3NlIG9mIHRoaXMgcGF0Y2guDQo+ID4gKwkJCWVsc2UNCj4gPiArCQkJCXByX2Vy
cigiTm8gcG93ZXIgYW5kIGZyZXEgbWVhc3VyZWQgd2hpbGUgaW4NCj4gUkMwXG4iKTsNCj4gPiAg
IAkJCWVyciA9IC1FSU5WQUw7DQo+ID4gICAJCQlnb3RvIG91dF91bmxvY2s7DQo+ID4gICAJCX0N
Cj4gPiBAQCAtOTEsNiArMTAwLDcgQEAgaW50IGxpdmVfcmM2X21hbnVhbCh2b2lkICphcmcpDQo+
ID4gICAJZHQgPSBrdGltZV9nZXQoKTsNCj4gPiAgIAlyYzZfcG93ZXIgPSBsaWJyYXBsX2VuZXJn
eV91SigpOw0KPiA+ICAgCW1zbGVlcCgxMDApOw0KPiA+ICsJcmM2X2ZyZXEgPSBpbnRlbF9ycHNf
cmVhZF9hY3R1YWxfZnJlcXVlbmN5KHJwcyk7DQo+IA0KPiBJIHRoaW5rIGludGVudGlvbiBvZiBy
ZWFkaW5nIGZyZXF1ZW5jeSBoZXJlIGlzIHRvIGtub3cgaWYgZGV2aWNlIHdhcyBub3QgaW4gUkM2
DQo+IHdoZW4gdGhlcmUgaXMgZmFpbHVyZS4gQnV0IGZvciB0aGUgcGxhdGZvcm1zIGJlbG93IGdl
bjEyIHJlYWRpbmcgYWN0IGZyZXF1ZW5jeQ0KPiB3aWxsIGNhdXNlIGd0IHdha2UgYXMgR0VONl9S
UFNUQVQgcmVnIHJlcXVpcmVzIGZvcmNld2FrZS4NCj4gVG8gYXZvaWQgd2FrZSB3aGVuIGRldmlj
ZSBpcyBpbiBSQzYgcmVhZCBhY3R1YWwgZnJlcXVlbmN5IHdpdGhvdXQgYXBwbHlpbmcNCj4gZm9y
Y2V3YWtlLg0KSWYgcmVhZGluZyBhY3RfZnJlcSB3aWxsIHdha2UgdGhlIGRldmljZSwgSG93IHRv
IHJlYWQgZnJlcXVlbmN5IHdpdGhvdXQgZm9yY2V3YWtlIHRoZW4gPw0KDQpUaGFua3MsDQpBbnNo
dWFtYW4NCj4gDQo+IEFkZGl0aW9uYWxseSBhZGQgZGVsYXksIG1heSBiZSBkZWxheSBvZiAxIHNl
Y29uZHMgYWZ0ZXIgcmUtZW5hYmxpbmcgUkM2DQo+IG1hbnVhbGx5IGFuZCBmb3JjZXdha2UgZmx1
c2guDQo+IA0KPiBSZWdhcmRzLA0KPiBCYWRhbA0KPiANCj4gPiAgIAlyYzZfcG93ZXIgPSBsaWJy
YXBsX2VuZXJneV91SigpIC0gcmM2X3Bvd2VyOw0KPiA+ICAgCWR0ID0ga3RpbWVfc3ViKGt0aW1l
X2dldCgpLCBkdCk7DQo+ID4gICAJcmVzWzFdID0gcmM2X3Jlc2lkZW5jeShyYzYpOw0KPiA+IEBA
IC0xMDgsNyArMTE4LDggQEAgaW50IGxpdmVfcmM2X21hbnVhbCh2b2lkICphcmcpDQo+ID4gICAJ
CXByX2luZm8oIkdQVSBjb25zdW1lZCAlbGxkdVcgaW4gUkMwIGFuZCAlbGxkdVcgaW4NCj4gUkM2
XG4iLA0KPiA+ICAgCQkJcmMwX3Bvd2VyLCByYzZfcG93ZXIpOw0KPiA+ICAgCQlpZiAoMiAqIHJj
Nl9wb3dlciA+IHJjMF9wb3dlcikgew0KPiA+IC0JCQlwcl9lcnIoIkdQVSBsZWFrZWQgZW5lcmd5
IHdoaWxlIGluIFJDNiFcbiIpOw0KPiA+ICsJCQlwcl9lcnIoIkdQVSBsZWFrZWQgZW5lcmd5IHdo
aWxlIGluIFJDNiEgR1BVIEZyZXE6DQo+ICV1IGluIFJDNiBhbmQgJXUgaW4gUkMwXG4iLA0KPiA+
ICsJCQkgICAgICAgcmM2X2ZyZXEsIHJjMF9mcmVxKTsNCj4gPiAgIAkJCWVyciA9IC1FSU5WQUw7
DQo+ID4gICAJCQlnb3RvIG91dF91bmxvY2s7DQo+ID4gICAJCX0NCg0K
