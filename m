Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0EWQCYWu8GkfXQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:56:37 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98AF3485658
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:56:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6D8A10ECE5;
	Tue, 28 Apr 2026 12:56:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mjQU0wBD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96AE610ECE2;
 Tue, 28 Apr 2026 12:56:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380992; x=1808916992;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=Rpbb+thP3NQ9YSHkiLjQem5mWX5fZ6a2BB8BXEDaC/U=;
 b=mjQU0wBDUh1vp6uyxxKXrP+dRbUfo0daxW/KaaYSERBiTSl7Ge8DghzT
 CK8pMD7zkIyP2hFXEIzmDRcA2EfR+SvyS/SDjafSTcaqjSvA5q9KYfYr4
 eUMntgYvFKCd0kfhs1jFBvQMGDyr/CWrDKv5QZRlPGRBWlivYVjPGUpUW
 OATyWeLF8bKBJKb8T8HwlllaHx9M7yY/11SjOr50pzDYVpJ2VXFuLa0A3
 kA9U0svogJiGJz342pXYUayVtwHx6qVWALy6fYfgpfmQIuDvKJ5e5/L+f
 QAQG6tDI6asuseRcvloSFkXWdHhbWuaOCVaY3f0UOVnic3d4iqXLl1aYY g==;
X-CSE-ConnectionGUID: GeUVhhX8Q3ynDDcD97fwvw==
X-CSE-MsgGUID: LYvcFtq5S+Omd96e8Fcbqw==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="88883780"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="88883780"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:56:32 -0700
X-CSE-ConnectionGUID: w46ybKTQQsOT9O2tlytrlQ==
X-CSE-MsgGUID: SfYREHrIR1u50FI1DohkuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="230795366"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:56:32 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:56:31 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:56:31 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.2) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:56:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HxsktEAQC8f3vn2mfwWKH5iz1oL6RZTBBf1aLT6nIgJNQ00EXlH4BAe9ExcjpW9TDGcL/R+0WUvRbqhAeH+hoOYg98FiLvceMShgBteHXhDbYfqzitYJrJl0OGuCVMOJJxfPUuxY3ogrJUOlUNg3zuJMlYrj/3E+oiwwMYxv40d+Wn05bsqFQFYQefm0+4Maa32LiHviFRKqypcvAQxnLl1N65H3tTKLHT0k0KjlTNplH1GcY48Rg/LzvlJh68xx+6SEPudsrfrMtRTmhyUmXHanwe+XJPP+zJVaRwkdrp5/XaiIBfD+j3gb16KciebacUjwuu3hmnikNzGVuEh6AQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Rpbb+thP3NQ9YSHkiLjQem5mWX5fZ6a2BB8BXEDaC/U=;
 b=UfyB+rSL75dIv4R31UHBuqwuqvO7AcZcmPseJmZar8wVaDEUUKypCV2By6QFiQ8uJvMuQWojj4GEB3wz0EpX/eNAY5tc5sDeDTWJHbq6D1s2QNK+g2G3MnmbNWcj7RWyeax5V9dSz7jhGpsWekol0IdRQ6e93yrHOsnyMU+QDpoMrBbRykOZUqKboXjgrTa03+gqoCOizL7GM2ySnie0qd+r1nUuFhn8wTlv7KQsi/Ave60K6olGxdELy4SJVTjSRUnkA0uSSMSfAAbzd1omwUjiTgt54HDTWIU+b1a0a3IuGrzEgzjCa8Sml5p2oS5e+m4bqvUHOTSKmkO+R7Oz8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DM3PPFF0E3B6AEF.namprd11.prod.outlook.com (2603:10b6:f:fc00::f5e)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.18; Tue, 28 Apr
 2026 12:56:28 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.20.9870.016; Tue, 28 Apr 2026
 12:56:27 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Dibin
 Moolakadan Subrahmanian" <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [RFC PATCH] drm/i915/psr: Prevent DC entry during active vblank
 for Panel Replay
Thread-Topic: [RFC PATCH] drm/i915/psr: Prevent DC entry during active vblank
 for Panel Replay
