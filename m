Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B0476B7CE4
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Mar 2023 16:57:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BAB310E58D;
	Mon, 13 Mar 2023 15:57:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D11610E573
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Mar 2023 15:57:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678723063; x=1710259063;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KaI1HnaHmIUkbY9WqU9orPvvbGnKZjrepexszHwm9gc=;
 b=ggaTC5E+EKvXBpvJRgzTcT170IPkjaGc+aOVAYxkOF2PG8TDHkx6Jyc7
 LnOTMAF1lEBML/NBbemtKTmwgDgqqRAmYyq22alf8UXmNxEQ1E2ilDjK7
 T3pXBKXAPSkhVfwXGbiVpYk+pTxEvD55sHx1hHM9dzSTVdGEJqBcEgQXj
 Y50H3ItDBvGWkH8OaC4HKx31B4loWfVf7nyG+ey+4XBXyqCF9E4TkaHLV
 mGmsf7aQjQkR/++kOEHuJrp7PwwPz8kZO/hKqFY5Hq+Ju8Ig1p9cF+391
 9S3dgHzutJuTKqpeOQK9ChG5IAthwBu8qcKPAghsnn+AW7qkK9/DGlpT1 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="402057151"
X-IronPort-AV: E=Sophos;i="5.98,257,1673942400"; d="scan'208";a="402057151"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 08:57:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="742916442"
X-IronPort-AV: E=Sophos;i="5.98,257,1673942400"; d="scan'208";a="742916442"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 13 Mar 2023 08:57:41 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 13 Mar 2023 08:57:40 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 13 Mar 2023 08:57:40 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 13 Mar 2023 08:57:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X3v9VRiP3uFzRHQJTOld72JJ8eoPdIfnBZWihyHN2DREy62kW/ETQ6vVs+BKA3d5xzqzypAs68dPRRLFign0yN7D94mq4ICRLwfr/ocR6d4EAXiUtzwOnBjMyRJ7JP3KbIlbC4tPs3/uZHUHS2zuyOBd2KP0WX7rIYhOEAZ6SR34+kUgw8PtyDokCc4pnWkr1B8y+SJaHVsc/D8e6oFG36pb9Gh7Vfk3r8ZicyH791V9EjvyKOr0Me+DH2wnm/C3SH/3g2hF/0hC2q0Pb3TFFDq+2gyi/fd7Wa+ydhSlSoOIYQv6NFTgR8Mvjx3SYbCUMy8j51YTq418gzEs+CS14A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KaI1HnaHmIUkbY9WqU9orPvvbGnKZjrepexszHwm9gc=;
 b=enwqcuWb9NvjXQz9pzTlemzS2Rr5/J0VirwEked71+brYlcldOk+X8Lj0adGKzc1I3mm0NhngvJvlVgxlb38Gzk6yyPIIbiWYpyk9BR88UQZ7R/h43d5txCu2ikew5QTw0qhGZAPjBOD3KTAyyBfehDDRl+odUvtvnjn8/SmZb8at9KE8G9On3qnqrISWZLgwkATpaBEG1jZDBA+HdQrERMqP+oXQhe2k0CuMSFaPYTHbmrxNe9Cvfc5h1cv6g4kAROgu3QJrOiRcc2DWc+l0AlgZWHXThmz3szyaM7lLnYyGOaGKpV3PhEx8DdeymA/bTzc9dIaZi2C0d1/e7bqIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by IA1PR11MB6419.namprd11.prod.outlook.com (2603:10b6:208:3a9::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.22; Mon, 13 Mar
 2023 15:57:37 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::d95b:7e16:dad8:d7bc]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::d95b:7e16:dad8:d7bc%7]) with mapi id 15.20.6178.024; Mon, 13 Mar 2023
 15:57:37 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Auld, Matthew" <matthew.auld@intel.com>
Thread-Topic: [PATCH v5 1/2] drm/i915: Migrate platform-dependent mock
 hugepage selftests to live
