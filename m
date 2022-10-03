Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 251905F35CA
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Oct 2022 20:46:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FF2E10E467;
	Mon,  3 Oct 2022 18:46:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF8E810E467
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Oct 2022 18:46:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664822791; x=1696358791;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=HuBmwOPrRCMQEKdtIhJ4sUEZSBBSGwhnrwoAoYzMylE=;
 b=Lmz1QnUYcD7RN+19Rr2VQwQEOq2cQvpPbdakSTQLlL+NjVBydxPwQfcl
 iy8a2JUvTyrUcvXOiEnkiWlhm3J5rYZrIkkde/LYT2b+BWLn0u7HN91hn
 DZWsbKsg2UnKr5x7UxIDkDoFflU1zXtj49iXPBLZK4Btw5eWbHbyM7qxK
 dsVYf9QjwsOgX7Qqyc3DmczQhktok4rKYAa0cDWVd5zrW5JSMrQyMWjBp
 AE2hp8SNuZHVZuMHfmz8WW5ZUQsVI4OJqUn5rdWlCfJsyW0oXslgKl9Ma
 yAfuOVy9veCCKjh+mcMp3eR6HfEmvhh1LRzBgFka2Jw7J+YD4exA8Jg0+ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="366823509"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="366823509"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 11:28:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="749100648"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="749100648"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP; 03 Oct 2022 11:28:31 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 3 Oct 2022 11:28:31 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 3 Oct 2022 11:28:31 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 3 Oct 2022 11:28:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ke86QAC16cjm9BFG4Kd6lAUmpBmUgcxZ88VEf2c+4vzysUKkleSgtWStnYePGk3ARaExKKV6c0rbb/VMChxYzabpq6Baip0kmWNvO6J5hZc9WGVOUjgy7qebld0/UTxn+yq+L3l6xKewXYd44qGKLkSCFROtqWEkqeuEZ3ozEEWoyQEu2nHkokJlrxr9eVKnP0rgLriR0F3simBjJQoQ+wYuBhlkC8Q231TyHBdiw8b8Oyt+QcR/46WYK4woFSXMuE3Q1DIMIvJHv6vIPR14qX77ZGI2ydc/vop80POtSeWCwlTRWdmqfNRqTlp/gzwCnvDWpwVfAq6pIlj5p70uPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HuBmwOPrRCMQEKdtIhJ4sUEZSBBSGwhnrwoAoYzMylE=;
 b=CWfUmPW/oKjoZiYE3ElOl/H31654Gl09yagG1Lx/QelHMz+qrVcIzUFAa2AnpCVNLc0I6UY+dgAM9DvEj9gm8LpS+Wlg0C0HQ3Ushm2bLPVnTYbOxIFnXeEPVQ0hjk94raqbIqXtGHTyJR002p+dJsHXUb363QU+x7Tu1UI0snySQCSlZb2dkUBYZamWcuHmF+j/F3lqPS7yIMNYblE1/UTEG4biZzkIUTDJQq2yT9W0bGPr1tHH8RAq7Yjm/3olsXv4BjABSdxRIDuD8xoR0Nnd6ix0Z0SaCxlzQJgYRIUyN+R5jLw8s3twGbSM1qo+jJgzZYy4n3x+fd+bYyIQcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 SA1PR11MB5898.namprd11.prod.outlook.com (2603:10b6:806:229::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5676.28; Mon, 3 Oct 2022 18:28:29 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6f3a:c6aa:731c:d1fd]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6f3a:c6aa:731c:d1fd%7]) with mapi id 15.20.5676.030; Mon, 3 Oct 2022
 18:28:29 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Harrison, John C" <john.c.harrison@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/1] drm/i915/guc: Fix GuC error capture
 sizing estimation and reporting