Thread-Index: AQHc1wwXrSGVUNRfDEicXr29pEEUIbX0bsAA
Date: Tue, 28 Apr 2026 12:56:27 +0000
Message-ID: <70d7c60be91c179b8d47997cd00ac5d84e824c8c.camel@intel.com>
References: <20260428123951.3803703-1-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260428123951.3803703-1-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DM3PPFF0E3B6AEF:EE_
x-ms-office365-filtering-correlation-id: 073a440b-4306-465c-58b8-08dea5258fe3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|10070799003|366016|376014|38070700021|56012099003|18002099003|22082099003;
x-microsoft-antispam-message-info: 9EjPsvyP7BCU8s+RiRf2mzVm/Njot3u3QYf4ekeKcfkJUZ1DfCaaXtrl36dMSCx6etlN3RRvrQgxI9lUZtPQ7O+qACOL+o0WBEDj/e3OdQcgZtPY0MJk4kNlC1X83j3XQSfkFsQopFSX4qFM5IzmhaAvES8uZJHiKha+SbuHPP4vytiCCCWPC0xaEvNLEk2t/UUGgqnE3bMhVn6g25SwxxV34yHcENv6lJJ2ApxMoqmuhl3Dmaj52ISFG63mTKLM/G/mwUHNeubS5q5H+czOsAOBgqLa1WxiGk9YbsPilgmVNY0vtoToyNAfzAZNJrE8AdxNlBhM+87AiDQQudkMj7PDXFuuH6pZtObx0g+fa47TPdSHsX3knXaub4VvaeqCtTjUkNCLzGvBfO+PM5PhBuECp4Ksx9EqseFiAOJuhbDyX3USWhmeEEWTANvqAQhDmriWm5I1J7/gt4mFpM+x6zMIWZRIL06U+Hyjc+AAIp74xJxcYKb8NTbVMvoTsXVnppxJm4makOpQdqeUGyOWLECuhx4TrpWapoxynPQkbvU+WOME/rafGLudBtSzWj8J1QgEhqe0hks0xbXD184tB5nU9wgF9YLlUdlqD4qDiJS002ATopRqGxg4dg87vAyB4778V1ZVsk7l91vOcICp/LlX3urPVZwp2kLZsG354/mU6zaaJ5qMa5viMd4PKDygljzA7EnGmyHLqOvArSkX/+YOsfef1sOPDPmlOJvXbiGQWMSkhKkWWAOypfyGulUIPLXudNYOL8G0Fwj+/uX6VShRxL+WOhH6rLLNZj6lZiA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(10070799003)(366016)(376014)(38070700021)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V0gyZkNRc0VnYmNsUlA4SDJEK01GaHFqeUI3Y0p2ZE9zKzB0cU1MMm9aczYy?=
 =?utf-8?B?cm1vcWFReHB5RElvayt2YkRnUEd3TWxkNmRNRnl3TnE4ME5EMnBZbFJxTmZy?=
 =?utf-8?B?ZEhpUnkyNlNPeWhJNHJkbkRhUHVMSGtTKzBuVDR4N2JiR2M2QVVQV3ZBcVZ1?=
 =?utf-8?B?T3RDSUFMbCtOY0h3Y0N1aW1rU0FlcFE0Tk5OTlE2Rkc2QzNXTDNWN0RzN293?=
 =?utf-8?B?d0N6VDI2NVV0TkRlNEkvN09QaENvTWhxRjlMSmxxK1djTy9oRm1ENkRKanZQ?=
 =?utf-8?B?ZHh5OGNpWW9wSkRVTC9NZVFJa0gvZkxrc1J6cHRKbWJ5VG42RzBKeHdhVUZy?=
 =?utf-8?B?a0M0VHhldUZtYkU0NUhnZmgvL1dBR1VubFpHZW9weUViTzBkcEpkUUR4OUkw?=
 =?utf-8?B?NWF1b2duL0VyT3Z5OFcybVp4dnpkMDVHbTZCemZTZmZBQ3dPZU1hWVk2RzRB?=
 =?utf-8?B?di9XcEszZFM2MmxvMFpCbnFMeFdFMlZOMEhPbGh6T3NWYkxaeCtDZkVNM1hm?=
 =?utf-8?B?SElmWTZlWnJBS1QxV0daNTRMdFJvQ0pIc0tWQ212b2V3ZDVwaGFiRkM4MmhX?=
 =?utf-8?B?TDBFWkVEanljeXlGUnJhOFRVYnhuWXFIYTlKd2tJc0NFUnRHRFBRbm0vNUVs?=
 =?utf-8?B?RTk0ZWVTRzVFTStKRUF0WFZONzhlK1ZKRGxYeFh0Mk1ZMStvVDlpVFd6d2N0?=
 =?utf-8?B?R2dScU0vRzJUNWd6MEdNWURQNUI0MCt3WHl1QThRZFZGVmtRQ0lOdDNCWGF4?=
 =?utf-8?B?eE9aei96OTRMaDhIUGgvQmJ5SDg3TEZnSFJQOTJjY0ozR2c0eVY3eUYzNWJV?=
 =?utf-8?B?enhBdy8xQWp4bW9nM1cyYVFJcmh3Ym5mNitCdnRNMnA2NktCU3BrV0RaQzR3?=
 =?utf-8?B?OWpKamgwMGhJNmhmZEhTaWYrQkNXUXNORHUwUExENFRXbEN3TnF6TTdmTmJx?=
 =?utf-8?B?d3RDYjNtOXkvN1h1ZFNDbDZJcjU0OHBWWFdsa3FJdk5kTmhmeGIwU3h4L1h0?=
 =?utf-8?B?SW85a2JKWGpQWk5tV0tsWFVpYVdvckJ3eUR4RWo1bHdHaTNHWnNCZlZWM1pK?=
 =?utf-8?B?VEdyNk82Y3NsNS9BTDBlVEN1QURFZWVhWnpNcnZpTG9EemV0UjhPK2VrY0F5?=
 =?utf-8?B?Y0J3TTJSM2dTeUYyWHFVcmplSWdGSHp0eW1xZE94UTRKV3Rzd3NHaGttRlJ2?=
 =?utf-8?B?UnhuN0phY0pXdEppSzBIZ0NFaEVaMy9QVUZUcjJnVlpFWTNMT3Ird1pmZkRu?=
 =?utf-8?B?VWdnU0dqSjY1ZTVlQVRMaXN5Z3RsWE5wWkZFdnBZajJWMTR4RDNINUJ5RjYz?=
 =?utf-8?B?eTZqcEM2SDVrOG1Fdk5MYjhzNkFOODVML1FXS0RDUWgxREpOODdCSzNNZGF6?=
 =?utf-8?B?dGdIVFVRV0ZUSS95STVnbGtDZ2NjZnkwRGRYNjhEbUVLN0VXWVovTmlTWHlB?=
 =?utf-8?B?aGxyS3R2TzNJZ0xVVVZVVzRVZk9mWTFaYzZSWmZDY0V4U3hYK3FLR0RIV0Rj?=
 =?utf-8?B?cGdVOFVTcnUweG8wN0RyTFVVeVVpRU1JY2FVdmF1STRPaDlDQTI3d3llVXBG?=
 =?utf-8?B?RERKeW85UXJ3bXNKSitiY2JTeDVyM0RERktZRmpDK2NqeU5aSlk3bVlNUjJr?=
 =?utf-8?B?L2w3MFhTb0NtSW8rdGk4SjNUSTQwQmR1SmNMemRTYnFsT3Q0SmVtQ1FJM1Q0?=
 =?utf-8?B?TlQ0aGg2YmdKaklSNmp6UXJHU2Q4Vkc0NWt6MXZFQ0srQXVQTjFFUWNmU1ZB?=
 =?utf-8?B?RGtWQ1hkYWdFNS9lUFNvSUNJRnVCeTZIa0FHd2g3aTVtNld3ZHZHckZYdWxO?=
 =?utf-8?B?UTlSaEpid2MvL3paTEpSKytrb2ZKZE1lcTUwNXg0eHo5RnlaQ2pUdkVHV280?=
 =?utf-8?B?TnRQN3c1a0ZUbHNZYWllZGdsajczQ1hJdzFxSkNHYXI1dUlHL3VBdnR1bDN3?=
 =?utf-8?B?Q1RSY3QxWWlkM3FSVmh2NmJZUWJML3N5SzRDUzJ0aGdIeHhJOWFNZy9oWEFY?=
 =?utf-8?B?M2ZPejhEbi9hSEJXemREa0NVNFJJSEVZb0dVa1RwZm53VWtFeXZYTUdZejRr?=
 =?utf-8?B?ckQ4am1SU0MxK1lnSU5nRFB5bjJ0K0ZBYzhMUTlpMllYTXo2c3YxOTAzWWhW?=
 =?utf-8?B?eXk4UFd3WFExeXFqdk5qdnNqN014L1lBY3RHblNONENXQlZENVhQR0ZaZFl4?=
 =?utf-8?B?SndaM09pbFhJMjBUb2RITWRwQi9RSEZ2Qk5BR25wZ0ZmNHJqeUZOcDhvblIx?=
 =?utf-8?B?YlM5dW1xNm5hOTZtdnFRLzI3VEt6dFJyT2tXM05uWWd0aTNYUlRCVm05cFR4?=
 =?utf-8?B?NFpqNktobkRUaHJpcUd5K3NSbXVybkpJK0lISTlnOHJ6ZG1xZk90MWJUS3Fv?=
 =?utf-8?Q?29F5NsVZjmkTxM14lxi+jkNlEYYzAlV0eXuHQM12UBvve?=
