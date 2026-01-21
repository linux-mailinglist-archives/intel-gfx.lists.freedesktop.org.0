Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YNJcG2JKcWn2fgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 22:51:30 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A52105E4E1
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 22:51:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A66510E1EB;
	Wed, 21 Jan 2026 21:51:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MJ/BCq4K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D90A10E1EB
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jan 2026 21:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769032287; x=1800568287;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uZ3N1kAeo4awuhB8Z2b0KPUXf5Gd83nkWJ/EHgeXrdw=;
 b=MJ/BCq4K68FnKLJMUZW+n1nxf+r1zgi7q0wL9FpE4S6+aBmZt5/LkRBW
 GYOToKiq/lX917YmJp2DgOZOOKBI1Ap0eqsbrze6BSDc5iaCCC7EUTA0M
 qonMqijvUr68I7LkmXCFJQq20GaGvqZqTcsKZjbTE/UEFQy2FU6Vsc6rc
 1cdxY58vADuHQrt6RLe+ZnrrWLKaGV7oKGS8+BeeVYckgfP0MDWsqY25u
 r9d2BPxj6nlM01geFD9OvpObEUWKjTP1NTg6wgCkt3JukwLOsDA7VOd5M
 Y4zQgCxuXhYSHfcJN6HYwaSZFWMFF/MwGfR+I5mI9lh6ng0kz6MUAcpXb g==;
