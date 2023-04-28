Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A7A646F1679
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Apr 2023 13:19:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3177210ECE5;
	Fri, 28 Apr 2023 11:19:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3758410ECE5
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Apr 2023 11:19:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682680783; x=1714216783;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=gi6K1mzVL0LwUwmb96P/I1uI0jdTZmlC+aoptH3ZNCQ=;
 b=hX3I507U88pJ2OLysBbQ8X3+CX6SODfi9nnNjggA5/oRRjJb/FFE6IYv
 zQA7mRq7g+o42iRylfDN95XpHyEzJaxfuTdNAsf65D5IwMr7o+di7N/OQ
 2wXCwSxdjNcJenW2h+zv1qnch+ZVxLeZwM85aJcAe+hOiOu/p4GqC0MRQ
 F+zqZyrOuUd9aLXqpHBevaEHYhlTUOSjDfZkSzAkGrQa2FAqlZdDdYKCi
 tTbKYL2jLHLIujJcAI6pQqQbOfJm/3Qnj3jjThIj+X9vPcs5IoXQgpfxW
 bvU+DtmVBSTqHmt07QWFTnyFT6lJmb0WY1XdSJtG0EcmlJ7AtYVFV4Grt Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="434012062"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="434012062"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2023 04:19:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="1024569649"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="1024569649"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP; 28 Apr 2023 04:19:42 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 28 Apr 2023 04:19:42 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 28 Apr 2023 04:19:41 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 28 Apr 2023 04:19:41 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 28 Apr 2023 04:19:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YF6fHtNE7N7Ivm53cHY15XAFfrDWyfmfwvZgRrInqbor15Yr4F1ZFWcRDFHckIbigVK7Rzs5n5Rb1+OM0Ob6ee7x+K+PmJD5tTD1GN0plFnxaUJKqw5huJazSryG+6ApisfSAZB/aOOlhaGj61l4PvtvXzuUmFbGO1KnWDUCjVpdBH2aNzyyg3LbFveDQ/yUElb3h3OCQ8qG8BoYrER5loHDzboxK5ggpJbxf3D4wsQBJ7qmG+vPU6u6/r9QuqotAqhAscStOYWclm1uWVvK3fWqDfLcVcIcAsA0d9OPeBb+5AWXxaGJ7//59GGLGXUORlvL3ArSYXkdEmoe8gGIfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gi6K1mzVL0LwUwmb96P/I1uI0jdTZmlC+aoptH3ZNCQ=;
 b=KyFZD46ZxLpj24rrI6csh9d8Dov2HKJfkXnSzf3Q8Zapf6N3s0edpvGpGmXQrI6h4FhKg8VB4BktikCdZ6AodI2R2jqXg8P7lB/H1Pg9SqxF9AeTv0dRP8DX5oDzHTveLQY3aBv2W2d4gp2HO/tJ9M6r1gqB5ipF1mi4exTMYFYpFk+/igog8Kug15d8WqmCEp8efKgmbVpmF/xo2zBiw6ICk2m5kFi5geyymBUhwqef/ca8NzbUH51K7CWrPWRYtak0gXl/3exdqGWc/DQ3L9qAkLjd5Xfon/J/Bj279NDL1IVkrNqlY2GzOOAfjKFKRYHwduWjRIdUUWW1ymMWQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DS7PR11MB7805.namprd11.prod.outlook.com (2603:10b6:8:ea::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6340.21; Fri, 28 Apr 2023 11:19:39 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::2796:34e3:dbb9:fe97]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::2796:34e3:dbb9:fe97%9]) with mapi id 15.20.6340.022; Fri, 28 Apr 2023
 11:19:39 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 13/13] drm/i915/psr: Re-enable PSR1 on hdw/bdw
Thread-Index: AQHZdEljzt9HUYDDoECkhaTJmX7d4K9Ang+A
Date: Fri, 28 Apr 2023 11:19:39 +0000
Message-ID: <176dae6934e6d79b93fbe158b8ac05ff161b76b3.camel@intel.com>
References: <20230421120307.24793-1-ville.syrjala@linux.intel.com>
 <20230421120307.24793-14-ville.syrjala@linux.intel.com>