Thread-Index: AQHY1Gii8wVN8waP5ku0rjVTVFyRb634QOaAgAA4iwCAABeUgIAEcpSA
Date: Mon, 3 Oct 2022 18:28:29 +0000
Message-ID: <2cb443945f86c2bbcfef78ca19cc4a85fdae3666.camel@intel.com>
References: <20220930010507.108296-1-alan.previn.teres.alexis@intel.com>
 <20220930010507.108296-2-alan.previn.teres.alexis@intel.com>
 <49be7acd-79b8-2937-96ec-5a9728006d76@intel.com>
 <acdf464bc515f0489c70c9282dcccce1cc2e85ca.camel@intel.com>
 <0dad721a-2308-588c-8b7d-8ac98d17f3dc@intel.com>
In-Reply-To: <0dad721a-2308-588c-8b7d-8ac98d17f3dc@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.1-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|SA1PR11MB5898:EE_
x-ms-office365-filtering-correlation-id: 65b3dc64-3ebc-488e-72a8-08daa56d1199
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PQbpYNe2gzca7PPvJLmCPFkp3ONcitEi0peq4w8NQ/MvLTr2ZKmvfbOTUKxV7+r4T0R+2TsSslJS+yr+z1NZTe/ojvDVTurJk79ZJ9AdeF9IdtS7c/qoPTo7yzEIMr4QHPx0qYmOfB3C/FRfFbPxqeN4P2Q3Vn5YFNTWyNs4KYQ2d1nKqowKykEc5iwwGbQBIbwXmp9ma9WkvxXvBVetMkZpN0TL6Q8i2YAKcflxoyqjz+23BdWOqrKC+X3u/yWSOj/llsc57zUVKYMVvfg0cAaNZB6YTqipdXGABT4vz468idSvnaKmnhO6s92rcSdkn3JsvRfDDpe26/Y9DzD3y9lWlu7dGersoAbZtdVP5JiNoef6RQABTyLPrKd53R3FLs1+zbFM2FRkaeunHoBiUV/ViVzN05gVV7gbc0iBI7q4UrL7AHHhsagRkHunaBKZOQBlmSxwmVOe3v/PWhMN4gLSJIy6hcqaZ18VTsYq6PitIcJdK/5ZLrk7NBE5TLvhyGPBAk4hZ/DPPspibHb9rmZuwA2p1GlZnR0uwY+umsz5pTzB2DIkySqzBHUAfoKtV7HaRcu7d6SEvdjduQsEhLzgSnTsSlV0jy+a5xhDsxtMOV2a/HU9a7/W40pdmdBLGxYgv7ZLuLNKicH9ruCKujU9OZr42yptjXHJJrCyauZa9SAGOfF3gAjZHllKQDWsFAvlXGXZS6Bn6bEKX8gvy8yH3o7AU2P/c2C6Kp7CTa6NdI16HJzmnGwvhvNCsdj/7pEXMWw+XZgt0WGi9xRAWA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(346002)(366004)(39860400002)(396003)(136003)(451199015)(38100700002)(122000001)(82960400001)(6512007)(5660300002)(6506007)(2616005)(186003)(2906002)(8936002)(36756003)(110136005)(316002)(91956017)(71200400001)(41300700001)(6486002)(83380400001)(26005)(86362001)(478600001)(38070700005)(53546011)(66446008)(76116006)(66476007)(66946007)(8676002)(66556008)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VW1rNkRLYWJIWmJlMDZUK1hMRER5TTZSMmRVeE5sVkNwNytPa1F2a3NOVU84?=
 =?utf-8?B?d1pSQWdMSGtHaG1UZmc1Q0s0ZlBjTExLdDYyYXBzbXRXRFlHMVNpV1lYdTYw?=
 =?utf-8?B?ZGlxUTVPU1F4eEtpa1RhNDFqMC9NTk1DakNUdXJFbzhhaUx6Vm9ua2dta2VZ?=
 =?utf-8?B?ZlFvTk9XRisvRjFza1BYK013WFdVV3dIRjJHREJKRCtUMll3VWt4Q0xJWnVM?=
 =?utf-8?B?dzM2OUNkbkJ1Z2dSV0laMEJ5cGlvcmh0VmJsMFBDZytPV0VGdmVrd01jS2tC?=
 =?utf-8?B?bm1rVFhxSm9wMkNFblZLVkxlMjVOWkVjbTRYaXN4WXB4Q3FaOUlOSCtuYWRi?=
 =?utf-8?B?cTVWanpsdnlkNEtkY3V3enhRUXNXR2o1QnRtY1doeWpyYmVvaWlzQjN3YVB3?=
 =?utf-8?B?SENpVEdGa3VHSmE0SjlBNzl1MGozdWsyc1pjbE9uODV5QkNXeVB1aTdQOHNt?=
 =?utf-8?B?Syt5Vm5GM0MzRisxRWYzZTJURmlNTXZUSFBiaS9XVkJ6OGFCUFYzYmdzNXVI?=
 =?utf-8?B?MHMwQjYyOWxNRnV2ZEh2OHZQRXpGcktKZDNkVVdOcTVnOUI5YmdDQ2lvZ2pz?=
 =?utf-8?B?Q1FOcXFsOFY1OWl5TjZjTEFrTmJzYUxqSHhiYjZzZ0VKUmF1c1JDYitNd2Ev?=
 =?utf-8?B?dEFUL0ZiVTAvZjZJMG05bXhGbm1uUWRXaDZ4WGhxdXEzSkIyYUpYbkdPSDNx?=
 =?utf-8?B?Q2wvb0tnZnRlUHhBNm43Z3gvWk5vaUtWckQ2OWYxanNFVGZDVEtWUGpaMDJa?=
 =?utf-8?B?bDlwR0ZYbER0TmxtM0szbVpvRUZQL3ljTzhJcW9sY1Byd2huSWNxWW50ZVpG?=
 =?utf-8?B?M1ZHRURmdEIxaW1WVUNiMUo2a3RLZVprUUIwd25IR1RSbEtMRUk2aVpxZXlr?=
 =?utf-8?B?eEtqS1NhbFFNOEhSdWUzam5WeXVrQVZreGZXTU5wRkkvc2U2YkVjNGtHMHIy?=
 =?utf-8?B?QytPMU1BeVh0M1ZkVjZJdW9rQklOK2Q2VDNISVpud0hKVkRHS2N2MmE4MTRV?=
 =?utf-8?B?dDdCaUxHeUpPcmhueDIxR3AwNWhTZElXQnFTQytiUlNsS3o1d21saG1pR1JM?=
 =?utf-8?B?L0s0cW45VnFjb0JVSFVsbVRPT3RzenhhU09BNkFYNE82L09WSjVOOXNrdmxJ?=
 =?utf-8?B?RzFZeDVKdXp0RTlwdEZqUGhDc2FtdFcyNm5LbWZtZTB4Uit6UWQ2czJQcHly?=
 =?utf-8?B?c1plUU5pSjRPU0IydEhJeS91YkQxR2U4S1dPemhrZnFHb1NTbG84cjNaRGt0?=
 =?utf-8?B?ZUUxWVFOQ1RjeTRrZzVZcU5Ud2VIM1Jib0lKZEdTS242K29nSDF0MjBMWk1D?=
 =?utf-8?B?U1lPWmI3MzE0Nk91SlFlVkhqRDRKYnU3YW1qOGVGVXY5K0NKQmdtcThpM0NN?=
 =?utf-8?B?MlY0SDZEVDd4K2gxMkNyY2Y2YmsvZ01SbytlTzN2L04vZmw2Q3dkQnkraXZ0?=
 =?utf-8?B?aEcyWG9HTy9KQ1VEdThGK0ljSndNd294MEtqVUhJa1Y2QWZWSkhWVjhQaStN?=
 =?utf-8?B?TzBYRGxwMUM1WEw5czVLZXdibXM3c1A3VTI5aGR0LzZsNTdDSlluR25rTGxI?=
 =?utf-8?B?ZHRnWmJ0L2NsLzRLK1cyam4xbDVzRzFVVUY5aVdUNDB4S2NtR0xGT0tPK0Zj?=
 =?utf-8?B?SEJkWjJ3RGpjcFRoV09aNHhGak1yMGNJbEg0bXErOG5nazBIbVBLVkM1YUkx?=
 =?utf-8?B?bEw0cnNVeWdYSVVSZWtyNjh5aU9MYWtacVI2RDljNGhhSFBKTy81eXd4ZkRV?=
 =?utf-8?B?d3JXSGlxNS9ZYW14eGFFL1ZUQWFJeGE2eDNzOGU3VVhSakVUcE8xR2ZBK21z?=
 =?utf-8?B?WTBMKzRXbUdyMHlRRmF5TmRyb3VOTE9rM0RMMCtHajFsNUlReUhYNCs5eDRm?=
 =?utf-8?B?UU5qVXRYV0ppRmgwWnFBNkRIOWNQZ0NtTFd5RnRiTVY2TFRsQmNqVk9yOHpz?=
 =?utf-8?B?RTRmeTFCMDU4WTIxeHRja215VmZyWWo3LzJVRmlVeWxUNDBOdkEyc2FlcTFS?=
 =?utf-8?B?enB1SkJxUFg2b2QwUU0zNWl0NlEvdjdIeWFLRGtTOWpBemZKUm5PVHlkRit0?=
 =?utf-8?B?bDdUMjV4UXhMNWlMWmFWK2l6K3d3c2g0aE5WSFg5NHRSRVdYK2NHMU9SVWR5?=
 =?utf-8?B?TWhxeWkyZ2FmbGNBaXJRWFZEMUdIdFBiNk4vaGgvUkd6RFA2REg2NlhIaFo2?=
 =?utf-8?Q?0NSZDgpLLh2xMaiJZWZmaJA=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <4C7C58E35902F54F9D7D16C51A2FB208@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 65b3dc64-3ebc-488e-72a8-08daa56d1199
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Oct 2022 18:28:29.1321 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ILbgyWilR0EKKyMobnd3RFLduR2FP1On/xlNOnvAW1FZ9JloPR4vHzzQkosyB6q19enjh46latMdV1NrPE+h7A4iEGMH+DdKVCObJHqO+CANYfETR1YHRKeG4uguB1Dm
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5898
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/guc: Fix GuC error capture
 sizing estimation and reporting
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