Thread-Index: AQHZStBJ5MiHlZS4HE6NS3JO70gbeK7kZrkAgALpPoCAEaLdQA==
Date: Mon, 13 Mar 2023 15:57:37 +0000
Message-ID: <CH0PR11MB5444EF1CBC9F09556DC720E8E5B99@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20230227171920.2438319-1-jonathan.cavitt@intel.com>
 <6b08d006-11e2-6797-6d39-06bd0d8a8630@intel.com>
 <9792ed48-7f7b-2a18-240a-c733a13a4911@intel.com>
In-Reply-To: <9792ed48-7f7b-2a18-240a-c733a13a4911@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|IA1PR11MB6419:EE_
x-ms-office365-filtering-correlation-id: 64f9bd19-457f-43c8-dc63-08db23dbab0a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Nn+0XHUMmC/BQDW7RRtFmmFDi8W7n3cvYZheV8B6svivuzrEOGKMaBaIKd+qz+MApCBBcUWawboFfXZ9LVr1+Em14Tv8SFO8f70lanBoejw3jWf3Hx/XV5J0Q232p2BXKy2xmcRkCGiIeVpixIo21T4hoDd2f+nMjSOexNy1RdQf6QhNPX/+rITcf02CVGjCKO1HggXrRVrDCI5FUlLdVRiLMHF/wSmgLJjl9GFtW93XnXybxG7lGBZb9uXUMT8y/HoreRFPDIb0beiEiJYkqAx2v/sCFfBPf1JwW3HkarQa3BypjdgM+LzKE38t9H8fwDgTcycXnIB52GJRE1XVs9if7LKSK4JOblXA/Q2U1697dnaZrnSPrNdroZcoCrOHqtyOSWxgRxmBr0toMvz0mpAppA6a3rDsZ2+RSAmzacOp4ovSRuhTODq0OU7XCuIQ+7DDv/pT/xqtk8br+RcjzGfi6BQmL7XyBnlEduP+yUCHm35yaqiZK5j76/+6XO3j9AuiiGtyjThTqwoorYcqVXAMnKG7izdl2x2sij4PF5yfDs4TM1bN4pQvkN/FwaREYX9QE3fh6aZN43KoVtF95WIFzNd3qhMvawOcgrAeDIO92pqVbl5orAcpgLcGB4MyavloSSwrGAPOHIV59tdw/ZohLRRQuzXlPE6GO/LhjwNXDHWaSjmBkRKy9yLAf/B/c/X5VkvnznmtpzpMx9o4ap7sJZ1p2nre8At8iV4W5Us=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(366004)(136003)(396003)(39850400004)(376002)(451199018)(316002)(82960400001)(9686003)(33656002)(478600001)(86362001)(7696005)(54906003)(71200400001)(38100700002)(38070700005)(26005)(66446008)(122000001)(6636002)(186003)(6506007)(66556008)(83380400001)(55016003)(66946007)(6862004)(53546011)(8936002)(52536014)(4326008)(5660300002)(64756008)(66476007)(8676002)(2906002)(76116006)(41300700001)(309714004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Z0g1Lzc5V1FsM0UybnRIL1hVSmMzTjU1Y2I4UENyQ0orUUthbTR2bnFOKzZV?=
 =?utf-8?B?TXpDUW5pbWxud1lFSEd4VW5CWVdKZnFlREF5RHJpUjJjc0JiLzhlcHBjZ1Zk?=
 =?utf-8?B?N21MVnJnL2JuY0NjQlRYWVRPRWJuTCs0TjlRYlZoUEc5MDB4M2VFbGtVOFhz?=
 =?utf-8?B?d3grL2t4UVFBb3IzVlFoRzg3RitOWmFHL1c2U3NzQlVUd1dhdTd4TjBNakZC?=
 =?utf-8?B?QW9Pcy83SzVCMFBSRjJ5d25iVTNWMnpIb0hXUnpNOGZ5dnduOVM5c25RKytJ?=
 =?utf-8?B?b243S0ZhbzR1VjVCczltamlYcWh1Rmk4SHdBMVJVbHp4VXl3Sk96TFZSZzJa?=
 =?utf-8?B?M3FBWUoxTW1uZnpTQWVtSndXWFAwT0JBaitpM1hIaUh6TDBYdWhPOVpneTFN?=
 =?utf-8?B?S1YrSWNEemRkOGZUSkVuNGFpRW51eG5hNHFYUVRVdEM4dG9DcnJlMW9kMkdF?=
 =?utf-8?B?bG15a1VQSmFYODE1Vm5VMCtvc3VZSkNmS0FPWEZEOWZnWFFEandDQU1nckRS?=
 =?utf-8?B?OHpsSjhmb0xzbmkrVlVLUTRVOGgrZG02VFdGbGN6eCtRY0MvV0sxUFZWcXNq?=
 =?utf-8?B?TjRNVFBNT2JQU0t0dGZVa0IwRlJBRnhqU1hiaTBIYTlUY0NXUElpZzZuc1gw?=
 =?utf-8?B?bFVQMnllSHBxc2Znays1MlRmZVBiUUVEWnBxTEJTNFF1ZGlibHhjOWpZQm4z?=
 =?utf-8?B?cCsxM0FaZzdrMitiQmNXaXBINU9yUk9WdGpLQm92b3ExVnR4VHBqTldKSlI3?=
 =?utf-8?B?OTJDMEVCeEdSSDVyWUxJdXY0WkVVZ3VwNkZBYVdCTDN0WGQ0ZlpUTFNHNmVZ?=
 =?utf-8?B?S0M0OHgva3A1bktSVWo3OWR3eWd1MHhCb1pnY08zVitrSXNzeXdRckNCUTE1?=
 =?utf-8?B?SUpDSzcxdmxGak1LYWVQc3JmMEVYTTRSSjRabkRRb0lxU29FOTAwSndxQVFH?=
 =?utf-8?B?dzBhL0VRS0VmMWxNR2sxS0dvK2xjR3BsOE1sbm5NTGJGQjRrK0crTmpmbDBY?=
 =?utf-8?B?RFJGOXBnWVhkcEJtdGt6QTVZL2tsMFg3cFRqQTA4WVpuMk8vMXpvM3UzZ1FQ?=
 =?utf-8?B?a1hic0UrSVVBVkhjaHpld0s1UEgxVWhRb3k3c1NPYkhBQVUzMGZoVmUvcERL?=
 =?utf-8?B?allpa3p4dDk2R2xocVBBdFJrR1A1NGZhV05uOVphb0JPdThTNFpKTElkWGhO?=
 =?utf-8?B?Vkdrc203OXRiaU5XYXhYNS9ZVHFYaTNjb29Td2Y3ejIyWG8vby9JRktKbVNW?=
 =?utf-8?B?a0JVTll2S0taRy9JSmpydUpaTVVMSGt3WC9oejB2N0dGWGk5ZUgrdnAvOEFp?=
 =?utf-8?B?STdpYTFBWnlrK0dSMTZ3enc0Vmhkdm5pQnduVHRWNFc1UjFHdXlVOGt0M0xu?=
 =?utf-8?B?TG5ObTVPa0ZmK0JGR0hJWk9UK3E4NS94aXNRbVhCSDM0OHdkdTQ4bXEwa1RW?=
 =?utf-8?B?Vk9rVkZlc3Z2YVBlM3ExTGRSU3RPbUlrWTdmMXpGdVUrYkFTajFvekVKZmx4?=
 =?utf-8?B?OW9VcC84V2VUZ1VVa1dpUzN0WXl2V0FnZk1PNUU5WjdXVFBYaDY3ZXpmN3RF?=
 =?utf-8?B?dlQzRG1pMkFQRXo2bWsrRVBsbXRtTDZqa3kzZUllRDkwWFhGWjlua0p2NHJt?=
 =?utf-8?B?Mk1uY2Fydm93TStYb3ZOMFNRY3dLNjFVVlhUZVBIMHB2cTNGUkI0Vkg0REh1?=
 =?utf-8?B?TFpUdDY5dno3ZHNWRjdybXFneit6SjZzV1ViS0gyQXNTR1RRSnhQWHVFcjZQ?=
 =?utf-8?B?aXFLNU9RSnJMcUJ2aDFaSXZSVXFWY1QralBmczVvUXVnRmVWRUVvdVRuRWNp?=
 =?utf-8?B?cFh0Snd3MnA3YW16cmNhbmQva0tvdjhTMWV0elpDUE1EUEg1OGxLVTBzSVVM?=
 =?utf-8?B?cUZTaHJwQjZ2ZEliS1JGbk9nZXVJNGJJUGNIYWRpR2JTbkJFKzNzMXV6VFRS?=
 =?utf-8?B?OVMxaitMU0hQR2NSeGFobWU0SEUxRjV1R0ZDOVBmdzJvUFRkNXNmZ2ZhNXNZ?=
 =?utf-8?B?dmJHaDl4VGNaVXZSL0tpYU9nMVJCMnAyOERRWm5xSU0ybThGQmN0cjlNQ1B6?=
 =?utf-8?B?U3UwUVk4UmdzbmdocU9xL2t1dzRVblpzT0hsWTFiTlorQTNsNVJad1hyWEph?=
 =?utf-8?Q?35V26HP/Tn1zkBwp9vl1mtzax?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 64f9bd19-457f-43c8-dc63-08db23dbab0a
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2023 15:57:37.7014 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4jGawOCs7QqLa4slfidtqgBa8KSsgeaJFm3udJVLCG2v1mUeJWXCYvnpdqeV56LfKjIbhJlD7gIi5DxOrquLd8UFFS/Uie1Uzyu3/BH7p8w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6419
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 1/2] drm/i915: Migrate platform-dependent
 mock hugepage selftests to live
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
Cc: "thomas.hellstrom@linux.intel.com" <thomas.hellstrom@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>, "Vetter,
 Daniel" <daniel.vetter@intel.com>,
 "chris.p.wilson@linux.intel.com" <chris.p.wilson@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IEF1bGQsIE1hdHRoZXcgPG1hdHRoZXcu