In-Reply-To: <20230421120307.24793-14-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DS7PR11MB7805:EE_
x-ms-office365-filtering-correlation-id: 6e35649a-04f1-4b5b-c745-08db47da74e7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YdTT9ZV6Nt/IByaw72x5ERHN5mN9Co9Dt/97awAdlLh9Xv5EzGzr9FVT+5wMsh7pYewSz0Hyla2DaI9pOeszBTEHNyXhCVgRzzvMSrPQQ+iiTsIcQceHEin3JL4yBJLC2+tZynWegONgTAE95Jl5yaENaHoyogWX9inkcSEyxuujwD23cOzKGDxLJSBVyFALkHYIFHPso2E/xIdgEZ/P9EBU5MUJTOTyGQg3ZXk5d897ojhzsi5C42zsSDcgYc+5aDbLXX+J6WFshG1TlCgDqZSJbkrFPIQuwZ0lxulhvWFDSwHfXp66PIMl29gQnex4fO/X4r2XPTpYXMQBpmT+imQ3lBXcLeOPMqWnFH7UGB3vB1Fx0SpCzxMcijUQef4IWfNsQOUjR96/avZ4FV1aCTOIT/1TMAmXcgIu2++Wq5HqJjEJGzEAI47ykEV+WQC0XhunAkiqBoz42ARNe7oyvcFmmw5Sqeny3SGVPcFazzQLX76/7wL72QzrzRLd6Nza7LEGVssxjF857n1Dad6BXD2rzdp6qz1Uq/wwO8emVVlzuhtmUtfJXeKnJiTfeovIMBDuDVjMPZeHODfXN3xWkS0EzFjCFZOLj2LJjnG0IbGwdqE9mzSUeo8FKHibV1nn
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(376002)(366004)(346002)(396003)(39860400002)(451199021)(86362001)(38070700005)(36756003)(2906002)(2616005)(186003)(71200400001)(83380400001)(6486002)(6506007)(6512007)(26005)(91956017)(66946007)(66446008)(478600001)(64756008)(66556008)(76116006)(82960400001)(66476007)(38100700002)(316002)(122000001)(5660300002)(8676002)(41300700001)(110136005)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ME1uMWFMMEdUTFBUdnZSM1RCWjhIczY0aHpRay9RK3labUVkekhVcGxZQjk4?=
 =?utf-8?B?eXdXSVEzZVI4aS9GU0ZSdnFLU0lqZjcvUytkR2FvUGpYcnltemliREVDeVRB?=
 =?utf-8?B?VnV4ZVBRc3JmeUlwL2NhcWNSL1VMaUhlZDVuSm40bjVydHQ1bXh3ekx5ME1t?=
 =?utf-8?B?WWpYUzZBbGxKa0liYys0Yko2b0d1VmRCa2lUWHFoR3l4UmhGQXlldEpoK2Js?=
 =?utf-8?B?WnJsNzJZZmNWajZUWGlIQlJLSDhtK1dDdnQ1OXF3OExsajRiYmJCSjgzbzhu?=
 =?utf-8?B?NWtMRjh4MU9LOXY5dGhMMGVtVDFwVVVEeG00WVlZQjVrc0lMMnZPVXZRdnFC?=
 =?utf-8?B?ZCt3WGlRblcyNkc5WkxqNjZLTklOSWNrZy9aczYrZ00vcGZ6anE0NkdFSWcz?=
 =?utf-8?B?WDlCZzVUQ0RrZjZPYWdINjJrNHpLRXJmM01US1lxY2FXSGtrVi9xbjREV3dm?=
 =?utf-8?B?V0lPb1N2ejBGY2szSWJobWt4ZU1Pc2VNMWphdmlNN0Rab0tEZjZjVVVSazZ4?=
 =?utf-8?B?OW1DZjB2d1YxcGdheEcwVENpQ01pRGltN05ickFlanJwMjVVWnFvZytBMnE2?=
 =?utf-8?B?dWMrRFoyUUROUUJNK3Yrdk43VXp4Uy83ZDRDOWJ1Q05DbEl0WnZNaDk1eXRR?=
 =?utf-8?B?NTlHS2lmTnQrVjNMUjQwNGpuUXJKQ3hjVWVzMFVvYWc4cktsWTh6RjRDekI1?=
 =?utf-8?B?NGg3ZkN2Ukxvb0RYYnNQUHQrRDJ5N1dvNHBLbllhUGRuS0FrVDczaFZIeEZM?=
 =?utf-8?B?YXg1Vld5YzJvb216STVMSVAyTWFFWkdMMTNoN0EzTHRaaWlPYTBmRTE4NVVk?=
 =?utf-8?B?SFhTSHFrT0J4QXF4K0wyQm9QVVBrQVBBdnV6cmxrSnZsenEzYVBvcVczNnJ6?=
 =?utf-8?B?ZEFHSGZ3Uzd4QzJYbU05VWprNjE3ek1mcGU2SjB5eTdnbDNTSWRQU3kzUnNi?=
 =?utf-8?B?R0J2NGhWbm1nb1Q2TUI2NWZ1K29RQkZORm5kOFZuc0Vic005a0YzMmhkWFB4?=
 =?utf-8?B?ZE1pa1cwWE5WVUFRZlRoWWgzT1lNYlV4ekF5bDRoN05NL0hpMDVwbVJiamd2?=
 =?utf-8?B?c1dSNGxhVXpoOEJhekcyMEltekZPaWxwdFNGSVRkT1NwWm92M3FwVmxjYksv?=
 =?utf-8?B?YURYa0pQdi9nSEFqMCtXeW44blZ4clZMM0svQUtySGtHcnRlbTJqNWpNempR?=
 =?utf-8?B?eTFKY2VEbno1bVc1OGR6bWNXTWtPaVJHNEdVWXB6b1NKMFM2bHZsQ3lKNjZk?=
 =?utf-8?B?S3dna0hMcnFQYm9DbmEydVpUeWRrdXQ0NXlYNWVqRW9ML3NyNFc2b3k5OGMw?=
 =?utf-8?B?YklRa1JJaGpiSGRIa2QvcGlBK1d6VUhwQk9ZSlFuK051TzFiV2EvWmtRWVpm?=
 =?utf-8?B?Y1FNWHJscUVDc0wzT2k1Wis2RC9NeWxkeXgrNmpxS2lXYWNxczYxZ1RXWkww?=
 =?utf-8?B?bUhGTlJVd3NqNkZxRGx4YjZPbm1ETmVZREhmdXNJcjRzWkVqS3pJakthamQ2?=
 =?utf-8?B?a1FMazdnMG94NCtFcmlpVGZjdDM3TkVpRDJBMlJWZGRPaHVnRkdjdndScy9m?=
 =?utf-8?B?VzVvZm9HWWdxT1hTQ0Zuc2RHNnkxMzgvaGFheFlQcnU2OEJFRVMrV2luVEt4?=
 =?utf-8?B?RVVZYTdtYjJvaldCVmczV0VPK3FkWVhuNlJqWmF1VDY0Q2toZFJRNURYeVln?=
 =?utf-8?B?WDNPcCtZSjRwQWZZRExSR0UwRThVUUtBWUdCalhLWU9rYmNkNFZ6N09ESU1x?=
 =?utf-8?B?Q1hSeUhURXpTdTNQTUdTZVBQRVJtUStoM0s4QUtFSGNXUlF5VnJ6WW1adCty?=
 =?utf-8?B?RWFPMEUvajRzVHNNUWJEZ05WcklxTGkwZ2hNSWZ2aHQrRC9xNENWTzRSeVds?=
 =?utf-8?B?aWwyTW4zYkxBRmxhZDVmNmpUNklSczNHLzFDdDlKOFIwRklDMERqQWZFa2hQ?=
 =?utf-8?B?aVFTMEE4K3hWZmJkbnNqWEcrbFNNU3lVcHF2c3owc3h1LzlkVHJQS3o4eDZK?=
 =?utf-8?B?MEplU1JYNEJiQnAwWDZjdFRsNEk4MWNETFZlN3hQV0xzbVBubFh2aUFpandP?=
 =?utf-8?B?VUFJOTBZT0Q2b3NsOC9YdHBaVlZqMWswZWJod2w4cEw3OFduSVNyc3AyUmF1?=
 =?utf-8?B?UHVYZko5RUoyeE5BR2U2ck0yOTlET2w2RHlrMUZjVWluNmIzaDkrQ0Q4MU1E?=
 =?utf-8?B?Qmc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <9F5174F62D345849A9C4FA1F3019531B@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e35649a-04f1-4b5b-c745-08db47da74e7
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2023 11:19:39.2454 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TlZbKxOTIFf7Cy6JQEdaGsw2oczVh3Wc5DfICkh5Lu31WJnxZoW19OXhMn1lvmAosPSheujI2NvsihRhBLeIFW1GdS0pyoxesgWwaVHZOj8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7805
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 13/13] drm/i915/psr: Re-enable PSR1 on
 hdw/bdw
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