DQoNCk9uIEZyaSwgMjAyMi0wOS0zMCBhdCAxNTozNSAtMDcwMCwgSGFycmlzb24sIEpvaG4gQyB3
cm90ZToNCj4gT24gOS8zMC8yMDIyIDE0OjA4LCBUZXJlcyBBbGV4aXMsIEFsYW4gUHJldmluIHdy
b3RlOg0KPiA+IEkgZGlzYWdyZWUgYmVjYXVzZSBpdHMgdW5saWtlbHkgdGhhdCBhbGwgZW5naW5l
cyBjYW4gcmVzZXQgYWxsIGF0IG9uY2UgKHdlIHByb2JhYmx5IGhhdmUgYmlnZ2VyIHByb2JsZW1z
IGF0IHRoZSBhdA0KPiA+IHBvaW50KSBhbmQgaWYgdGhleSBhbGwgb2NjdXJyZWQgd2l0aGluIHRo
ZSBzYW1lIEcySCBoYW5kbGVyIHNjaGVkdWxlZCB3b3JrZXIgcnVuLCBvdXIgY3VycmVudCBncHVf
Y29yZWR1bXAgZnJhbWV3b3JrDQo+ID4gd291bGQganVzdCBkaXNjYXJkIHRoZSBvbmVzIGFmdGVy
IHRoZSBmaXJzdCBvbmUgYW5kIHNvIGl0IHdvdWxkbnQgZXZlbiBtYXR0ZXIgaWYgd2UgZGlkIGNh
dGNoIGl0Lg0KPiBTbyBtaW5fc2l6ZSBpcyBub3QgYWN0dWFsbHkgdGhlIG1pbmltYWwgc2l6ZSBm
b3IgYSBtZWFuaW5nZnVsIGNhcHR1cmU/IA0KPiBTbyB3aGF0IGlzPyBBbmQgcmVtZW1iZXIgdGhh
dCBmb3IgY29tcHV0ZSBjbGFzcyBlbmdpbmVzLCB0aGVyZSBpcyANCj4gZGVwZW5kZW50IGVuZ2lu
ZSByZXNldC4gU28gYSByZXNldCBvZiBDQ1MyIGFsc28gbWVhbnMgYSByZXNldCBvZiBSQ1MsIA0K
PiBDQ1MwLCBDQ1MxIGFuZCBDQ1MzLiBTbyBoYXZpbmcgYXQgbGVhc3QgZm91ciBlbmdpbmVzIHBl
ciBjYXB0dXJlIGlzIG5vdCANCj4gdW5yZWFzb25hYmxlLg0KPiANCkFsYW46IG1pbl9zaXplIGlz
IGEgbWVhbmluZ2Z1bCBzaXplIGZvciB0aGUgd29yc3QgY2FzZSBzY2VuYXJpbyBvZiBjb2xsZWN0
aW5nIHRoZSBndWMtcmVwb3J0LiBIb3dldmVyIGR1ZSB0byBncHUtY29yZS0NCmR1bXAsIGl0cyBu
b3QgbWVhbmluZ2Z1bCBpbiB0ZXJtcyBvZiByZXBvcnRpbmcgdGhhdCBpbmZvcm1hdGlvbiBvdXQg
dG8gdGhlIHVzZXIuIFRoYXRzIG5vdCBhIGxpbWl0YXRpb24gb2YgdGhpcw0Kc3Vic3lzdGVtLg0K
DQo+IEl0IHNlZW1zIHBvaW50bGVzcyB0byBnbyB0aHJvdWdoIGEgbG90IG9mIGVmZm9ydCB0byBj
YWxjdWxhdGUgdGhlIA0KPiBtaW5pbXVtIGFuZCByZWNvbW1lbmQgc2l6ZXMgb25seSB0byBiYXNp
Y2FsbHkgaWdub3JlIHRoZW0gYnkganVzdCANCj4gd2hpc3BlcmluZyB2ZXJ5LCB2ZXJ5IHF1aWV0
bHkgdGhhdCB0aGVyZSBtaWdodCBiZSBhIHByb2JsZW0uDQo+IA0KQWxhbjogSSBhbHJlYWR5IHJl
c3BvbmRlZCB0aGF0IGkgd2lsbCByZS1yZXYgYXMgcGVyIHlvdXIgcmVjb21tZW5kYXRpb24gYW5k
IHN3aXRjaCBiYWNrIHRvIGRybV9ub3RpY2UuDQoNCj4gSXQgYWxzbyANCj4gc2VlbXMgcG9pbnRs
ZXNzIHRvIGNvbXBsYWluIGFib3V0IGEgbWluaW11bSBzaXplIHRoYXQgYWN0dWFsbHkgaXNuJ3Qg
dGhlIA0KPiBtaW5pbXVtIHNpemUuIFRoYXQncyBzb3J0IG9mIHdvcnNlIC0gbm93IHlvdSBhcmUg
dGVsbGluZyB0aGUgdXNlciB0aGVyZSANCj4gaXMgYSBwcm9ibGVtIHdoZW4gcmVhbGx5IHRoZXJl
IGlzbid0Lg0KPiANCkFsYW46IHRoZSBtaW4gc2l6ZSBpcyBhY2N1cmF0ZSAtIGJ1dCB3aGV0aGVy
IHdlIHJlcG9ydCB0byB0aGUgdXNlIGFib3V0IHRoZW0gcG9zc2libHkgZmFjaW5nIGEgcHJvYmxl
bSBpcyB3aGVyZSBpdCBnZXRzDQphIGJpdCB1bmNsZWFyIGJlY2F1c2Ugb2YgdGhlIGxpbWl0YXRp
b24gaW4gdGhlIGdwdS1jb3JlLWR1bXAgZnJhbWV3b3JrLiBXZSBjb3VsZCBkcm9wIHRoZSBtZXNz
YWdlIGNvbXBsZXRlbHkgaWYgeW91IGxpa2UNCi0gYnV0IHRoZW4gd2UnZCBoYXZlIHRvIHJlbWVt
YmVyIHRvIHJlLWFkZCBpdCBpZiB3ZSBmaXggZ3B1LWNvcmUtZHVtcCBpbiBmdXR1cmUuIEZvciBu
b3csIGFzIGkgbWVudGlvbmVkIGluIHRoZSBsYXN0DQpyZXBseSwgaSBoYXZlIGFscmVhZHkgY2hh
bmdlZCBpdCBiYWNrIHRvICJub3RpY2UiIGFzIHBlciB5b3VyIGxhc3QgY29tbWVudC4gUGVyaGFw
cyB5b3Ugc2hvdWxkIGhhdmUgbG9va2VkIGF0IHJldjIgd2hpY2gNCndhcyBwb3N0ZWQgYmVmb3Jl
IHlvdXIgcmVzcG9uc2VzIGFib3ZlLiBBcyBtZW50aW9uZWQgaW4gbGFzdCByZXBseSwgaSBkaXNh
Z3JlZWQgYnV0IGkgYW0gY29tbWl0dGluZyB0byB5b3VyIHJlcXVlc3QNCndoaWNoIHdhcyBmaXhl
ZCBpbiByZXYyIGFzIHBlciB5b3VyIHJlcXVlc3QuDQoNCj4gSU1ITywgdGhlIG1pbl9zaXplIGNo
ZWNrIHNob3VsZCBiZSBtZWFuaW5nZnVsIGFuZCBzaG91bGQgYmUgdmlzaWJsZSB0byANCj4gdGhl
IHVzZXIgaWYgaXQgZmFpbHMuDQo+IA0KPiBBbHNvLCBhcmUgd2Ugc3RpbGwgaGl0dGluZyB0aGUg
bWluaW11bSBzaXplIGZhaWx1cmUgbWVzc2FnZT8gTm93IHRoYXQgDQo+IHRoZSBjYWxjdWxhdGlv
biBoYXMgYmVlbiBmaXhlZCwgd2hhdCBzaXplcyBkb2VzIGl0IGNvbWUgdXAgd2l0aCBmb3IgbWlu
IA0KPiBhbmQgc3BhcmU/IEFyZSB0aGV5IHdpdGhpbiB0aGUgYWxsb2NhdGlvbiBub3cgb3Igbm90
Pw0KPiANClllcyAtIHdlIGFyZSB3aXRoaW4gdGhlIGFsbG9jYXRpb24gd2l0aCB0aGlzIHBhdGNo
ICh0aGUgZml4IG9mIHJlbW92aW5nIHRoZSByZWR1bmRhbnQgcmVnaXN0ZXItc3RydWN0LXNpemUN
Cm11bHRpcGxpY2F0aW9uIGJyb3VnaHQgdGhlIG51bWJlciBkb3duIHNpZ25pZmljYW50bHkpLg0K
DQo+IEpvaG4uDQoNClNvIGhvdyB3b3VsZCB5b3UgbGlrZSB0byBwcm9jZWVkPyBDb3VsZCB3ZSBy
ZXBseSBvbiByZXYyIGJ0dz8NCg==
