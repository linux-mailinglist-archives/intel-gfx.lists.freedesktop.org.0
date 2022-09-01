Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 756B85A9C24
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Sep 2022 17:50:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EF7710E052;
	Thu,  1 Sep 2022 15:50:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2646B10E052
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Sep 2022 15:49:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662047398; x=1693583398;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=qdLgGpSoWYPgMoE2IImo6h6QW8xJu2iuoToOSBtkKss=;
 b=YNJ30UhudWIfIT1/jrVEPx12A8Xcqq3+RIh0/n1OZQFtu7YY4cB4xFIu
 2aYMZrj9tXwziCFSujR1CchiVfcHC12eCDxrFtsVKWVXHBZqGwAVyON+B
 go8RN1LqhqY6XQ2a6+Gxix2eAgb7hwcLzZSSgOJybR7C6mFx0Om7omFrx
 er7GV6mPoUV37CCZPS3LxTmMyJlKEP/qtSv5PjwWBVW9W3loLHZ96MeWi
 S78C/VGz1W16VZ1+cagXX5AMobVx5vEgC7YcOqMpGFtP5Y4RqETQYGN4y
 rX0OhqHrWjmClhxxNJVC5tF1L8VQdB0nU+/uH7ERlInOAIvQNRBxGFbIA A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10457"; a="296534861"
X-IronPort-AV: E=Sophos;i="5.93,281,1654585200"; d="scan'208";a="296534861"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2022 08:49:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,281,1654585200"; d="scan'208";a="788309441"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 01 Sep 2022 08:49:53 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 1 Sep 2022 08:49:53 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 1 Sep 2022 08:49:52 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 1 Sep 2022 08:49:52 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 1 Sep 2022 08:49:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ip0VBXGTMo6VIr7pPJPjaFkUqp/sTSZrFvWi40Dw6aeG7lUsL5pTHXdYKatw1eLjczRMy9xZgF4cmuoluXn+SrmD1jy9a+/t+mCRLZb5N5EA6cFg4gGwxIorSReoxpCBdT/3xJ7jISDST37NRgfQJy30haD+OSLqWACTciblQ+WaXcFgerkf4Wk8YnEmkapi4g5BJV7Sn8Xjqx9EExpSMGK81c5L/3oQO2xfxLwU3gKTigI5yfRZXtXCOwD/QXK8zxXEusT093EXLkXBUAQroaDqvGuaJ0K6DAvFfJf3j4OicY0/AlyX/VjvHEn/LBCDSbfJBqwNL7oI1JBHTkuxmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qdLgGpSoWYPgMoE2IImo6h6QW8xJu2iuoToOSBtkKss=;
 b=i1/sleQ6drQWxHoWLwPlMCuXXziNceyh368MKfIWBbH1T1JWemdsC0qKEA4K0RnQrhPzNkOJssZUkFPQ6Urv8WKRmO8uDkOwZMvqpiL5vyq32A6QzU9Od58kaDlyQBSNwt4DnmAyBEbunPHa7NLMTt4GtwEXmRRcC/2owdUz48vFq3R8IUzmvo8IKvcuRSMx2anMvC8DIb85UgGgZqpy+xKQeurETZIWJYvk+C9ztF/0XscV3hAFxzsmIFVgSF4d17IcBD0OIyGV68DqnQH5DWREiGT3K5Pr9ibRyOA5wzJefmLBAGCVygGu8UaJgkmK1RJGzdBUkkq05xsbSYACwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 CY4PR11MB1957.namprd11.prod.outlook.com (2603:10b6:903:120::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.10; Thu, 1 Sep
 2022 15:49:50 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::fdd1:18b1:3e9c:b03e]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::fdd1:18b1:3e9c:b03e%6]) with mapi id 15.20.5588.012; Thu, 1 Sep 2022
 15:49:50 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Harrison, John C" <john.c.harrison@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] Revert "drm/i915/guc: Add delay to disable
 scheduling after pin count goes to zero"
Thread-Index: AQHYs8i3+LrQa+g2eEi3ULk1tRgCA622Xg2AgAAQXqCAFF9jAA==
Date: Thu, 1 Sep 2022 15:49:50 +0000
Message-ID: <2d7c041b6a7a5ef532703c802c31c0e91ae9a73e.camel@intel.com>
References: <20220819123904.913750-1-matthew.auld@intel.com>
 <0c101646-cd51-7a39-6f44-67f34aca2770@intel.com>
 <DM8PR11MB57517286A18D8F58F8D330CC8A6C9@DM8PR11MB5751.namprd11.prod.outlook.com>