T24gRnJpLCAyMDIzLTA0LTIxIGF0IDE1OjAzICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gQWxsIGtub3duIGlzc3VlcyBmaXhlZCBub3csIHNvIHJlLWVuYWJsZSBQU1IxIG9uIGhz
dy9iZHcuDQoNClBsZWFzZSBub3RlIHMvaGR3L2hzdy8gaW4gc3ViamVjdC4NCg0KPiANCj4gU2ln
bmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4NCj4gLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYyB8IDQgKystLQ0K
PiDCoDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+IA0K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYw0KPiBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMNCj4gaW5kZXggMjcyYThiYTM3YjY0Li45MjNlMjQw
NDQ5NjcgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMNCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYw0KPiBAQCAtNTYyLDYgKzU2Miw4
IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfZGV2aWNlX2luZm8gdmx2X2luZm8gPQ0KPiB7
DQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgQklUKFRSQU5TQ09ERVJfQykgfCBC
SVQoVFJBTlNDT0RFUl9FRFApLCBcDQo+IMKgwqDCoMKgwqDCoMKgwqAuZGlzcGxheS5oYXNfZGRp
ID0gMSwgXA0KPiDCoMKgwqDCoMKgwqDCoMKgLmRpc3BsYXkuaGFzX2ZwZ2FfZGJnID0gMSwgXA0K
PiArwqDCoMKgwqDCoMKgwqAuZGlzcGxheS5oYXNfcHNyID0gMSwgXA0KPiArwqDCoMKgwqDCoMKg
wqAuZGlzcGxheS5oYXNfcHNyX2h3X3RyYWNraW5nID0gMSwgXA0KDQpJc24ndCB0aGlzIGhhc19w
c3JfaHdfdHJhY2tpbmcgYWJvdXQgUFNSMiB3aXRoIGh3IHRyYWNraW5nIG1lY2hhbmlzbSBpbg0K
ZS5nLiBJQ0w/IFNlZSBCc3BlYzogNDI4OS4gTW9yZSByZWNlbnQgcGxhdGZvcm1zIGhhdmUgbWFu
dWFsIHRyYWNraW5nDQptZWNoYW5pc20uIEluIFRHTCB0aGVyZSB3ZXJlIGJvdGguDQoNCj4gwqDC
oMKgwqDCoMKgwqDCoC5kaXNwbGF5Lmhhc19kcF9tc3QgPSAxLCBcDQo+IMKgwqDCoMKgwqDCoMKg
wqAuaGFzX3JjNnAgPSAwIC8qIFJDNnAgcmVtb3ZlZC1ieSBIU1cgKi8sIFwNCj4gwqDCoMKgwqDC
oMKgwqDCoEhTV19QSVBFX09GRlNFVFMsIFwNCj4gQEAgLTY2NSw4ICs2NjcsNiBAQCBzdGF0aWMg
Y29uc3Qgc3RydWN0IGludGVsX2RldmljZV9pbmZvIGNodl9pbmZvID0NCj4gew0KPiDCoMKgwqDC
oMKgwqDCoMKgLmhhc19ndF91YyA9IDEsIFwNCj4gwqDCoMKgwqDCoMKgwqDCoC5fX3J1bnRpbWUu
aGFzX2hkY3AgPSAxLCBcDQo+IMKgwqDCoMKgwqDCoMKgwqAuZGlzcGxheS5oYXNfaXBjID0gMSwg
XA0KPiAtwqDCoMKgwqDCoMKgwqAuZGlzcGxheS5oYXNfcHNyID0gMSwgXA0KPiAtwqDCoMKgwqDC
oMKgwqAuZGlzcGxheS5oYXNfcHNyX2h3X3RyYWNraW5nID0gMSwgXA0KPiDCoMKgwqDCoMKgwqDC
oMKgLmRpc3BsYXkuZGJ1Zi5zaXplID0gODk2IC0gNCwgLyogNCBibG9ja3MgZm9yIGJ5cGFzcyBw
YXRoDQo+IGFsbG9jYXRpb24gKi8gXA0KPiDCoMKgwqDCoMKgwqDCoMKgLmRpc3BsYXkuZGJ1Zi5z
bGljZV9tYXNrID0gQklUKERCVUZfUzEpDQo+IMKgDQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXIN
Cg==