x-ms-exchange-antispam-messagedata-1: H0wpbBsmVvKrrByFWAF+yd8vulhaYh3v4ng=
Content-Type: text/plain; charset="utf-8"
Content-ID: <70BBACA2DEE9884D8D0D3D11FDC1FDC2@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: vLIFD+CYXX6ZaaJOfjb3dOf975PycvL7s4bP+TXBSctvoFMf4J0JeJjdNr+OEe7m44XD6CUmGcQmEPMyaSHft6CMYJfU1Co0Ke2jnCcoQiQm8/1CSFyDLRSMnOrBmfeuPLX8r9TCMYRsqYuSeYumdZkodEw9Ibsyyq/1StuPVd++kswqy8BsPz+6AoiqdKJnhf7sNDPV/Db6RIwVs2iQ3s4WcA5MWCj5pyH8b2m41Dq+tml9bxGyNF3NE7dxQXPeBpUpNDD+u6lFAZjkknQWKAdv+vfLr5+C7Yn1JmVmqATy50n/LPJLKGk9YZz/Yvf6K/rUXQSYmqusSVwsFAorKg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 073a440b-4306-465c-58b8-08dea5258fe3
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2026 12:56:27.9182 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JP+zaK8gRYi0Qg1zM44YrQFCn5KiQgph3V9/ezpj30O78XcS6yz3DPXSJpcmc6bEZplHIYAUaE38irNdl/3q/xoZQQoLUE1vBYD/zVm7UtM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPFF0E3B6AEF
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
X-Rspamd-Queue-Id: 98AF3485658
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]