In-Reply-To: <DM8PR11MB57517286A18D8F58F8D330CC8A6C9@DM8PR11MB5751.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c5fc8c18-798e-4a49-fa07-08da8c319af3
x-ms-traffictypediagnostic: CY4PR11MB1957:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cfsQEqTjfyRz8HF5TUGeSP82R6d0gNzgwMsgwoZXfG95QqQ/s73+o4McJ4buhLNDBt4hu3LYAg1rdRgRP7/sCfHkK2NHzX/r36gnmsll9RDv0aRi1xFgqFOZkvFj/PUNOThXKSrtdZoN8D+tacoFWXqHNAC5Juu5FOswU1Hr9FVYrQE5qIibBT3/ypGKjTg+2XG3biwvV2iKEyRriHzabaR+StKnKxG01O40ignXxXOoIpprJHMunyndzGJ7Nr9GJjqYXYfNZaZPaHogZ3DB8i/MzT3sVafG21rQy0ZdF+2mhm0RStC4G6A+M2WTouLJmDfdCPpIeOub+tcFcHCq6W2Y5MzME5am19ogAR8dppO9n6PiYYNKoNs6KtdlBOaPjvhS/lVeFmG+JbiuLGJa/8oQJYFwYH8190tMU8OUc6T5uDpLf3ZUv5kNYngp2HFWwOd3wnE8kO9HEODIPMqbrAvXUZY8DbsDKBXI1XwyIN7gP9NQkHkVMacZCyb5PdNzIgKCTbpPUwGwS3G9BrdD37sOpZW+Ij5qSyiD96k1z9xdnHe3kSEeriGxXQe/5HN1i2yVRSOOp55SocW2KuSznKDaO89qCmkP1VJJsGQUQsBhFDr3aOiuwZyXMzwjUIXd283/Da+QBoPtCUpQAxcGGQ/gaw9A1bpJwHVyWrfvVeYS0xRkyBnQN0qXkD2YR7hHW6eNz03FZbDXn191BooRD6UKZlUnzJeVezDZXzhDEK6pORo42LeVykRjLHZkrNS+lVKshW75p+d5oacmHEU4wTxwNU11rifEcocwwCWKxSE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(376002)(366004)(346002)(396003)(136003)(66946007)(64756008)(26005)(53546011)(6512007)(2616005)(83380400001)(186003)(76116006)(66476007)(66556008)(6486002)(82960400001)(8676002)(966005)(4326008)(91956017)(38070700005)(478600001)(6506007)(86362001)(66446008)(316002)(2906002)(38100700002)(107886003)(36756003)(8936002)(6862004)(54906003)(37006003)(6636002)(122000001)(71200400001)(41300700001)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QUJFcUwzb0FaRXQ1YngrYkNqUWM4MmE4Q0djSlc2R1FJTDVleWsrQkcvajBn?=
 =?utf-8?B?d0x5cWg4UHRQc2lHSXM3YWNBdG5HOGpvS0pIbWkzSjB1MXpUZjh4Tm1CdXNp?=
 =?utf-8?B?ajF1UG56UHJHanYvVW5DSFhNMHBJSVFtQVVEWGtlWjZlOG5ab1lnQldBV3JM?=
 =?utf-8?B?aUx2UjJKV3Rod2dYK0N4c2ljeG1KVmk3dzVqRGZxcW81NW1kcTlPOTRjamVM?=
 =?utf-8?B?cWErVGtMRm9xRGdSWG5OSTRhYXhOSDI3MExLcExMME9ZdzZXNzczS2ZKdWpl?=
 =?utf-8?B?SjBJVzZUc0FJRkhRN2xzbjlza3dHVlNXbkN4d3Vxc3FlWUZrNHVGQXk2VkhW?=
 =?utf-8?B?b3N3QlpycDRYcW9vVjZhak93Y3dhcnptcjBVY2dDTGF6RHR2bjVwV2cyazV5?=
 =?utf-8?B?T0lvM0xlL0N3c1Fndy9pZkNtRmJydW5lclQwQ2xabW5PTGlsclVqSkR0NU1X?=
 =?utf-8?B?azg3WUlXSGQrS0xCUlUxR1ZZVUVoRFZBTTNJUmZ2RHh2aHBOM2x0d1J0T252?=
 =?utf-8?B?eXZ4VUFDZURzV0g2cXgrcCtHblh4d3k2UGdEbWlvNUM2cjQ4SHNKUTdHT05x?=
 =?utf-8?B?NWxUMStNQ1FuUDhJQW5FNURnYXMwdEVoRXpPczRkZWQzSzFOcVlVdW94bDVS?=
 =?utf-8?B?NUh0SDZNY3UrWlIvUit5cVRpSmlFTVU5Y2J1TDhPVnV3dE5rSkt1bXNKWllZ?=
 =?utf-8?B?NExJTTc0V2x6aDNOTUdNSXBQeUwxa0o3UXArTmVqZ3h4dU5MY2lyclRMN0VS?=
 =?utf-8?B?QzJERnZEM0kvYzBiNktQZ1lxRVRLYmhNb0tsalFBMHFKZTl4cW1PVnVKdVZm?=
 =?utf-8?B?UHFmZ1ZjU2JGcGQ4b05rd2hTd0RFZ0phWjN3TU9UcVhQOWcwN25iRnNWTXY4?=
 =?utf-8?B?QWNMM0orQkRJTmE3VDRqR2IzN3ZJcEZHQTluNFNPZVdoOG40cWZXS0w1OURO?=
 =?utf-8?B?TWhtY1BUQS92WkxDazV5MDEwWFBCN282dUpGUStGWTYzNXBaOEdPa0UrUDY4?=
 =?utf-8?B?UFhlL0ZVejB3ZjBMaFlVUGpKbDRPOW05Y2ZpKzl2R1hpSWRJY05DeVBCTlJI?=
 =?utf-8?B?ZUw5R2JYVkhZRkYzOVdKM0RGeTdEL3BkVm9xdDIvcTdmY080TFZ2aEI0SDdD?=
 =?utf-8?B?RktzM3J2UlF5QTdxNEtVMm9IL0kzK3BrUExVMm1qLzJ2dm1tcTc5ZGNsaUtv?=
 =?utf-8?B?QXVuV2IwTU5OTGZ6VDQvb1RyMVNQdHNHM1JUWG5OOGRKRFdmalY5OXBobFBq?=
 =?utf-8?B?cE54OFV6K0kvVmJGK2ZUcVRPVFJBNDE3cjRDYndyNDY2b1B6eHRxT3ZPVW9i?=
 =?utf-8?B?ZkZDQXhFNFd2R25jc1hEUENZSWZDaUZDbjFvOXV3ZWlGOUVqVm1HL0NzWUNV?=
 =?utf-8?B?dDhJWktWQzRITFZMMFA3ZXduRVBlOTRkeTlqb1ZSdnp1WnpzeERSb1dzcGZ2?=
 =?utf-8?B?aDY5SUk5Mk4rU0VIYndyYXo4dDZlOWpLZElSQ21VZ1JaYlRPZEkycnA3YlB1?=
 =?utf-8?B?Mk91ZHVoenZKUlNZdjZaQ0s1OTlGMWVCaWNZdkdGZFVLblNCeHVoQ0o3eEhz?=
 =?utf-8?B?enpTeWhGZ0cwZ1NSTG11WE0xU1Z5MjhySTVpQjU1R0dya1grdDRkQzhQVVBp?=
 =?utf-8?B?UEpNMjV5a1R6RzgxYnYwSnNzei80WExiUlR5OVp2V3lzQTlCWi9qdlBsQ3Ex?=
 =?utf-8?B?Y1RvdUF3TXRhQ1hWYVRmL3RHR09LUGZpUEJTRFJudWZRUDBsU3JoNWpuQmtQ?=
 =?utf-8?B?Yk9mSXUvTzEwcmdrOVhSN3pTTHhzelBKcjJRcHpsNWd0TTE5TnozcWc3b0RU?=
 =?utf-8?B?Yi9WMjZhZzhEdnU0OXg1Z21ET0w1SkRPSXgxVUhzNVFud3pzV0w3QUt0V05z?=
 =?utf-8?B?N1hqWDRQSHNSc1JIQWxLNnFaak10S3I4dHNFUXpEQ2hmd2wzdjd1d0JRT1BS?=
 =?utf-8?B?dDcxcVE2eVh2VnQ1Rm80R2U1ODFQTDhxQVpyTWt6T21IR3pqUHRzWVppaDBB?=
 =?utf-8?B?ditFOXpVVnZNeU9XUXJyWDlKMlhJK0s0ajdmOHNySU94SE1TT3BZT2ovQy9Z?=
 =?utf-8?B?ZDdzUWhxWHgrcXRoMkF6V0xWL2lQYUd1dU9kVU5wNHZkSFpsbFRqRVhlWUpq?=
 =?utf-8?B?NmFrS3VpcmhERzMvOGFhUWhHT0doRWpjdi9IUzlMbGhTM3Q2eWliV3pSbTgr?=
 =?utf-8?Q?USMv16p2FD4DUhaOeYlbzNkBLq++ZF0tqnKQXDaIG8ro?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <FAE48F5689A5604D84324988866BFB09@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c5fc8c18-798e-4a49-fa07-08da8c319af3
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Sep 2022 15:49:50.6844 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Bkeaq0CTECK64RF+jIUOg/V37+gs91ANJbrxzVYz5fWiS3LczzPh4T3Plf5kaXDrBSRGXq/ro5sPCQ4e6MlXGy5xdv7Tv/mrmvO/qejeL9lik5Re3++U26osC/+Y/PAf
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1957
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] Revert "drm/i915/guc: Add delay to disable
 scheduling after pin count goes to zero"
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Auld,
 Matthew" <matthew.auld@intel.com>, "Teres Alexis,
 Alan Previn" <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SSB0aGluayBpIGZvdW5kIHRoZSBwcm9ibGVtIC0gd2lsbCB0cnlib3QgbmV4dCBiZWZvcmUgcmVw