YXVsZEBpbnRlbC5jb20+IA0KU2VudDogVGh1cnNkYXksIE1hcmNoIDIsIDIwMjMgMjozNiBBTQ0K
VG86IENhdml0dCwgSm9uYXRoYW4gPGpvbmF0aGFuLmNhdml0dEBpbnRlbC5jb20+OyBpbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQpDYzogRHV0dCwgU3VkZWVwIDxzdWRlZXAuZHV0dEBp
bnRlbC5jb20+OyB0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbTsgbWFhcnRlbi5sYW5r
aG9yc3RAbGludXguaW50ZWwuY29tOyBWZXR0ZXIsIERhbmllbCA8ZGFuaWVsLnZldHRlckBpbnRl
bC5jb20+OyBEZSBNYXJjaGksIEx1Y2FzIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+OyBjaHJp
cy5wLndpbHNvbkBsaW51eC5pbnRlbC5jb20NClN1YmplY3Q6IFJlOiBbUEFUQ0ggdjUgMS8yXSBk
cm0vaTkxNTogTWlncmF0ZSBwbGF0Zm9ybS1kZXBlbmRlbnQgbW9jayBodWdlcGFnZSBzZWxmdGVz
dHMgdG8gbGl2ZQ0KPg0KPk9uIDI4LzAyLzIwMjMgMTQ6MDgsIE1hdHRoZXcgQXVsZCB3cm90ZToN
Cj4+IE9uIDI3LzAyLzIwMjMgMTc6MTksIEpvbmF0aGFuIENhdml0dCB3cm90ZToNCj4+PiBDb252
ZXJ0IHRoZSBpZ3RfbW9ja19wcGd0dF9odWdlX2ZpbGwgYW5kIGlndF9tb2NrX3BwZ3R0XzY0SyBt
b2NrIA0KPj4+IHNlbGZ0ZXN0cyBpbnRvDQo+Pj4gbGl2ZSBzZWxmdGVzdHMgYXMgdGhlaXIgcmVx
dWlyZW1lbnRzIGhhdmUgcmVjZW50bHkgYmVjb21lIA0KPj4+IHBsYXRmb3JtLWRlcGVuZGVudC4N
Cj4+PiBBZGRpdGlvbmFsbHksIGFwcGx5IG5lY2Vzc2FyeSBwbGF0Zm9ybSBkZXBlbmRlbmN5IGNo
ZWNrcyB0byB0aGVzZSB0ZXN0cy4NCj4+Pg0KPj4+IHYyOiBSZW9yZGVyDQo+Pj4NCj4+PiBTaWdu
ZWQtb2ZmLWJ5OiBKb25hdGhhbiBDYXZpdHQgPGpvbmF0aGFuLmNhdml0dEBpbnRlbC5jb20+DQo+
PiANCj4+IHItYiBzdGlsbCBzdGFuZHMgZm9yIHRoZSBzZXJpZXMuIE5vdGUgdGhhdCBDSSBpcyBi
dXN0ZWQgYXRtIHRob3VnaCwgc28gDQo+PiB3ZSBjYW4ndCBtZXJnZSB0aGlzIHlldC4gTGlrZWx5
IG5lZWQgdG8gcmUtdHJpZ2dlciB0ZXN0aW5nIGZvciB0aGUgDQo+PiBzZXJpZXMgb25jZSBDSS9k
cm0tdGlwIGlzIHdvcmtpbmcgYWdhaW4uDQo+DQo+Q0kgbG9va3MgdG8gYmUgYmFjay4gQ2FuIHlv
dSB0cmlnZ2VyIGEgcmV0ZXN0IHRocm91Z2ggcGF0Y2h3b3JrLCBvciANCj5yZXNlbmQgdGhlIHNl
cmllcz8NCg0KVGhlIHJldGVzdCB3YXMgc3VibWl0dGVkLCBidXQgdGhlIG1vY2sgaHVnZXBhZ2Vz
IHN1YnRlc3QgcmV0dXJuZWQgd2l0aCBhIGZhaWx1cmUuDQpJdCBkaWRuJ3QgZG8gc28gaW4gdGhl
IGZpcnN0IHJ1biwgbm9yIGRpZCBpdCBmYWlsIGluIHRoZSBwcmlvciByZXZpc2lvbiAodGhlIG9u
ZSB3aXRoIHRoZQ0KaW5jb3JyZWN0IHBhdGNoIG9yZGVyKS4gIERvIHlvdSBoYXZlIGFueSBndWlk
YW5jZSBmb3IgZm9yd2FyZCBwcm9ncmVzcz8NCi1Kb25hdGhhbiBDYXZpdHQNCg0KPg0KPj4gDQo+
PiANCj4+PiAtLS0NCj4+PiDCoCAuLi4vZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaHVnZV9w
YWdlcy5jwqDCoCB8IDIyICsrKysrKysrKysrKysrLS0tLS0NCj4+PiDCoCAxIGZpbGUgY2hhbmdl
ZCwgMTcgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkNCj4+Pg0KPj4+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2h1Z2VfcGFnZXMuYyANCj4+PiBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaHVnZV9wYWdlcy5jDQo+Pj4gaW5k
ZXggZGVmZWNlMGJjYjgxLi4zNzVmMTE5YWIyNjEgMTAwNjQ0DQo+Pj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9odWdlX3BhZ2VzLmMNCj4+PiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2h1Z2VfcGFnZXMuYw0KPj4+IEBAIC03MTAsNyAr
NzEwLDcgQEAgc3RhdGljIHZvaWQgY2xvc2Vfb2JqZWN0X2xpc3Qoc3RydWN0IGxpc3RfaGVhZCAN
Cj4+PiAqb2JqZWN0cywNCj4+PiDCoMKgwqDCoMKgIH0NCj4+PiDCoCB9DQo+Pj4gLXN0YXRpYyBp
bnQgaWd0X21vY2tfcHBndHRfaHVnZV9maWxsKHZvaWQgKmFyZykNCj4+PiArc3RhdGljIGludCBp
Z3RfcHBndHRfaHVnZV9maWxsKHZvaWQgKmFyZykNCj4+PiDCoCB7DQo+Pj4gwqDCoMKgwqDCoCBz
dHJ1Y3QgaTkxNV9wcGd0dCAqcHBndHQgPSBhcmc7DQo+Pj4gwqDCoMKgwqDCoCBzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHBwZ3R0LT52bS5pOTE1Ow0KPj4+IEBAIC03ODQsNyArNzg0
LDggQEAgc3RhdGljIGludCBpZ3RfbW9ja19wcGd0dF9odWdlX2ZpbGwodm9pZCAqYXJnKQ0KPj4+
IMKgwqDCoMKgwqDCoMKgwqDCoCBHRU1fQlVHX09OKCFleHBlY3RlZF9ndHQpOw0KPj4+IMKgwqDC
oMKgwqDCoMKgwqDCoCBHRU1fQlVHX09OKHNpemUpOw0KPj4+IC3CoMKgwqDCoMKgwqDCoCBpZiAo
ZXhwZWN0ZWRfZ3R0ICYgSTkxNV9HVFRfUEFHRV9TSVpFXzRLKQ0KPj4+ICvCoMKgwqDCoMKgwqDC
oCBpZiAoZXhwZWN0ZWRfZ3R0ICYgSTkxNV9HVFRfUEFHRV9TSVpFXzRLICYmDQo+Pj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgR1JBUEhJQ1NfVkVSX0ZVTEwoaTkxNSkgPCBJUF9WRVIoMTIsIDUw
KSkNCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBleHBlY3RlZF9ndHQgJj0gfkk5MTVf
R1RUX1BBR0VfU0laRV82NEs7DQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIGk5MTVfdm1hX3VucGlu
KHZtYSk7DQo+Pj4gQEAgLTgzMSw3ICs4MzIsNyBAQCBzdGF0aWMgaW50IGlndF9tb2NrX3BwZ3R0
X2h1Z2VfZmlsbCh2b2lkICphcmcpDQo+Pj4gwqDCoMKgwqDCoCByZXR1cm4gZXJyOw0KPj4+IMKg
IH0NCj4+PiAtc3RhdGljIGludCBpZ3RfbW9ja19wcGd0dF82NEsodm9pZCAqYXJnKQ0KPj4+ICtz
dGF0aWMgaW50IGlndF9wcGd0dF82NEsodm9pZCAqYXJnKQ0KPj4+IMKgIHsNCj4+PiDCoMKgwqDC
oMKgIHN0cnVjdCBpOTE1X3BwZ3R0ICpwcGd0dCA9IGFyZzsNCj4+PiDCoMKgwqDCoMKgIHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gcHBndHQtPnZtLmk5MTU7DQo+Pj4gQEAgLTkxMyw2
ICs5MTQsMTcgQEAgc3RhdGljIGludCBpZ3RfbW9ja19wcGd0dF82NEsodm9pZCAqYXJnKQ0KPj4+
IMKgwqDCoMKgwqDCoMKgwqDCoCB1bnNpZ25lZCBpbnQgb2Zmc2V0ID0gb2JqZWN0c1tpXS5vZmZz
ZXQ7DQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIHVuc2lnbmVkIGludCBmbGFncyA9IFBJTl9VU0VS
Ow0KPj4+ICvCoMKgwqDCoMKgwqDCoCAvKg0KPj4+ICvCoMKgwqDCoMKgwqDCoMKgICogRm9yIG1v
ZGVybiBHVFQgbW9kZWxzLCB0aGUgcmVxdWlyZW1lbnRzIGZvciBtYXJraW5nIGEgDQo+Pj4gcGFn
ZS10YWJsZQ0KPj4+ICvCoMKgwqDCoMKgwqDCoMKgICogYXMgNjRLIGhhdmUgYmVlbiByZWxheGVk
LsKgIEFjY291bnQgZm9yIHRoaXMuDQo+Pj4gK8KgwqDCoMKgwqDCoMKgwqAgKi8NCj4+PiArDQo+
Pj4gK8KgwqDCoMKgwqDCoMKgIGlmIChHUkFQSElDU19WRVJfRlVMTChpOTE1KSA+PSBJUF9WRVIo
MTIsIDUwKSkgew0KPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGV4cGVjdGVkX2d0dCA9IDA7
DQo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZXhwZWN0ZWRfZ3R0IHw9IHNpemUgJiAoU1pf
NjRLIHwgU1pfMk0pID8gDQo+Pj4gSTkxNV9HVFRfUEFHRV9TSVpFXzY0SyA6IDA7DQo+Pj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgZXhwZWN0ZWRfZ3R0IHw9IHNpemUgJiBTWl80SyA/IEk5MTVf
R1RUX1BBR0VfU0laRV80SyA6IDA7DQo+Pj4gK8KgwqDCoMKgwqDCoMKgIH0NCj4+PiArDQo+Pj4g
wqDCoMKgwqDCoMKgwqDCoMKgIGZvciAoc2luZ2xlID0gMDsgc2luZ2xlIDw9IDE7IHNpbmdsZSsr
KSB7DQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgb2JqID0gZmFrZV9odWdlX3BhZ2Vz
X29iamVjdChpOTE1LCBzaXplLCAhIXNpbmdsZSk7DQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgaWYgKElTX0VSUihvYmopKQ0KPj4+IEBAIC0xOTEwLDggKzE5MjIsNiBAQCBpbnQgaTkx
NV9nZW1faHVnZV9wYWdlX21vY2tfc2VsZnRlc3RzKHZvaWQpDQo+Pj4gwqDCoMKgwqDCoMKgwqDC
oMKgIFNVQlRFU1QoaWd0X21vY2tfZXhoYXVzdF9kZXZpY2Vfc3VwcG9ydGVkX3BhZ2VzKSwNCj4+
PiDCoMKgwqDCoMKgwqDCoMKgwqAgU1VCVEVTVChpZ3RfbW9ja19tZW1vcnlfcmVnaW9uX2h1Z2Vf
cGFnZXMpLA0KPj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBTVUJURVNUKGlndF9tb2NrX3BwZ3R0X21p
c2FsaWduZWRfZG1hKSwNCj4+PiAtwqDCoMKgwqDCoMKgwqAgU1VCVEVTVChpZ3RfbW9ja19wcGd0
dF9odWdlX2ZpbGwpLA0KPj4+IC3CoMKgwqDCoMKgwqDCoCBTVUJURVNUKGlndF9tb2NrX3BwZ3R0
XzY0SyksDQo+Pj4gwqDCoMKgwqDCoCB9Ow0KPj4+IMKgwqDCoMKgwqAgc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2Ow0KPj4+IMKgwqDCoMKgwqAgc3RydWN0IGk5MTVfcHBndHQgKnBw
Z3R0Ow0KPj4+IEBAIC0xOTYyLDYgKzE5NzIsOCBAQCBpbnQgaTkxNV9nZW1faHVnZV9wYWdlX2xp
dmVfc2VsZnRlc3RzKHN0cnVjdCANCj4+PiBkcm1faTkxNV9wcml2YXRlICppOTE1KQ0KPj4+IMKg
wqDCoMKgwqDCoMKgwqDCoCBTVUJURVNUKGlndF9wcGd0dF9zYW5pdHlfY2hlY2spLA0KPj4+IMKg
wqDCoMKgwqDCoMKgwqDCoCBTVUJURVNUKGlndF9wcGd0dF9jb21wYWN0KSwNCj4+PiDCoMKgwqDC
oMKgwqDCoMKgwqAgU1VCVEVTVChpZ3RfcHBndHRfbWl4ZWQpLA0KPj4+ICvCoMKgwqDCoMKgwqDC
oCBTVUJURVNUKGlndF9wcGd0dF9odWdlX2ZpbGwpLA0KPj4+ICvCoMKgwqDCoMKgwqDCoCBTVUJU
RVNUKGlndF9wcGd0dF82NEspLA0KPj4+IMKgwqDCoMKgwqAgfTsNCj4+PiDCoMKgwqDCoMKgIGlm
ICghSEFTX1BQR1RUKGk5MTUpKSB7DQo+DQo=