T24gVHVlLCAyMDI2LTA0LTI4IGF0IDE4OjA5ICswNTMwLCBEaWJpbiBNb29sYWthZGFuIFN1YnJh
aG1hbmlhbiB3cm90ZToNCj4gT24gUFRMKyAoZGlzcGxheSB2ZXIgPj0gMzApLCBob2xkIHRoZSBE
TUMgd2FrZWxvY2sgd2hpbGUgdmJsYW5rIGlzDQo+IGVuYWJsZWQgZm9yIFBhbmVsIFJlcGxheS4g
T2xkZXIgcGxhdGZvcm1zIHJlbHkgb24NCj4gaW50ZWxfZGlzcGxheV9wb3dlcl9zZXRfdGFyZ2V0
X2RjX3N0YXRlKCkgZm9yIHRoaXMuDQo+IA0KPiBUaGUgd2FrZWxvY2sgaXMgYWNxdWlyZWQvcmVs
ZWFzZWQgYXQgdHdvIHBsYWNlczoNCj4gMSkgRHluYW1pY2FsbHkgd2hlbiB2YmxhbmsgaXMgZW5h
YmxlZC9kaXNhYmxlZCB2aWENCj4gwqDCoCBpbnRlbF9wc3Jfbm90aWZ5X3ZibGFua19lbmFibGVf
ZGlzYWJsZSgpLg0KPiAyKSBJbiB0aGUgUFNSIGVuYWJsZS9kaXNhYmxlIHBhdGguDQo+IA0KPiBU
aGlzIGhhbmRsZXMgdGhlIGZvbGxvd2luZyBvcmRlcmluZyBzY2VuYXJpb3M6DQo+IDEpIFBhbmVs
IFJlcGxheSBpcyBlbmFibGVkIGJlZm9yZSB2YmxhbmsgZW5hYmxlIGFycml2ZXMuDQo+IDIpIFZi
bGFuayBlbmFibGUgYXJyaXZlcyBiZWZvcmUgUGFuZWwgUmVwbGF5IGlzIHVwZGF0ZWQgaW4NCj4g
wqDCoCBpbnRlbF9wc3JfcG9zdF9wbGFuZV91cGRhdGUoKS4NCg0KQXMgZGlzY3Vzc2VkIG9mZmxp
bmUgSSB3b3VsZCBjaGVjayBpZiB3ZSBjb3VsZCBqdXN0IHRha2UgdGhlIHdha2Vsb2NrDQp3aGVu
IFZCSSBpcyBnZXR0aW5nIGVuYWJsZWQuDQoNCkJSLA0KSm91bmkgSMO2Z2FuZGVyDQoNCj4gLS0t
DQo+IMKgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5owqDCoMKgIHzC
oCAyICsNCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jwqDCoMKg
wqDCoCB8IDU1DQo+ICsrKysrKysrKysrKysrKysrLS0NCj4gwqAyIGZpbGVzIGNoYW5nZWQsIDUz
IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiBpbmRleCBjODE5
MTY3NjE4NTAuLmYzODZkNmRiYTllNSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gQEAgLTE3NzUsNiArMTc3NSw4
IEBAIHN0cnVjdCBpbnRlbF9wc3Igew0KPiDCoAlib29sIHNvdXJjZV9wYW5lbF9yZXBsYXlfc3Vw
cG9ydDsNCj4gwqAJYm9vbCBzaW5rX3BhbmVsX3JlcGxheV9zdXBwb3J0Ow0KPiDCoAlib29sIHBh
bmVsX3JlcGxheV9lbmFibGVkOw0KPiArCWJvb2wgcGFuZWxfcmVwbGF5X3dha2Vsb2NrOw0KPiAr
CWJvb2wgdmJsYW5rX2VuYWJsZWQ7DQo+IMKgCXUzMiBkYzNjb19leGl0bGluZTsNCj4gwqAJdTMy
IGRjM2NvX2V4aXRfZGVsYXk7DQo+IMKgCXN0cnVjdCBkZWxheWVkX3dvcmsgZGMzY29fd29yazsN
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMN
Cj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGluZGV4IDYz
YzE5OTU4YTllMy4uODJiYzYzMDU0OTA2IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAgLTIxOTIsNiArMjE5MiwzNCBAQCBzdGF0aWMgYm9vbCBw
c3JfaW50ZXJydXB0X2Vycm9yX2NoZWNrKHN0cnVjdA0KPiBpbnRlbF9kcCAqaW50ZWxfZHApDQo+
IMKgCXJldHVybiB0cnVlOw0KPiDCoH0NCj4gwqANCj4gK3N0YXRpYyB2b2lkIGludGVsX3BhbmVs
X3JlcGxheV9nZXRfd2FrZWxvY2tfbG9ja2VkKHN0cnVjdCBpbnRlbF9kcA0KPiAqaW50ZWxfZHAp
DQo+ICt7DQo+ICsJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNw
bGF5KGludGVsX2RwKTsNCj4gKw0KPiArCWlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA8IDMwKQ0K
PiArCQlyZXR1cm47DQo+ICsNCj4gKwlpZiAoaW50ZWxfZHAtPnBzci5wYW5lbF9yZXBsYXlfd2Fr
ZWxvY2spDQo+ICsJCXJldHVybjsNCj4gKw0KPiArCWludGVsX2RtY193bF9nZXRfbm9yZWcoZGlz
cGxheSk7DQo+ICsJaW50ZWxfZHAtPnBzci5wYW5lbF9yZXBsYXlfd2FrZWxvY2sgPSB0cnVlOw0K
PiArfQ0KPiArDQo+ICtzdGF0aWMgdm9pZCBpbnRlbF9wYW5lbF9yZXBsYXlfcHV0X3dha2Vsb2Nr
X2xvY2tlZChzdHJ1Y3QgaW50ZWxfZHANCj4gKmludGVsX2RwKQ0KPiArew0KPiArCXN0cnVjdCBp
bnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShpbnRlbF9kcCk7DQo+ICsN
Cj4gKwlpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPCAzMCkNCj4gKwkJcmV0dXJuOw0KPiArDQo+
ICsJaWYgKCFpbnRlbF9kcC0+cHNyLnBhbmVsX3JlcGxheV93YWtlbG9jaykNCj4gKwkJcmV0dXJu
Ow0KPiArDQo+ICsJaW50ZWxfZG1jX3dsX3B1dF9ub3JlZyhkaXNwbGF5KTsNCj4gKwlpbnRlbF9k
cC0+cHNyLnBhbmVsX3JlcGxheV93YWtlbG9jayA9IGZhbHNlOw0KPiArfQ0KPiArDQo+IMKgc3Rh
dGljIHZvaWQgaW50ZWxfcHNyX2VuYWJsZV9sb2NrZWQoc3RydWN0IGludGVsX2RwICppbnRlbF9k
cCwNCj4gwqAJCQkJwqDCoMKgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpjcnRj
X3N0YXRlKQ0KPiDCoHsNCj4gQEAgLTIyMjQsOCArMjI1MiwxMSBAQCBzdGF0aWMgdm9pZCBpbnRl
bF9wc3JfZW5hYmxlX2xvY2tlZChzdHJ1Y3QNCj4gaW50ZWxfZHAgKmludGVsX2RwLA0KPiDCoAlp
ZiAoIXBzcl9pbnRlcnJ1cHRfZXJyb3JfY2hlY2soaW50ZWxfZHApKQ0KPiDCoAkJcmV0dXJuOw0K
PiDCoA0KPiAtCWlmIChpbnRlbF9kcC0+cHNyLnBhbmVsX3JlcGxheV9lbmFibGVkKQ0KPiArCWlm
IChpbnRlbF9kcC0+cHNyLnBhbmVsX3JlcGxheV9lbmFibGVkKSB7DQo+ICsJCWlmIChpbnRlbF9k
cC0+cHNyLnZibGFua19lbmFibGVkKQ0KPiArCQkJaW50ZWxfcGFuZWxfcmVwbGF5X2dldF93YWtl
bG9ja19sb2NrZWQoaW50ZWwNCj4gX2RwKTsNCj4gwqAJCWRybV9kYmdfa21zKGRpc3BsYXktPmRy
bSwgIkVuYWJsaW5nIFBhbmVsDQo+IFJlcGxheVxuIik7DQo+ICsJfQ0KPiDCoAllbHNlDQo+IMKg
CQlkcm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0sICJFbmFibGluZyBQU1Ilc1xuIiwNCj4gwqAJCQnC
oMKgwqAgaW50ZWxfZHAtPnBzci5zZWxfdXBkYXRlX2VuYWJsZWQgPyAiMiIgOg0KPiAiMSIpOw0K
PiBAQCAtMjM0NCw4ICsyMzc1LDEwIEBAIHN0YXRpYyB2b2lkIGludGVsX3Bzcl9kaXNhYmxlX2xv
Y2tlZChzdHJ1Y3QNCj4gaW50ZWxfZHAgKmludGVsX2RwKQ0KPiDCoAlpZiAoIWludGVsX2RwLT5w
c3IuZW5hYmxlZCkNCj4gwqAJCXJldHVybjsNCj4gwqANCj4gLQlpZiAoaW50ZWxfZHAtPnBzci5w
YW5lbF9yZXBsYXlfZW5hYmxlZCkNCj4gKwlpZiAoaW50ZWxfZHAtPnBzci5wYW5lbF9yZXBsYXlf
ZW5hYmxlZCkgew0KPiArCQlpbnRlbF9wYW5lbF9yZXBsYXlfcHV0X3dha2Vsb2NrX2xvY2tlZChp
bnRlbF9kcCk7DQo+IMKgCQlkcm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0sICJEaXNhYmxpbmcgUGFu
ZWwNCj4gUmVwbGF5XG4iKTsNCj4gKwl9DQo+IMKgCWVsc2UNCj4gwqAJCWRybV9kYmdfa21zKGRp
c3BsYXktPmRybSwgIkRpc2FibGluZyBQU1Ilc1xuIiwNCj4gwqAJCQnCoMKgwqAgaW50ZWxfZHAt
PnBzci5zZWxfdXBkYXRlX2VuYWJsZWQgPyAiMiIgOg0KPiAiMSIpOw0KPiBAQCAtNDE0Myw5ICs0
MTc2LDI0IEBAIHZvaWQNCj4gaW50ZWxfcHNyX25vdGlmeV92YmxhbmtfZW5hYmxlX2Rpc2FibGUo
c3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksDQo+IMKgCQlzdHJ1Y3QgaW50ZWxfZHAgKmlu
dGVsX2RwID0NCj4gZW5jX3RvX2ludGVsX2RwKGVuY29kZXIpOw0KPiDCoA0KPiDCoAkJbXV0ZXhf
bG9jaygmaW50ZWxfZHAtPnBzci5sb2NrKTsNCj4gKwkJaW50ZWxfZHAtPnBzci52YmxhbmtfZW5h
YmxlZCA9IGVuYWJsZTsNCj4gwqAJCWlmIChpbnRlbF9kcC0+cHNyLnBhbmVsX3JlcGxheV9lbmFi
bGVkKSB7DQo+ICsJCQkvKg0KPiArCQkJICogd2FrZWxvY2sgaGFuZGxpbmcgZm9yIHBhbmVsIHJl
cGxheQ0KPiArCQkJICogZm9yIG9sZGVyIHBsYXRmb3JtIHJlbHkgb24NCj4gaW50ZWxfZGlzcGxh
eV9wb3dlcl9zZXRfdGFyZ2V0X2RjX3N0YXRlKCkuDQo+ICsJCQkgKi8NCj4gKwkJCWlmIChESVNQ
TEFZX1ZFUihkaXNwbGF5KSA8IDMwKSB7DQo+ICsJCQkJbXV0ZXhfdW5sb2NrKCZpbnRlbF9kcC0+
cHNyLmxvY2spOw0KPiArCQkJCWJyZWFrOw0KPiArCQkJfQ0KPiArDQo+ICsJCQlpZiAoZW5hYmxl
KQ0KPiArCQkJCWludGVsX3BhbmVsX3JlcGxheV9nZXRfd2FrZWxvY2tfbG9jaw0KPiBlZChpbnRl
bF9kcCk7DQo+ICsJCQllbHNlDQo+ICsJCQkJaW50ZWxfcGFuZWxfcmVwbGF5X3B1dF93YWtlbG9j
a19sb2NrDQo+IGVkKGludGVsX2RwKTsNCj4gKw0KPiDCoAkJCW11dGV4X3VubG9jaygmaW50ZWxf
ZHAtPnBzci5sb2NrKTsNCj4gLQkJCWJyZWFrOw0KPiArCQkJcmV0dXJuOw0KPiDCoAkJfQ0KPiDC
oA0KPiDCoAkJaWYgKGludGVsX2RwLT5wc3IuZW5hYmxlZCAmJiBpbnRlbF9kcC0NCj4gPnBzci5w
a2dfY19sYXRlbmN5X3VzZWQpDQo+IEBAIC00MTU0LDcgKzQyMDIsNiBAQCB2b2lkDQo+IGludGVs
X3Bzcl9ub3RpZnlfdmJsYW5rX2VuYWJsZV9kaXNhYmxlKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpk
aXNwbGF5LA0KPiDCoAkJbXV0ZXhfdW5sb2NrKCZpbnRlbF9kcC0+cHNyLmxvY2spOw0KPiDCoAkJ
cmV0dXJuOw0KPiDCoAl9DQo+IC0NCj4gwqAJLyoNCj4gwqAJICogTk9URTogaW50ZWxfZGlzcGxh
eV9wb3dlcl9zZXRfdGFyZ2V0X2RjX3N0YXRlIGlzIHVzZWQNCj4gwqAJICogb25seSBieSBQU1Ig
KiBjb2RlIGZvciBEQzNDTyBoYW5kbGluZy4gREMzQ08gdGFyZ2V0DQoNCg==
