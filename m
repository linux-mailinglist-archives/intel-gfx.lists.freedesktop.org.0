Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03C69859B88
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Feb 2024 06:09:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CECAC10E05C;
	Mon, 19 Feb 2024 05:09:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mDJGIQtp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 333DF10E05C;
 Mon, 19 Feb 2024 05:09:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708319391; x=1739855391;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LgxWApkGT2qtkMrsigK/6P9YwF7G807NdISJKhLM8D0=;
 b=mDJGIQtpbmo6+tAriQtBDeaL/SFfs88EdcFL4iSBeXZClxRFE8xdxbqv
 SiVhNDeOQG2TV8yWQVMB+QhyfgDWDSUtD558Hk3RXflDUk11p9x5mGv6V
 SKNS4m8EpnpQ6cfiMwExdZV2sr7gxwDyXAXiMn5eXFMIhbm8V/EsAA401
 DeP4/mAxLaG5p5f00PQZUjRToxhJcYAAQUBCvvG3x+8m0jkAWbUv4inXf
 qG3AFv+CpZdvONUiXtQz2T1AZR2jc32F/bmTWwnwEfMy8MXPx57U/y0/k
 XEFENRlDrcC1XYlcIWThaN+6Hhwj3GUdJTE2wr2YGd+gTAZ4piM2Pq2zg Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10988"; a="2531136"
X-IronPort-AV: E=Sophos;i="6.06,170,1705392000"; 
   d="scan'208";a="2531136"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2024 21:09:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10988"; a="936228052"
X-IronPort-AV: E=Sophos;i="6.06,170,1705392000"; d="scan'208";a="936228052"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Feb 2024 21:09:50 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 18 Feb 2024 21:09:49 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 18 Feb 2024 21:09:49 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 18 Feb 2024 21:09:48 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 18 Feb 2024 21:09:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BUz+XJ6jnUQKWL+ihNnfwXMsyCCn+6g561isf1sM7PqmiAhqvmTXU08+o7wn6nDY1NsLnXNEnYEgqot9V381h6TAMi/9YawiD8yVGTZluGc/O+cta9fElSdjgsk/P/5N11nIjaWWfl5D2PPg5WYQ4cdET3EEDLdne9kvvYXnapl2I7hQ3/CgK4oUoUMaCA6HVylYmSB+teBnI1UggB0QMMwWq8zFhOXi3D+UbESwBLC++Cpq73UrfqzKAvAhRmLaFSAb4cZtt/RoGnhy0G0REOHnu+iLjXCtfkCtAbwwI7Q9aSnRUBQ2jUUd0wmfqMeRiGA9xokNl/pfaHF6I6ZxSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LgxWApkGT2qtkMrsigK/6P9YwF7G807NdISJKhLM8D0=;
 b=I7ic/lphk6V0NeNYmvd9t2WO+vu9AQHhMHDEp3ZpN/ldtLLIWIuByxlkNGfR38QshIdYsAoqbMz3WN5eCcSh/ps6LHfPloYL5Kis0lZ5a55UYWAmKRxQe5vnTFJqXG5MBm6nVrKjUdvRiiyUT4HwFmIaQeEwNiov/Ti13OrX3YS+BDcfTX3YPsosUqxWxQV3UeI3S5bXkAilflJNbW8R/VD23okxVgtvk6K7Y2gmBIJifkNpp+QyIqodUfhz9eHVukn8Z7BOHq836gKaUZ7SgNcwxS3CprMCU36nYTSTdCxI2hNK3l1FN6Fc2LdBkkBQchhid3lR+Gy853IRoyoLTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SA1PR11MB6735.namprd11.prod.outlook.com (2603:10b6:806:25e::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.37; Mon, 19 Feb
 2024 05:09:46 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::f1c4:e34a:54f7:233e]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::f1c4:e34a:54f7:233e%7]) with mapi id 15.20.7292.036; Mon, 19 Feb 2024
 05:09:46 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