X-CSE-ConnectionGUID: y+AvlhEBQomN/KppIo2h2g==
X-CSE-MsgGUID: l8fGcGHtQGKdjHy87h8TQQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11678"; a="92933611"
X-IronPort-AV: E=Sophos;i="6.21,244,1763452800"; d="scan'208";a="92933611"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 13:51:27 -0800
X-CSE-ConnectionGUID: wJIwR8aQRo6IZAjUU6iUNw==
X-CSE-MsgGUID: /eNffWOXQ4WQK060nzYoWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,244,1763452800"; d="scan'208";a="237223528"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 13:51:27 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 21 Jan 2026 13:51:25 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 21 Jan 2026 13:51:25 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.64) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 21 Jan 2026 13:51:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XW3RDQnvYABOZU6V8OgxcFf6063swOaUltI5mZhiCBKQJZK8W7qCUTKlZKGQcBdpvj7oGR3xxe7STxEdi939ZUhnSb8JD0aLLD7Mio7wLbfaalXkY01LHDsKLz9ExE+EKOtVH50F6jboPSL4HnDLovdDXpRx76vz0vTvaoUCe1l7mOgwBjQL+R5ggLSJibwDv2r7nilur0OC/B8uFJtKzpMIScaZvhiL0LW8e8wj5PqrhioCqoCcCLIte2daeGT+S0L3pVHBLOW5ZY9QMjM3eOFdL4dTwq5pbWzxweanH5Kd3t/NVbNMn24StL1AdvR6rXgO16Znx9t+oI1vv/u6dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FfT1dCWSxwk23xGwpp0Bkv/ar7UScgtONY3KRPsquM8=;
 b=tz0/2S87PHdZwDG7BEdBq3HMyxrperQLHGjeKiYycJvnnq9cXQrbdKXXNKEdSdoGlDwDDxlxmN9WQyEHyGZLvr+3q+j5lT1qzbASxzBbadLO5tZJVb0dCqaF9DNqBcwWh9FFvtkdE7+sh71DoEvgtYtA7zVQ20zjYZGpOdBbfom8NMXEXknWZDVHcwZ3lziumqUupCzKKS/W/k6ZLC54Voj4aOIREDoB1IRkDlusqihj0v0Rlg4ShcE5qk2udziJ534FnJhOnVUv0+Jymxo+vuGB0LLS4bnDdyIWKDJ98+L6pfT9Y4YP79Z/GKIh67GoBvMSKPi24DV3ZosW6t5IPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB8040.namprd11.prod.outlook.com (2603:10b6:510:238::11)
 by CO1PR11MB4771.namprd11.prod.outlook.com (2603:10b6:303:9f::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.9; Wed, 21 Jan
 2026 21:51:22 +0000
Received: from PH8PR11MB8040.namprd11.prod.outlook.com
 ([fe80::89bf:2274:1371:50c5]) by PH8PR11MB8040.namprd11.prod.outlook.com
 ([fe80::89bf:2274:1371:50c5%7]) with mapi id 15.20.9542.009; Wed, 21 Jan 2026
 21:51:22 +0000
From: "Yao, Jia" <jia.yao@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Zuo, Alex" <alex.zuo@intel.com>, "Lin, Shuicheng"
 <shuicheng.lin@intel.com>, Askar Safin <safinaskar@gmail.com>, Pingfan Liu
 <piliu@redhat.com>, Chris Wilson <chris.p.wilson@linux.intel.com>
Subject: RE: [PATCH v3] drm/i915: Clearing the Memory Space Enable bit when
 disabling i915
Thread-Topic: [PATCH v3] drm/i915: Clearing the Memory Space Enable bit when
 disabling i915
Thread-Index: AQHciccr+0z7mMoL/06HUZZPCD+/ibVa0O2AgAIkgvA=
Date: Wed, 21 Jan 2026 21:51:21 +0000
Message-ID: <PH8PR11MB80406A23468861FC3354F162F496A@PH8PR11MB8040.namprd11.prod.outlook.com>
References: <20251007180634.912006-1-jia.yao@intel.com>
 <20260120044203.2436044-1-jia.yao@intel.com>
 <7098d45cb853f44707c376a8cbad123daf963cb9@intel.com>
In-Reply-To: <7098d45cb853f44707c376a8cbad123daf963cb9@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB8040:EE_|CO1PR11MB4771:EE_
x-ms-office365-filtering-correlation-id: fd3d9eb9-1e35-4adb-e181-08de59373753
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|42112799006|1800799024|366016|38070700021; 
x-microsoft-antispam-message-info: =?iso-2022-jp?B?UlM2dnVaMGxPR3Q0QkZKMWcxQUJrQTA4S0d5V1EzRXNtWFBXU0N6NnJ0?=
 =?iso-2022-jp?B?eGVWekZhQWFNZzZ5OUMydWx0SldsMUhkMWZKNHZKWDJlOTFjbjB6Rlhm?=
 =?iso-2022-jp?B?NnFQbWJ0S1hnKzcxWktpWUN6dGJ1YWVyVklqTWRWM1NjL2ZSK0lwWE5y?=
 =?iso-2022-jp?B?cnBOcU12bEpEZ0haTEhKTC9CTGVnU1MxY3pCR1lwNW5aWXZMRHRtQyts?=
 =?iso-2022-jp?B?UDRuekNrMzUxWUJRbWJLQkJZZGw3eFRSTTFoWlA4Z015SnVxVkdoajJx?=
 =?iso-2022-jp?B?TnJkQmZMUWxWcStBdUhGNWpwNkV1VWNvZTJUK3NBOHp6c3JTaHV1NDJk?=
 =?iso-2022-jp?B?MmNzd3IyZjNzWW9rTFJ4b0xEMjJDWm92TUtwMDJsM0M4M2syckVBRVdv?=
 =?iso-2022-jp?B?d3NPNjV1QjZzVENQOUYvVndNb0kzd3RrZkQzNnRveGJXM25mOTluNTdE?=
 =?iso-2022-jp?B?aG1haUhZcEdiTXA1NlVxRWh4bmNmY0pSc2NWb1FBTWY3TUdBdXhKOVRn?=
 =?iso-2022-jp?B?T3ZueS9EL2MxeFZNb28zYVEvUC9oeWc0WWZNbGk1bHg4TGU5MzltL2pt?=
 =?iso-2022-jp?B?Tk1DQXBPYjJTUk42Z3VqdXdPQ1Y3SjhLMVQ4cEJtZGl3K3FMa1VSTmRn?=
 =?iso-2022-jp?B?c1ZhUFdubldHTEQ4WEZZTU8xUDcyYXg0SUVuUmJUYTE2blVVYmltZUFV?=
 =?iso-2022-jp?B?bTlnZWFsNk9RdnAzcFU4OFJlU2Q4ODF0U2FUdHBsUUFXSmZ4eFpMQ0ND?=
 =?iso-2022-jp?B?L2YwNVl0MjVzY1NaekJscjRxYzN1b0hQOStlYy9UbUE3ZGU1bjNFaHlF?=
 =?iso-2022-jp?B?OW5tV00vMWxXaDdEKzVJSVAzeGIycGNpSE90Ym45a2dUWVNPa3c4RzJm?=
 =?iso-2022-jp?B?WW1RUzh4RHFVVEN4UDJycStrQ1FZS2dOWEpLcnRUU1dRVGhaQ2tsQkt0?=
 =?iso-2022-jp?B?eHhPVXhOOEhaVnlUMmI3SkQ1OW1NY3hDSnBTVTBRR3Q4WE1LYXk2MzlK?=
 =?iso-2022-jp?B?bnJ5cE5UbTRKMGk1L2pVTTNpTHphd3Y2Yk9BNWdWRE1YbitkcEE4N01K?=
 =?iso-2022-jp?B?WHVRbGNrUnZUdWM4SWV5RGZia1hSdUtFZFcxakoxZlNOMGZ4SEx6clli?=
 =?iso-2022-jp?B?TDRvQkQ2MHV1ajJvY1ZkekxhblNVaXd2R0t3dkRkV1pDQzRERnRxTkt0?=
 =?iso-2022-jp?B?L1FZd2xzcTFIQXh1ZGhSbWFTMlJKTXlyb2oreFlDYnEwMUFCQXVmTGdy?=
 =?iso-2022-jp?B?aUU4YVNPQUU4ejV0bU4wZ1dzcGZoZERHNnRlbUQrVktOdFJ2ZUtSVWU1?=
 =?iso-2022-jp?B?WTZEc3VqYVp0Wm5XdjQxOHZiWENOenJrMGVQQWZpbjkxak83ZDJLVzFE?=
 =?iso-2022-jp?B?QWFNVnErL3hFN3FNdk5NZHBUdWRsdWNKVG0veWphMnByVUQxYWdmTE9R?=
 =?iso-2022-jp?B?dzA1S3cwNldObnFReVBWT1lNY1FMeThXNm5EcVYwcHBZbThka0FFVGRB?=
 =?iso-2022-jp?B?czBGYXpWWjJSYnZ6Q3hqK0wxUVQrRUdlUk9FRDdCSUd6QVpqcmYzTm05?=
 =?iso-2022-jp?B?cDVHc203VDJjQWhSRFBVbnJGS3pqcExvaTZCNGVrdlRKSWVzMUtlSkRD?=
 =?iso-2022-jp?B?ZWF5YVdWOGhnV0svMC8vOTFBVlB3dDJnM2tOM1pBMWk0bnFOTzk5UHc1?=
 =?iso-2022-jp?B?eWZwaVRiaERtUGtsUUcvU1Nja3M3azBlbnp4QlNIVW1lVUFkM0MvVzF0?=
 =?iso-2022-jp?B?SzNGWDVBQ1kxK0N1ekxZK3pBL1h2a1Y0T2RXMCtXQk44TXZ4WGVnOGMx?=
 =?iso-2022-jp?B?R280UUlIa3BraGY0OGhpY1JORk9kUEw2SFZxd1N5MWdjbFJmUmRTR1pQ?=
 =?iso-2022-jp?B?Q3JzR2ZxeDNkZEZLTVQxTkFQNG5JOFlRVy9nUlBJSGU0UjdwMXMwSjZS?=
 =?iso-2022-jp?B?THV2Q015TVdES3JETVMrYmhuY3kzaEhvN0UwdFYxaDQ3N3ovWGt4amt1?=
 =?iso-2022-jp?B?elN6dDZ5SXhFWHJyZUdtaGFxazZGejhWbTZvNXZsNnlOSHdDU0VhNFZL?=
 =?iso-2022-jp?B?UU5qWTVRZ2NxRllSUXdBOVlhcU4yWDhxR28yczV4NmZFbW9JM3YzRGdz?=
 =?iso-2022-jp?B?Vmk2bkw0enhERWx3dEl6K2Q5L3NDYVhXaUtSUjdvV0JEZ1JVdDMyT3JJ?=
 =?iso-2022-jp?B?MVQ0S3Ivd1hnSmVMS2dIamg5V2hoQU1QaWRJQ0RxZVJkRHNuS1BlSlk4?=
 =?iso-2022-jp?B?SVdSb1phN254ZVB5V2l1OU5qdFBWWmY0bHJJTW1NQmlSSjBqei9WVjRM?=
 =?iso-2022-jp?B?ZmxEWTRUSmRQZXpqUllxaU9oZy9jYjZlVGF3UVFGVnQrM2RudEdMQ2Rz?=
 =?iso-2022-jp?B?eDhZY009?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:ja; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8040.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(42112799006)(1800799024)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-2022-jp?B?amd2QUJkN2pXbEtuNjRpWkJpY2ZUWVkyWmdHYVhnaWFPUFpUOTREVjdj?=
 =?iso-2022-jp?B?QjJQbTRYeURUaURmUjRpajdoWmFZenFVSVRPMmNFS1hwTlJFbzE0QUMv?=
 =?iso-2022-jp?B?d04veWZ0RlhoTVZXUm9NYmZqQ0xLcXlUbDN0OWtsWHRLWXNJdkNEd00z?=
 =?iso-2022-jp?B?NGVrbzMwNE4zZmxlU29pSFhxbUhpdnVBQlBWbHJVTnBhODQ2eEc4d0tI?=
 =?iso-2022-jp?B?UEIzWm15aVV6dDdERmYxdTg4Tjg0SlNSMENYVkZWTWpKQitLQ0ZpN09D?=
 =?iso-2022-jp?B?QzdNUzE5V0g3aFdSVDUweC93cGNQSUU3dmxMVnBuOEloY1p1ZGZLcENK?=
 =?iso-2022-jp?B?Qkt0c3ptUTB1ZDlsNU9RaWFXUE9MbERlWHlUVnZ6N3JmbE00MDh2OTE3?=
 =?iso-2022-jp?B?OENYN2g4RVJGZUc1eVp4aEZwdEFaR3JvcGxGcXRsWW9jbTVDcHA5N0xP?=
 =?iso-2022-jp?B?dFp2UE1oSTRnbXh2VWRsUytqRmQ4dCtpZHZRRnZMY2RMLytVaHRodnhH?=
 =?iso-2022-jp?B?MXkrekg3VzZocmlJUmFUam5aM245S3luQWZWRUtNeXM1UDJDMDFPa2Fs?=
 =?iso-2022-jp?B?WVpmcVZsQmlDODRQcklLa3ZBdGpXZlArVzNhazljYkc5Qk1WZzAzNklk?=
 =?iso-2022-jp?B?ekxLdzRyNlM1SnJONkIxbjFIK2pvb291L0hBUkp3Z2VPK3dwaDE2cTE5?=
 =?iso-2022-jp?B?T1dQRHRKSDFVSDYvMkczaVR0bnhKQ0hnSzVlRThrWlM2SGh5UW1aT3N5?=
 =?iso-2022-jp?B?bXNxUjBHUUlSTmZiOFNXVFpDcXp1SXRQV3B6L3Y2NVJKeWRtUkNTdGxa?=
 =?iso-2022-jp?B?a3VPQSs4dXB0NWdYYzlLOWtFY3V2eU9wQVU3MEozcjJyV1hzOVZ0UTBi?=
 =?iso-2022-jp?B?TUUrMU44UnFGV1lpckdxRlZCdWp0SnQyNDdMRkwwSUdvZmE1MGNINTBz?=
 =?iso-2022-jp?B?SlZWdkhSTW50NDVHUG15YWhGT0VxNFFNMVE5ZGNWaHRuNTloTGU5UTE1?=
 =?iso-2022-jp?B?bkVpcHNOdjRSUndDQ3p4OEVqcnF5V2pNRVkrS1JxQlo0YWkxU01QUmt3?=
 =?iso-2022-jp?B?YUZ5TjJLL0R6VnlJdFBDWFV4UUxnQ2F5TUMxZ3ZhN2twazVaUThXRlNo?=
 =?iso-2022-jp?B?RDdyZFgrSFJxOUQ4SjZDZFBZVGlUbnB3bk54bEJ4bEJYM0tMK29BaTFM?=
 =?iso-2022-jp?B?VlZIVGN6YUwzV0VvdVU0TnFiT2hhbjVlYUJuV3MrR0l2bWRHN1ZCM0Zv?=
 =?iso-2022-jp?B?T3FUVUxkU0lJRkVESm1RemE3aDVUSUVXanZDVG9BN0dkYzVrQkFJRGNx?=
 =?iso-2022-jp?B?azFSeWd5R2l3bWVuejNuNWJ4RFJsNXdIL3g0TklRWHJDSHZVSVZ2K2Yy?=
 =?iso-2022-jp?B?YWtFY0x4MGRDVmZrRXFDQW9Wbm43Y2tDaktXMG8wWnVCWlFKSEwvRmlS?=
 =?iso-2022-jp?B?Q1h0QnV4WSt3NkJYNVRyY0NlL3RWTit2NHFoYVdiaFdFQkJHZUswdHJB?=
 =?iso-2022-jp?B?MkUxRVRVL3VRSEFVWmFrc3ZsR0k3UVJaNXF6dnFtSVZXcnlab1ZkRXpr?=
 =?iso-2022-jp?B?b2JLU0NWamNMdHAzM0Z2c2F6TCtnUVFnZFpJVWtvdmtxKzIyYWlLK1o3?=
 =?iso-2022-jp?B?czJPL2VRemZjbWN6ZU4xWGNHZXhhNWNtbE0ydkJQa2ZjZFdMcmNPVTc2?=
 =?iso-2022-jp?B?YUtFQlpUd0ZIMUNVUVgrbW4raEV3cVY0TUtFZytrOVJLNXo1OENmRTY4?=
 =?iso-2022-jp?B?RWhudDl2V1p1OTZaWDl0UG1HUndnMFN4UXlVdVpFZ0RaUUZUTFBBSWJn?=
 =?iso-2022-jp?B?dEZJT0dCTlNuUGUxdHJCc2NFa2daL3JYWmFxbkFJMDcvWTNjVTFMTUZ5?=
 =?iso-2022-jp?B?dEhVYlN0RSt5bDBTbVNBRngyYlEyVjJTeitjS3JISVpCdVJZRzN2SDNY?=
 =?iso-2022-jp?B?eEx5dkcySnNoWWcxQmFSQTVVRmdQQ1JLMGJKaTdtdCtmRmVtcGZLZnd5?=
 =?iso-2022-jp?B?SisrNTNIaStjL2pmUG9QWWhBMDNZUXpkWmt3blF2c3dRWHUzMnV2a3Vq?=
 =?iso-2022-jp?B?alVYeWR1S2FDWVlMbU02RGJzK1pBbTFkbnZTZ00zS1RERFY4UHdLdTQz?=
 =?iso-2022-jp?B?UDdMY2NiQjlidUxtSzJYY3krWmpaTHE3R1dqbnhYRk9oQ2tMbFZDd2N2?=
 =?iso-2022-jp?B?TEpYcklGcjI3UjF5WVlJNDAydlZGVEQvUEFZQklJKzhSVm1KVGhVTjk4?=
 =?iso-2022-jp?B?WWNTUFNvUGRoTWZNdnU4TGQ5OGNWUGZiK2svc1NEUyt6aDlGYStIbGFj?=
 =?iso-2022-jp?B?VEtwNXRlU05qVDcyeDg1c2hqRk16WmpoRXFVWGFHbk42eFp5Z3E0VDFP?=
 =?iso-2022-jp?B?WjZ5S25UTnZtMlE0NDJJRDVqc25IK0xPMHZSL2ZsdmszY0htRVVLQVZz?=
 =?iso-2022-jp?B?cEFCc25yTERVbTVBRDhpK29HeWVBeWI5dkQzejY3UnRXdlc3YkdTTXpO?=
 =?iso-2022-jp?B?K1FHa2E4?=
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8040.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fd3d9eb9-1e35-4adb-e181-08de59373753
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2026 21:51:21.9302 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bdZCk4meVr7ES+37Sudm46oS7zeDmM8VGbK7Av+wZh8uHUgCmfLGKsSH2lsdG6LAM8E/ynUIBg8RbOK0E6c/rA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4771
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
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@linux.intel.com,m:alex.zuo@intel.com,m:shuicheng.lin@intel.com,m:safinaskar@gmail.com,m:piliu@redhat.com,m:chris.p.wilson@linux.intel.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[jia.yao@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,gmail.com,redhat.com,linux.intel.com];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,gitlab.freedesktop.org:url,PH8PR11MB8040.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[jia.yao@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: A52105E4E1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Within the i915 driver, intel_pxp_fini is called through different paths.

i915_pci_shutdown =1B$B"*=1B(B i915_driver_shutdown =1B$B"*=1B(B intel_pxp_=
fini  (new added)
i915_pci_remove =1B$B"*=1B(B i915_driver_remove =1B$B"*=1B(B i915_driver_un=
register =1B$B"*=1B(B intel_pxp_fini

For MEI-based PXP,  which is mentioned in the commit message.
> Since disabling PCIe memory space affects all MMIO operations, PXP=20
> shutdown needs to be completed before this point. Calls=20
> intel_pxp_fini() before disabling memory space to ensure PXP cleanup can =
still access MMIO registers.

From i915

Kernel_kexec
	-> kernel_restart_prepare
		-> pci_device_shutdown
			-> i915_driver_shutdown
				->  intel_pxp_fini
					-> intel_pxp_tee_component_fini                // will delete componen=
t

From mei

Kernel_kexec
	-> kernel_restart_prepare
		-> pci_device_shutdown
			-> mei_me_shutdown
				-> mei_stop
					-> mei_cl_bus_remove_device
						-> device_release_driver
							-> device_release_driver_internal
								-> mei_cl_device_remove
									-> mei_pxp_remove
										-> component_master_del
											->take_down_aggregate_device
												-> mei_component_master_unbind
													->component_unbind_all
														->component_unbind                    // will not be called
															->i915_pxp_tee_component_unbind
																-> intel_pxp_fini_hw


After intel_pxp_tee_component_fini is called,  for mei_me_shutdown stack,  =
component_unbind will not be called for component has been deleted.

-----Original Message-----
From: Jani Nikula <jani.nikula@linux.intel.com>=20
Sent: Tuesday, January 20, 2026 1:51 AM
To: Yao, Jia <jia.yao@intel.com>; intel-gfx@lists.freedesktop.org
Cc: Yao, Jia <jia.yao@intel.com>; Zuo, Alex <alex.zuo@intel.com>; Lin, Shui=
cheng <shuicheng.lin@intel.com>; Askar Safin <safinaskar@gmail.com>; Pingfa=
n Liu <piliu@redhat.com>; Chris Wilson <chris.p.wilson@linux.intel.com>
Subject: Re: [PATCH v3] drm/i915: Clearing the Memory Space Enable bit when=
 disabling i915

On Tue, 20 Jan 2026, Jia Yao <jia.yao@intel.com> wrote:
> In a kexec reboot scenario, the GPU's Global Graphics Translation=20
> Table
> (GGTT) retains its previous state after the kernel is reloaded, until=20
> i915 reinitializes the GGTT.
>
> The simple-framebuffer driver is initialized before i915 and accesses=20
> the PCIe memory space (GPU aperture) through outdated GGTT entries.=20
> This leads to invalid physical memory accesses, causing GPF or data corru=
ption.
>
> To prevent such issues, the Memory Space Enable (MSE) bit in the PCI=20
> Command Register is cleared during i915_driver_shutdown. This disables=20
> all PCIe memory space access (including MMIO and aperture) at the hardwar=
e level.
> After the kernel is reloaded, access to the PCIe memory space will be=20
> forbidden until i915 is re-initialized.
>
> Since disabling PCIe memory space affects all MMIO operations, PXP=20
> shutdown needs to be completed before this point. Calls=20
> intel_pxp_fini() before disabling memory space to ensure PXP cleanup can =
still access MMIO registers.
>
> v2:
>   - follow brace style
>
> v3:
>   - revise description
>
> Link: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14598
> Cc: Alex Zuo <alex.zuo@intel.com>
> Cc: Shuicheng Lin <shuicheng.lin@intel.com>
> Cc: Askar Safin <safinaskar@gmail.com>
> Cc: Pingfan Liu <piliu@redhat.com>
> Suggested-by: Chris Wilson <chris.p.wilson@linux.intel.com>
> Signed-off-by: Jia Yao <jia.yao@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_driver.c | 35=20
> +++++++++++++++++++++++++++---
>  1 file changed, 32 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_driver.c=20
> b/drivers/gpu/drm/i915/i915_driver.c
> index b46cb54ef5dc..766f85726b67 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -118,6 +118,33 @@
> =20
>  static const struct drm_driver i915_drm_driver;
> =20
> +static int i915_enable_device(struct pci_dev *pdev) {
> +	u32 cmd;
> +	int ret;
> +
> +	ret =3D pci_enable_device(pdev);
> +	if (ret)
> +		return ret;
> +
> +	pci_read_config_dword(pdev, PCI_COMMAND, &cmd);
> +	if (!(cmd & PCI_COMMAND_MEMORY))
> +		pci_write_config_dword(pdev, PCI_COMMAND, cmd |=20
> +PCI_COMMAND_MEMORY);
> +
> +	return 0;
> +}
> +
> +static void i915_disable_device(struct pci_dev *pdev) {
> +	u32 cmd;
> +
> +	pci_read_config_dword(pdev, PCI_COMMAND, &cmd);
> +	if (cmd & PCI_COMMAND_MEMORY)
> +		pci_write_config_dword(pdev, PCI_COMMAND, cmd &=20
> +~PCI_COMMAND_MEMORY);
> +
> +	pci_disable_device(pdev);
> +}
> +
>  static int i915_workqueues_init(struct drm_i915_private *dev_priv)  {
>  	/*
> @@ -788,7 +815,7 @@ int i915_driver_probe(struct pci_dev *pdev, const str=
uct pci_device_id *ent)
>  	struct intel_display *display;
>  	int ret;
> =20
> -	ret =3D pci_enable_device(pdev);
> +	ret =3D i915_enable_device(pdev);
>  	if (ret) {
>  		pr_err("Failed to enable graphics device: %pe\n", ERR_PTR(ret));
>  		return ret;
> @@ -796,7 +823,7 @@ int i915_driver_probe(struct pci_dev *pdev, const=20
> struct pci_device_id *ent)
> =20
>  	i915 =3D i915_driver_create(pdev, ent);
>  	if (IS_ERR(i915)) {
> -		pci_disable_device(pdev);
> +		i915_disable_device(pdev);
>  		return PTR_ERR(i915);
>  	}
> =20
> @@ -885,7 +912,7 @@ int i915_driver_probe(struct pci_dev *pdev, const str=
uct pci_device_id *ent)
>  	enable_rpm_wakeref_asserts(&i915->runtime_pm);
>  	i915_driver_late_release(i915);
>  out_pci_disable:
> -	pci_disable_device(pdev);
> +	i915_disable_device(pdev);
>  	i915_probe_error(i915, "Device initialization failed (%d)\n", ret);
>  	return ret;
>  }
> @@ -1003,6 +1030,7 @@ void i915_driver_shutdown(struct=20
> drm_i915_private *i915)
> =20
>  	intel_dmc_suspend(display);
> =20
> +	intel_pxp_fini(i915);

This is now called twice. Please fix it.

>  	i915_gem_suspend(i915);
> =20
>  	/*
> @@ -1020,6 +1048,7 @@ void i915_driver_shutdown(struct drm_i915_private *=
i915)
>  	enable_rpm_wakeref_asserts(&i915->runtime_pm);
> =20
>  	intel_runtime_pm_driver_last_release(&i915->runtime_pm);
> +	i915_disable_device(to_pci_dev(i915->drm.dev));
>  }
> =20
>  static bool suspend_to_idle(struct drm_i915_private *dev_priv)

--
Jani Nikula, Intel