b3N0aW5nIGEgbmV3IHJldi4NCg0Kd2FzIGEgdGVycmlibHkgY2FyZWxlc3MgdHlwbyB3aGVuIHJl
YmFzaW5nIGZyb20gaW50ZXJuYWwgZm9yIGRybXRpcDoNCmd1Y19jb250ZXh0X3NjaGVkX2Rpc2Fi
bGUgY2FsbGVkIGRvX3NjaGVkX2Rpc2FibGUgd2hpY2ggd2FzIHN1cHBvc2VkIHRvIGNhbGwgX19n
dWNfY29udGV4dF9zY2hlZF9kaXNhYmxlIChpZiB0aGUgY29udGV4dA0Kd2FzIHJlYWxseSBtZWFu
dCB0byBiZSBmaW5hbGx5IGRpc2FibGVkKSBidXQgaW5zdGVhZCBjYWxsZWQgZ3VjX2NvbnRleHRf
c2NoZWRfZGlzYWJsZSAobm8gdW5kZXJzY29yZSkgY2F1c2luZyBhbg0KaW5maW5pdGUgbG9vcCBm
b3IgbWlkLWRpc2FibGluZy4NCg0KLi4uYWxhbg0KDQpPbiBGcmksIDIwMjItMDgtMTkgYXQgMTY6
NDcgKzAwMDAsIFRlcmVzIEFsZXhpcywgQWxhbiBQcmV2aW4gd3JvdGU6DQo+IFdpbGwgbG9vayBp
bnRvIHRoaXMgLSBhcG9sb2dpZXMgZm9yIHRoZSB0cm91YmxlIE1hdHQuIA0KPiAuLi5hbGFuDQo+
IA0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBIYXJyaXNvbiwgSm9obiBD
IDxqb2huLmMuaGFycmlzb25AaW50ZWwuY29tPiANCj4gU2VudDogRnJpZGF5LCBBdWd1c3QgMTks
IDIwMjIgODo0NiBBTQ0KPiBUbzogQXVsZCwgTWF0dGhldyA8bWF0dGhldy5hdWxkQGludGVsLmNv
bT47IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IEJyb3N0LCBNYXR0aGV3
IDxtYXR0aGV3LmJyb3N0QGludGVsLmNvbT47IFRlcmVzIEFsZXhpcywgQWxhbiBQcmV2aW4gPGFs
YW4ucHJldmluLnRlcmVzLmFsZXhpc0BpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0hd
IFJldmVydCAiZHJtL2k5MTUvZ3VjOiBBZGQgZGVsYXkgdG8gZGlzYWJsZSBzY2hlZHVsaW5nIGFm
dGVyIHBpbiBjb3VudCBnb2VzIHRvIHplcm8iDQo+IA0KPiBPbiA4LzE5LzIwMjIgMDU6MzksIE1h
dHRoZXcgQXVsZCB3cm90ZToNCj4gPiBUaGlzIHJldmVydHMgY29tbWl0IDZhMDc5OTAzODQ3Y2Nl
MWRkMDYzNDUxMjdkMmEzMmYyNmQyY2Q5YzYuDQo+ID4gDQo+ID4gRXZlcnl0aGluZyBpbiBDSSB1
c2luZyBHdUMgaXMgbm93IHRpbWluZyBvdXRbMV0sIGFuZCBraWxsaW5nIHRoZSANCj4gPiBtYWNo
aW5lIHdpdGggdGhpcyBjaGFuZ2UgKHBlcmhhcHMgYSBkZWFkbG9jaz8pLiBDSSB3YXMgcmVjZW50
bHkgb24gDQo+ID4gZmlyZSBkdWUgdG8gc29tZSBjaGFuZ2VzIGNvbWluZyBpbiBmcm9tIC1yYzEs
IHNvIGxpa2VseSB0aGUgcHJlLW1lcmdlIA0KPiA+IENJIHJlc3VsdHMgZm9yIHRoaXMgc2VyaWVz
IHdlcmUgaW52YWxpZD8gRm9yIG5vdyBqdXN0IHJldmVydCwgdW5sZXNzIA0KPiA+IEd1QyBleHBl
cnRzIGFscmVhZHkgaGF2ZSBhIGZpeCBpbiBtaW5kLg0KPiA+IA0KPiA+IFsxXSBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL2luZGV4Lmh0bWw/DQo+ID4gDQo+ID4gU2ln
bmVkLW9mZi1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPg0KPiA+IENj
OiBNYXR0aGV3IEJyb3N0IDxtYXR0aGV3LmJyb3N0QGludGVsLmNvbT4NCj4gPiBDYzogQWxhbiBQ
cmV2aW4gPGFsYW4ucHJldmluLnRlcmVzLmFsZXhpc0BpbnRlbC5jb20+DQo+ID4gQ2M6IEpvaG4g
SGFycmlzb24gPEpvaG4uQy5IYXJyaXNvbkBJbnRlbC5jb20+DQo+IFJldmlld2VkLWJ5OiBKb2hu
IEhhcnJpc29uIDxKb2huLkMuSGFycmlzb25ASW50ZWwuY29tPg0KPiANCj4gR2l2ZW4gdGhhdCBD
SSB3YXMgY2xhaW1pbmcgYSBwYXNzIGZvciB0aGUgb3JpZ2luYWwgcGF0Y2ggc2V0LCBubyB3ZSBk
b24ndCBoYXZlIGEgZml4IGluIG1pbmQuIEl0IGlzIG1vc3QgZnJ1c3RyYXRpbmcgd2hlbiBDSSBz
YXlzIGFsbCBncmVlbiBpZiB0aGUgZW50aXJlIHVuaXZlcnNlIGlzIHNvIGJyb2tlbiB0aGF0IG5v
IHRlc3RzIHdlcmUgZXZlbiBydW5uaW5nIDooLg0KPiANCj4gSm9obi4NCj4gDQo+IA0KPiA+IC0t
LQ0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYyAgIHwg
ICAyICstDQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9jb250ZXh0LmggICAg
ICAgfCAgIDggLQ0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dF90
eXBlcy5oIHwgICA3IC0NCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1
Yy5oICAgICAgICB8ICAxNyArLQ0KPiA+ICAgLi4uL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9n
dWNfZGVidWdmcy5jICAgIHwgIDYwIC0tLS0tLS0NCj4gPiAgIC4uLi9ncHUvZHJtL2k5MTUvZ3Qv
dWMvaW50ZWxfZ3VjX3N1Ym1pc3Npb24uYyB8IDE1NCArKystLS0tLS0tLS0tLS0tLS0NCj4gPiAg
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc2VsZnRlc3QuaCAgICAgICAgICB8ICAgMiAtDQo+
ID4gICA3IGZpbGVzIGNoYW5nZWQsIDI3IGluc2VydGlvbnMoKyksIDIyMyBkZWxldGlvbnMoLSkN
Cj4gPiANCg==