Subject: RE: [PATCH 5/5] drm/xe/hdcp: Add intel_hdcp_gsc_message to Makefile
Thread-Topic: [PATCH 5/5] drm/xe/hdcp: Add intel_hdcp_gsc_message to Makefile
Thread-Index: AQHaW0EOazqpXMWv5E2vzqKYV8HGbLENCCwAgAQkELA=
Date: Mon, 19 Feb 2024 05:09:46 +0000
Message-ID: <SN7PR11MB675073C8544A0B578152A398E3512@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240209101412.1326176-1-suraj.kandpal@intel.com>
 <20240209101412.1326176-6-suraj.kandpal@intel.com>
 <4c37e423-10a8-4fa6-8ea9-aaff24e66e04@linux.intel.com>
In-Reply-To: <4c37e423-10a8-4fa6-8ea9-aaff24e66e04@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SA1PR11MB6735:EE_
x-ms-office365-filtering-correlation-id: b06f0739-16dd-4135-0645-08dc3108fd8b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: C3ev/NS1ZXrV2K9FbLVmGY06ZkJufYwpmWbYW/8d9r2GKFpm2YO37rsfTSX2UrfEcEcTZRrzXd/4D4Sdthal70jGpP4w2FtmFEJNUxP917gM0EYuEHq5W1H36h+ZMtq+JRn1wp71gZ1SSEJ+COXqh/KYYw5hmizDVYtRaOOlGRvWhzG59Din+RoBUb1gmVg6ZtVg00gYkCehUIwWs0Vv33CcNETYc3Ms3pT9gYxatS7E6gWGE3sm5AWyUh7yDoD4jBK4M6LEu0KTGcywtU8q3I6NF2o41vBrH8Wh+3QvLeOdsrq5iEnvRYkDVW6i8NVFv6YeFki/RHN3uvGJu4uqWzoHGCltTktX7DRs8aMEcJ5eaiLc0zGyiN1hhrjuTlJPpZgOO8Th9fw64q+9IWIw1miUpC56FjI+gkk+CG4MqXYB2c5qVP5OhfbaB1l5E5RId/LmTt3ltVCVQ7nfWGujB0Ig9z0zY5/JZ62a8d3/JdlyIOrulxddKPANtnD+D3uB51tc0AVLUNUaBCC5fFdF7hl/5TSZUXmFoLF/DstXIGZLKRwE41mlicVR33iVDzcUJLJDUyktsJEe9SAa8FHn2HETxxr9YugnRnIDPM4RD7NDsj1/MrZXpviLBQx8NUj5
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(396003)(346002)(136003)(366004)(230922051799003)(451199024)(64100799003)(186009)(1800799012)(33656002)(83380400001)(86362001)(38070700009)(110136005)(71200400001)(41300700001)(316002)(53546011)(6506007)(7696005)(9686003)(2906002)(5660300002)(478600001)(52536014)(66556008)(76116006)(66946007)(66476007)(66446008)(64756008)(8676002)(8936002)(4326008)(26005)(55016003)(122000001)(82960400001)(38100700002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RUdwV09ORjd4NitvNWswb2d3blVWNkpHeGJWaU1Wc3YvelZPMVJmcXU2Q0U2?=
 =?utf-8?B?SU1aNklaK0RnUi92aEZSdFFNU0RFa2E1MmNCbWMxN3hPbnpDTkFZWVVZdHpo?=
 =?utf-8?B?SFRjeGNUUGVwMFh5Nzg3QkVyM09yOWE0K3UwSGFlVHI3RHJwejZrZy9MdmJZ?=
 =?utf-8?B?U2FQa3FKbW13b1REZnNRbXRGdGFKQnE3RjRDZ1Vad1Zxd1ZlcFMzRE04VEdo?=
 =?utf-8?B?SVMxSXhRdGF6Wm42YzlTT0NoaUxTRE1iQWNoQXUrQ25yb3cvbTRQWGNtczZx?=
 =?utf-8?B?K1NWSUlSNnpQR1g1STRVMW9ucVZqbUhhUUdQUllTdWFMK2RGK0srMTlVSDZ4?=
 =?utf-8?B?UWZBeUhyU3oyQmdSdmRETHlqaHFKaFVKOUVQM0VYaHZmVVVVTGlUREVFTTFJ?=
 =?utf-8?B?K2dwSldMSjFhVmFWVkI5QjZDMldjSm1HNzVlZjRWczFLYnJXMU1kUGY2cUVK?=
 =?utf-8?B?eGpRVHlTZXJ3dzVVSmpwQUlDT1FrM0tnRTJteWVxMXc0NC8xSnA3ZEN3aWpq?=
 =?utf-8?B?dysrZjNkbHJubHdaTGhkVFY4SVY5dTFqTVJnWk1abGQxU3F6VGNmTllVK3o5?=
 =?utf-8?B?ZmpydHJaV1FiL21INllwOFlBQjd1ZU05b3U3cFlYQnIrQmlxdXBvSmp3OHhj?=
 =?utf-8?B?SnpLd2FJcFpPemtRNmtDNlgybmRDc01HVDJ5NUl1UHVSeU5HdFJPSklUTWQ3?=
 =?utf-8?B?aXRUWHMvMXFuTUorSXpUdHFqSk11YkZ6bGM2L1YrOWdSVzRGcUpxNDJYNi9Z?=
 =?utf-8?B?bmk1OHc1blczcEVkNmtiL2MrNHRCN0FpVXk4TWlpeGtzY3dpU0lCNlljMi82?=
 =?utf-8?B?WWI4Y2tJaDhKSjZOVkIrakRPMTlDOXV5QUNadm5pY1JXODZLVDc2cG0vQW1F?=
 =?utf-8?B?SldRendrejFWYytLSXA3QzF0eDlPaVhCMjR6NnRKNUdzakNzZ05CS2dZSnk1?=
 =?utf-8?B?dEhzNXVuT0o0Nk01bUdmdnhabnl0TDhHS0tscktad2xXcndCRUVCNzJMT1k2?=
 =?utf-8?B?NC9NdGJweXlLcGtNd1NsZm1OYVMyY0FMaHFFdFJBQXBaWUQwV0VRTFBWVmpN?=
 =?utf-8?B?VGJseEdJTUFQWksyRHh3dWVpUGk1eStKMzRseTFOUTZkdW9na0IwRVBvKzkx?=
 =?utf-8?B?ZXR4QUJ0U1Z3R0o1cU9jTEtJZE11OFpzYnFEOXV2TUUvdzBjWW1xZ01xT2NT?=
 =?utf-8?B?YlR4bEl2alRaanp0alA4SGdYTlI0TDlBTEFDd1c2NnAvaG1pK0pWNXdtRENh?=
 =?utf-8?B?RjJ6VU9XL0swdHFyUG1Hby9kUmlDNitRVTFGMHZMK0ErMW1WbjFwejE1bk5j?=
 =?utf-8?B?dHVyelUyQk5VN1N3RTBDaUprSHc1SzN5VnA4QlUzZjB1QjlLUkR4bE9FQzZo?=
 =?utf-8?B?V3E2aW9SR1B6TFV0aEdzVnNUbG1ESUNxU25PWUk3RjZMa01ZWEJVRWpJT2lY?=
 =?utf-8?B?MnN5d21qTUFNS045UXpHWHZJM2VDRjU3V3NKRm9aWlVWd1hBUUppMnk4UnJz?=
 =?utf-8?B?b0dYUDM2VmpqdzZqUXBUTExDY0dhdk9tMm5wakdZa205QjhiTWp2MTRyZE1n?=
 =?utf-8?B?WDhvZHZmS09qaFkvbnZmWVBTWjg2MlBxamRVMXFmdTVnYkFjdTFnN3o3RTJY?=
 =?utf-8?B?Sm8wdGpoaWU2SjJIYjIrT1B3U3l0dXZUaU9tM04xV0NYdjVYZmlMMTMxc0Uz?=
 =?utf-8?B?OFBvcjl6Uy9RVGlGUjFGbVQvd0t2YjJMM1VVOWZ3RVBsQ2lIMW51TnFaUUZx?=
 =?utf-8?B?b3FtWlFjUGtHK2lOeE8xK1pPMTZ2azdvL29tRkZRMkpoY0UyWFUrR1RqMVI2?=
 =?utf-8?B?OGwzTXE4STU0emFKUUd5LzlHV05qTVk2L283OFhTNFRiRTVneWhwN0JHM2xX?=
 =?utf-8?B?aStnR1JjWE1QUzJMOEMxa09GQ3JEWmpVU1Y3aVIyQnpKMUZ0MElVTzhQdHkv?=
 =?utf-8?B?TUhmVnBTK3Y3YXZPT3dlRHZFRlRlaEZUYU5BRnFjQzBJejNYa1BNQW1QRGhF?=
 =?utf-8?B?UGQ2SUZUOEJBenVQeVFIMloxMnc2SCsyR1h0eGtmQ3B1c3V0SWZ4U0VTZEs2?=
 =?utf-8?B?T2ZsV3c1dUZrdG82dXlBV1EzM2JSamNMa0tpd2JhY0MyKytMZXNCbE05aFNQ?=
 =?utf-8?Q?MPmstd8wzQijyVzHq+uppXOBD?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b06f0739-16dd-4135-0645-08dc3108fd8b
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Feb 2024 05:09:46.2912 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0aDNKJGI8MkpDbTSU6hXol4dHIhiPsYwprj+bhtf3cM415rqdIgL7O7TeiB95GtchsjEEeTRFdyArPl393UNQg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6735
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

PiANCj4gSGV5LA0KPiANCj4gV2hlcmUgaXMgeGVfaGRjcF9nc2NfbWVzc2FnZS5jIGRlZmluZWQg
aW4gdGhpcyBzZXJpZXM/DQo+IA0KPiBJIHdvdWxkIG1vdmUgdGhpcyBwYXJ0IHRoZXJlLg0KPiAN
Cg0KSGkgTWFhcnRlbg0KU28gdGhlcmUgaXMgbm8geGVfaGRjcF9nc2NfbWVzc2FnZS5jIGJ1dCBq
dXN0IGludGVsX2hkY3BfZ3NjX21lc3NhZ2UuYyB3aGljaFwNCldhcyBzZXBhcmF0ZWQgZnJvbSBp
bnRlbF9oZGNwX2dzYy5jIGZvciB0aGUgcHVycG9zZSBvZiBjb2RlIHNoYXJpbmcgYW5kIHRoaXMN
ClBhdGNoIGp1c3QgYnVpbGQgdGhlIGludGVsX2hkY3BfZ3NjX21lc3NhZ2UuYyBoZXJlLg0KQWxz
byBhcyBJIG1lbnRpb25lZCBpbiBjb21tZW50cyBvZiBwYXRjaCA0IEkgc2VwYXJhdGVkIHRoaXMg
aGVyZSBqdXN0IGZvciByZXZpZXcgcHVycG9zZXMuDQpBbmQgd2lsbCBzcXVhc2ggdGhpcyBwYXRj
aCB3aXRoIGxhc3Qgb25lIGJlZm9yZSBnZXR0aW5nIHRoaXMgbWVyZ2VkLg0KDQo+IE9uIDIwMjQt
MDItMDkgMTE6MTQsIFN1cmFqIEthbmRwYWwgd3JvdGU6DQo+ID4gQWRkIGludGVsX2hkY3BfZ3Nj
X21lc3NhZ2UgdG8gTWFrZWZpbGUgYW5kIGFkZCBjb3JyZXNwb25kaW5nIGNoYW5nZXMNCj4gPiB0
byB4ZV9oZGNwX2dzYy5jIHRvIG1ha2UgaXQgYnVpbGQuDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5
OiBTdXJhaiBLYW5kcGFsIDxzdXJhai5rYW5kcGFsQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAg
IGRyaXZlcnMvZ3B1L2RybS94ZS9NYWtlZmlsZSAgICAgICAgICAgICAgfCAgMSArDQo+ID4gICBk
cml2ZXJzL2dwdS9kcm0veGUvZGlzcGxheS94ZV9oZGNwX2dzYy5jIHwgMTggKysrKysrKysrKysr
KysrKysrDQo+ID4gICAyIGZpbGVzIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKykNCj4gPg0KPiA+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0veGUvTWFrZWZpbGUgYi9kcml2ZXJzL2dwdS9k
cm0veGUvTWFrZWZpbGUNCj4gPiBpbmRleCBjNTMxMjEwNjk1ZGIuLjJiNjU0YzkwOGZmMyAxMDA2
NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0veGUvTWFrZWZpbGUNCj4gPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0veGUvTWFrZWZpbGUNCj4gPiBAQCAtMjU0LDYgKzI1NCw3IEBAIHhlLSQoQ09O
RklHX0RSTV9YRV9ESVNQTEFZKSArPSBcDQo+ID4gICAJaTkxNS1kaXNwbGF5L2ludGVsX2dsb2Jh
bF9zdGF0ZS5vIFwNCj4gPiAgIAlpOTE1LWRpc3BsYXkvaW50ZWxfZ21idXMubyBcDQo+ID4gICAJ
aTkxNS1kaXNwbGF5L2ludGVsX2hkY3AubyBcDQo+ID4gKwlpOTE1LWRpc3BsYXkvaW50ZWxfaGRj
cF9nc2NfbWVzc2FnZS5vIFwNCj4gPiAgIAlpOTE1LWRpc3BsYXkvaW50ZWxfaGRtaS5vIFwNCj4g
PiAgIAlpOTE1LWRpc3BsYXkvaW50ZWxfaG90cGx1Zy5vIFwNCj4gPiAgIAlpOTE1LWRpc3BsYXkv
aW50ZWxfaG90cGx1Z19pcnEubyBcDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS94
ZS9kaXNwbGF5L3hlX2hkY3BfZ3NjLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS94ZS9kaXNwbGF5
L3hlX2hkY3BfZ3NjLmMNCj4gPiBpbmRleCBhYThjMTM5MTZiYjYuLmYxODU0NjVkNTY4MiAxMDA2
NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0veGUvZGlzcGxheS94ZV9oZGNwX2dzYy5jDQo+
ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3hlL2Rpc3BsYXkveGVfaGRjcF9nc2MuYw0KPiA+IEBA
IC01LDkgKzUsMTEgQEANCj4gPg0KPiA+ICAgI2luY2x1ZGUgPGRybS9kcm1fcHJpbnQuaD4NCj4g
PiAgICNpbmNsdWRlIDxsaW51eC9kZWxheS5oPg0KPiA+ICsjaW5jbHVkZSA8ZHJtL2k5MTVfaGRj
cF9pbnRlcmZhY2UuaD4NCj4gPg0KPiA+ICAgI2luY2x1ZGUgImFiaS9nc2NfY29tbWFuZF9oZWFk
ZXJfYWJpLmgiDQo+ID4gICAjaW5jbHVkZSAiaW50ZWxfaGRjcF9nc2MuaCINCj4gPiArI2luY2x1
ZGUgImludGVsX2hkY3BfZ3NjX21lc3NhZ2UuaCINCj4gPiAgICNpbmNsdWRlICJ4ZV9kZXZpY2Vf
dHlwZXMuaCINCj4gPiAgICNpbmNsdWRlICJ4ZV9ndC5oIg0KPiA+ICAgI2luY2x1ZGUgInhlX2dz
Y19wcm94eS5oIg0KPiA+IEBAIC0xMTMsNiArMTE1LDIyIEBAIHN0YXRpYyBpbnQgaW50ZWxfaGRj
cF9nc2NfaGRjcDJfaW5pdChzdHJ1Y3QNCj4geGVfZGV2aWNlICp4ZSkNCj4gPiAgIAlyZXR1cm4g
cmV0Ow0KPiA+ICAgfQ0KPiA+DQo+ID4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgaTkxNV9oZGNwX29w
cyBnc2NfaGRjcF9vcHMgPSB7DQo+ID4gKwkuaW5pdGlhdGVfaGRjcDJfc2Vzc2lvbiA9IGludGVs
X2hkY3BfZ3NjX2luaXRpYXRlX3Nlc3Npb24sDQo+ID4gKwkudmVyaWZ5X3JlY2VpdmVyX2NlcnRf
cHJlcGFyZV9rbSA9DQo+ID4gKw0KPiAJaW50ZWxfaGRjcF9nc2NfdmVyaWZ5X3JlY2VpdmVyX2Nl
cnRfcHJlcGFyZV9rbSwNCj4gPiArCS52ZXJpZnlfaHByaW1lID0gaW50ZWxfaGRjcF9nc2NfdmVy
aWZ5X2hwcmltZSwNCj4gPiArCS5zdG9yZV9wYWlyaW5nX2luZm8gPSBpbnRlbF9oZGNwX2dzY19z
dG9yZV9wYWlyaW5nX2luZm8sDQo+ID4gKwkuaW5pdGlhdGVfbG9jYWxpdHlfY2hlY2sgPSBpbnRl
bF9oZGNwX2dzY19pbml0aWF0ZV9sb2NhbGl0eV9jaGVjaywNCj4gPiArCS52ZXJpZnlfbHByaW1l
ID0gaW50ZWxfaGRjcF9nc2NfdmVyaWZ5X2xwcmltZSwNCj4gPiArCS5nZXRfc2Vzc2lvbl9rZXkg
PSBpbnRlbF9oZGNwX2dzY19nZXRfc2Vzc2lvbl9rZXksDQo+ID4gKwkucmVwZWF0ZXJfY2hlY2tf
Zmxvd19wcmVwYXJlX2FjayA9DQo+ID4gKw0KPiAJaW50ZWxfaGRjcF9nc2NfcmVwZWF0ZXJfY2hl
Y2tfZmxvd19wcmVwYXJlX2FjaywNCj4gPiArCS52ZXJpZnlfbXByaW1lID0gaW50ZWxfaGRjcF9n
c2NfdmVyaWZ5X21wcmltZSwNCj4gPiArCS5lbmFibGVfaGRjcF9hdXRoZW50aWNhdGlvbiA9DQo+
IGludGVsX2hkY3BfZ3NjX2VuYWJsZV9hdXRoZW50aWNhdGlvbiwNCj4gPiArCS5jbG9zZV9oZGNw
X3Nlc3Npb24gPSBpbnRlbF9oZGNwX2dzY19jbG9zZV9zZXNzaW9uLCB9Ow0KPiBUaGUgY2hhbmdl
cyB0byB4ZV9oZGNwX2dzYyBzZWVtcyBsaWtlIGl0IHNob3VsZCBiZSBwYXJ0IG9mIHRoZSBwcmV2
aW91cw0KPiBjb21taXQ/DQo+IA0KPiBQcmVzdW1hYmx5IGFsc28gdXNlZnVsIHRvIHJlb3JkZXIg
dGhlIE1ha2VmaWxlIGNoYW5nZSB0byBiZWZvcmUgNC81Lg0KPiANCg0KRmluZCBteSByZXBseSBm
b3IgdGhpcyBhYm92ZQ0KDQpSZWdhcmRzLA0KU3VyYWogS2FuZHBhbA0KDQo+IENoZWVycywNCj4g
TWFhcnRlbg0K
