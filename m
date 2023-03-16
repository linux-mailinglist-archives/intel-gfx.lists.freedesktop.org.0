Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 284F86BCA74
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 10:12:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD24910E141;
	Thu, 16 Mar 2023 09:12:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F271210E141
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 09:12:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678957955; x=1710493955;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=RmjjQCBsVx//YQxyK1dFZH9njsVDxikr0PIPK9K2YMQ=;
 b=SHVsvCseIHM+Qs179dw59TQZq4uuqpNf3l2G6ZbC5MHFvvNFhMki2hs3
 xpdEoCG8Q+ZvDGzlMuIqCnmV9Y+dP0BGCc9g50yKKPCb8PRj6m4LImYZZ
 KbdZTtdDa3NIks3Gt4ko/eoH/74QPHaMd4aD5O6Cr+gP5iVRRPVpYKpTR
 xTt9obFzH0XlP31OMQCQ6g0pywqYrKzKa7uaRLEFUpQqXi9gse5fVhIVh
 0BpxOjEhvNbxi5J8zZpwVx/3qEwEnaeWWzUJ6utlSHEEv6HT5NzF3W4Q1
 DyQVJR9sYsxCehdycASckuNKZn6fZO054cTshZFohRHZCG/nD0LTWBwCe w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="400504432"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="400504432"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 02:12:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="790195044"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="790195044"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 16 Mar 2023 02:12:27 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 16 Mar 2023 02:12:26 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 16 Mar 2023 02:12:26 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 16 Mar 2023 02:12:26 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 16 Mar 2023 02:12:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oQvMAe6bM+ze6gYSmVGVNz6G2QrNxo9g7jE9ySdSy7m3nCIR8eeEzDgGKCWJ8Dp5+j/YgfY/lACsp/qWvD+ane30ViC4L5JLLt5xF4y0xeyEUESpc3czBK95XHypwL3Kg8ikdcKRqD8hMlLPxnONyYnlqp5bQb6EqGGyNPkKSBrtWRf5N1ijf0bLqmoq+Z+hKScQW7Mu0QZ4+3PJjTvwB3xA/A7c8W+1aXiLtzePrr7veCrxGC9vaQgXZ00MuHyGeDd9kx3490yAqFTE8C4xK1YmpJao45tWtBw2anzGi8tHHj1BljEt/8mHXvPU7R6kpofL2IFZ2B1stFKn7g9/qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RmjjQCBsVx//YQxyK1dFZH9njsVDxikr0PIPK9K2YMQ=;
 b=Giwh7Fo5L96ad3zLVi1gSNCDs0wv9j5mqSOQqP3YtRJo66lZmzqnICbymGDpmt5g5NTu7k+IZRO6z8HxLGzPBUOrtcBYMUGMn9/RnXCKf1BJtS64hjiF3slxeABM8C/wfdP2xjp9mUq6J9mtj84xb4ZE8UE8sG6hfp0gRx5vlzBpcu7fFvNvFswqC07S2zEBGaN12EwZaLa6FFb2CDvrhoERvt5g9vYn7FwxV7GZshgNlzNyalOa/QvzvrA9ZregPGBxxVxhqtTaNyRn9NLKLgkJ6ZpFo9gXUu7QlMzBc61G7DHJWClMnJrGrHJTuTpbHxvR2514gB4fxr7ds9bCPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MN6PR11MB8194.namprd11.prod.outlook.com (2603:10b6:208:477::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.31; Thu, 16 Mar
 2023 09:12:00 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::a238:46d2:74d3:28cb]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::a238:46d2:74d3:28cb%5]) with mapi id 15.20.6178.031; Thu, 16 Mar 2023
 09:12:00 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 6/9] drm/i915: Define vlv/chv sprite plane
 SURFLIVE registers
Thread-Index: AQHZVnVjrAVZvbZ1RUSs2do5hqdGfa79Ic6A
Date: Thu, 16 Mar 2023 09:12:00 +0000
Message-ID: <083b19674d8b36c98d1edb441cca8ac200c9fbdd.camel@intel.com>
References: <20230314130255.23273-1-ville.syrjala@linux.intel.com>
 <20230314130255.23273-7-ville.syrjala@linux.intel.com>
In-Reply-To: <20230314130255.23273-7-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MN6PR11MB8194:EE_
x-ms-office365-filtering-correlation-id: 9d20aa97-73ce-4c9f-c2bc-08db25fe7fef
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vC8jJDP4x3Cx5nGmI/9CqdwdsvO4zUCoVDBIBAkc5sp1KzYFJfrz4B4gT6IHGKHeY0DMpUujVZMWotmvf1jZYVoEmoa1OcubkiPgr18gvjBBLBfpX1klXPm5XoEyxrY98DxLbPH2ALCY2uXOdKdz1zbKhOjp0Z1zLkBPd6R94mMA2XQpstqDU5TNXQEnK6Mi0oZa7ysAwWtvB98tS+LR14wWKZZcvuxCoyX4gFogRDu7C2TkOKf8d1MzXVDx9ACv02qocHtSQTECqKjzBRzxzf/mTwqwSODTw2m0GxOV8dy1F8PWJc475HTjX/1eRuAaZlm03mJ7akwONZDZ+NhBBRwvwfaGSp2omZ/lJ0egaEsKWJYRE4L3paevszAJJlf6Xy1C/lXMEtKnRUiEXQRzxeNQq+Z2oM8+fA4RM/c+exYebD/h5Aa1iYS9PSa3gMD2uY47Df4wFFXTKrS9ewG3j8r9hmUhY90noUK2IS+BLR4bsl1GDDpQJJs7T7gENvyiCuDBFEkVZGWDhvMNUbXXQZWny/WDpgttXCiWhfzElcq3aII0n+LR71efQvsn8tUKAvYOH4KUDm+gZTYHYYSGG5fQzfRKPdqR7sXWPktJDN6u0UncsrI3Nf+TaSg+n83TSOrpxW9LHxET6eWfZzhyiLsZFfjdYhwHmyinpQvM1SSyBTwTwpmVYTDvClektP6UuOxxP+iUPhpNprT7w8dXyg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(39860400002)(346002)(366004)(396003)(136003)(451199018)(186003)(66446008)(8676002)(5660300002)(71200400001)(91956017)(76116006)(64756008)(66476007)(66946007)(66556008)(41300700001)(6486002)(478600001)(316002)(86362001)(110136005)(38070700005)(8936002)(122000001)(38100700002)(6512007)(36756003)(6506007)(26005)(2906002)(82960400001)(2616005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NVhBVnkyT05zbjk2MWsweTRvTlA2UDdxM1VLL2VJOWVxWktkZVZVTmR2WURQ?=
 =?utf-8?B?NUMyNnEzZzZ2cGVFaXNVM21MbjQ1dEhmWnhpdXFXYVZsNnhyVEplTm04a3ZH?=
 =?utf-8?B?N3A1WXFmcEFEb0xJVVBrblRBajV1V1FlTzNaeGl5S1FGdCs5RGl6dExab1kr?=
 =?utf-8?B?SU1TSGVEU25RV0E5SXdsRjZFUi9CdTZzNlRIeldHSUhRYWtXOUljVk9IRTJa?=
 =?utf-8?B?M2N2ZGQvdERINm0wdytEVHVmUlZFNWtmQnd3WmwwTTBaVndOYkxITzhvRlZv?=
 =?utf-8?B?eWtoWUY4eGUvQm1MbTcvcDZJMVEvdjdVMWxZbFRzWTdHOVd3WHdqRlRIL21S?=
 =?utf-8?B?SThaK0p0aEpDZ2ZLaXVXWGdyTkxYSmdQaUZ6WkN1c1d1MHdkTjZlRkFLdnhU?=
 =?utf-8?B?WGh0OUlNRHlndjRPU3N6WGZzUDBKejdOU1E2TW5BY05IK1pZQ09pUU11MkJi?=
 =?utf-8?B?TlNBTm9XYytTUzhHRzFSWnhYaHlCZmx5VXNiVTVOb0txR0NTaURTTGxjaE9Y?=
 =?utf-8?B?OENKZEVnSWhzQS84WG5QZjBJMVpFek0xNGI3NXFRci9JeGF5YVJja1ZvY2ZN?=
 =?utf-8?B?ZGF4SDR5UjFBWWlkSWVQY05PWHhkZThPRWZlQ1dRTW1IVnF1SG9DTW8zOU83?=
 =?utf-8?B?N01haUVtTERNKzg3Qmd4L3JZUG1SRWhnazZHbGtlT0M3Q3ZDSzBTRThWZm9o?=
 =?utf-8?B?OUN3VEFMU201bkhoTVk5a2dmOExQOGNVVWFDeTJzTXhFUkdBUWdLMjdjcWM3?=
 =?utf-8?B?VXVwT0Zpbk9saGlEcWQ3K0VJWmR1TUNUVXhFSWVpTzRUWFgvVXBSek45L0Zj?=
 =?utf-8?B?UXg2Q0dkZ3pvaXk1L1Y4VWhmOTVjOXVEaVNhZ05DTzViRzRqQllRNEV3MWt5?=
 =?utf-8?B?N2FuL2JLTDZKMmtyVjgvc2ZVbEV5YnU4QUcwTmVyV3hQUGg3eHF1RWwxeENM?=
 =?utf-8?B?OEliWThuMDNTTnJUVWdoVlEyZnluMjd1WlRLamdWN2gyTXNZYkRIaGcwaTJh?=
 =?utf-8?B?cGFFRjNuaTlFckIycUs1OGlmbS8xUC9xc29DS29jdnI5Vmx6LzFsbXVRUzZi?=
 =?utf-8?B?RkFCNnh4TDZWZTRnMlFGU2wzSnRkaHFNSnVRa3k3UTRFS0s2YVlSeVU2UDkw?=
 =?utf-8?B?QmV4RWZTQVNSVm5xQU5NYTlOMGJpTVlaVEJIa05ZQ1Z4cDNzNmhYVG1qY3pG?=
 =?utf-8?B?S29ydnlVNGdQdHdscm43OEwwTXF3ZWFURmszVEx0Q0RqbDl0TVV6MFBURFQz?=
 =?utf-8?B?c1FMU085NHJJMWgyZ2FuY0lGektoTUJvUGNSTjdpWC96amJKSzlUdmxDTUl6?=
 =?utf-8?B?YzlOSFNQRTBlZ1pSSEdKY1hhV1VqL2xnQXNkY0VPczdLOEdGR3FuZUVmZjA4?=
 =?utf-8?B?VHpyNEFFZGZmbEFTWGZmTWlRSlJFUjJDMEE1WFo2c0g5YlQzblh4S1BBbXhq?=
 =?utf-8?B?aUYrbmFjSUhLM05Qb2E4Qk5JbHI1UGxjL21HeEhWR251WktKK096V29OWTZ5?=
 =?utf-8?B?emxJN1JYN1ZmbjRaUXg2Tjl1RjI1YUZlMG1zZ3NDTFVZY0FyWGpENnFtY0lH?=
 =?utf-8?B?RVRRd3Z0dUtiV3B1NWNYekdaQm1SV25rdnp6NEhNZXdYWE1Bc0xoaDRMdW40?=
 =?utf-8?B?M3ZFeStJVkRKK2N5cmYySEFSUU1uWTQ5WUNhYngxTUlXanNjYlJRTDJGaUIr?=
 =?utf-8?B?ci82dU9oMGdueDB4UW9FZSt1UzN4OTM3eDk4a085N1h1SS9YM0svRWM2WFJa?=
 =?utf-8?B?Z2RmbXIxSXF2aU9lNHRyTjVuL25wd1dVTGt3QjhZZHdtYXdEcnR3L3NVUWEz?=
 =?utf-8?B?THlQREVzekJNT1ZLM0EyL29NdktCNXVjSlZXcVhoM254UlRPdnBPbHZGVHhu?=
 =?utf-8?B?RmdtVC96TW8yRSt3ZkZVYStVU1ZSd2NYRFVacFlKcFRPYkNPbEpXZFFGa0pO?=
 =?utf-8?B?R1dKcU1KbWUzY0VGZVpzNHR1bVhQR0xRNjZRRTFyNktQUC9RbTJhc2xMOWFt?=
 =?utf-8?B?V0VCU2ZYUEtIL0ZLZWszRk52VTFFRzBHMGR2MUhEUXZYaGFoSWtMUm11dTZx?=
 =?utf-8?B?OG9RWXMzcEROU0JmYngxSGxSanhUWS84MmxOMDlhbk5kL1J1TnA0V0JIWE9W?=
 =?utf-8?B?TGRmUlkxbVVPS0xjQ25Lak5zUVQrc3NEUUprdGJ1WlZLcTd1clNnNTNid1ZF?=
 =?utf-8?B?ZWc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <419862E5C9610F4EA5B0406DD22BBB6B@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d20aa97-73ce-4c9f-c2bc-08db25fe7fef
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2023 09:12:00.0772 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: csY/eEqyCQ96OnI7vf6gQ+jgGr0M3qc9IT+hgKC9WVVpFIE2eLS4ZGiVFvPXrX5Y6OVqNEhX4kCSAwozoT2Lc2Vr8+N9AB1cRVl//Ft8KMw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8194
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 6/9] drm/i915: Define vlv/chv sprite plane
 SURFLIVE registers
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

T24gVHVlLCAyMDIzLTAzLTE0IGF0IDE1OjAyICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOgo+
IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4g
Cj4gTWlnaHQgYXMgd2VsbCBjb21wbGV0ZSB0aGUgU1VSRkxJVkUgcmVnaXN0ZXIgZGVmaW5pdGlv
bnMKPiBmb3IgYWxsIHBsYXRmb3Jtcy9wbGFuZSB0eXBlcy4gV2UgYXJlIG9ubHkgbWlzc2luZyB0
aGUKPiBWTFYvQ0hWIHNwcml0ZSBwbGFuZXMuCgpDYW4geW91IHBsZWFzZSBwb2ludCBvdXQgQnNw
ZWMgeW91IHVzZWQgZm9yIHRoZXNlIGRlZmluaXRpb25zPwoKPiAKPiBTaWduZWQtb2ZmLWJ5OiBW
aWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IC0tLQo+IMKg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCB8IDMgKysrCj4gwqAxIGZpbGUgY2hhbmdl
ZCwgMyBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVnLmgKPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiBpbmRleCBh
MmI0YWY3MTFlNmQuLmU5MDg5NTlkYmE0YSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+
IEBAIC00Mzk0LDYgKzQzOTQsNyBAQAo+IMKgI2RlZmluZcKgwqAgU1BfQ09OU1RfQUxQSEFfRU5B
QkxFwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBSRUdfQklUKDMxKQo+IMKgI2RlZmlu
ZcKgwqAgU1BfQ09OU1RfQUxQSEFfTUFTS8KgwqDCoMKgwqDCoMKgwqDCoMKgUkVHX0dFTk1BU0so
NywgMCkKPiDCoCNkZWZpbmXCoMKgCj4gU1BfQ09OU1RfQUxQSEEoYWxwaGEpwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBSRUdfRklFTERfUFJFUChTUF9DT05TVF9BTFBIQV9NQQo+IFNL
LCAoYWxwaGEpKQo+ICsjZGVmaW5lIF9TUEFTVVJGTElWRcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAo
VkxWX0RJU1BMQVlfQkFTRSArIDB4NzIxYWMpCj4gwqAjZGVmaW5lIF9TUEFDTFJDMMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAoVkxWX0RJU1BMQVlfQkFTRSArIDB4NzIxZDApCj4gwqAjZGVm
aW5lwqDCoCBTUF9DT05UUkFTVF9NQVNLwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBSRUdfR0VO
TUFTSygyNiwgMTgpCj4gwqAjZGVmaW5lwqDCoAo+IFNQX0NPTlRSQVNUKHgpwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgUkVHX0ZJRUxEX1BSRVAoU1BfQ09OVFJBU1RfTUFTSywgKHgpKSAv
Kgo+IHUzLjYgKi8KPiBAQCAtNDQxNyw2ICs0NDE4LDcgQEAKPiDCoCNkZWZpbmUgX1NQQktFWU1B
WFZBTMKgwqDCoMKgwqDCoMKgwqDCoMKgKFZMVl9ESVNQTEFZX0JBU0UgKyAweDcyMmEwKQo+IMKg
I2RlZmluZSBfU1BCVElMRU9GRsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoChWTFZfRElTUExBWV9C
QVNFICsgMHg3MjJhNCkKPiDCoCNkZWZpbmUgX1NQQkNPTlNUQUxQSEHCoMKgwqDCoMKgwqDCoMKg
wqAoVkxWX0RJU1BMQVlfQkFTRSArIDB4NzIyYTgpCj4gKyNkZWZpbmUgX1NQQlNVUkZMSVZFwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoChWTFZfRElTUExBWV9CQVNFICsgMHg3MjJhYykKPiDCoCNkZWZp
bmUgX1NQQkNMUkMwwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoChWTFZfRElTUExBWV9CQVNF
ICsgMHg3MjJkMCkKPiDCoCNkZWZpbmUgX1NQQkNMUkMxwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoChWTFZfRElTUExBWV9CQVNFICsgMHg3MjJkNCkKPiDCoCNkZWZpbmUgX1NQQkdBTUPCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAoVkxWX0RJU1BMQVlfQkFTRSArIDB4NzIyZTApCj4g
QEAgLTQ0MzcsNiArNDQzOSw3IEBACj4gwqAjZGVmaW5lIFNQS0VZTUFYVkFMKHBpcGUsIHBsYW5l
X2lkKcKgwqDCoMKgX01NSU9fVkxWX1NQUigocGlwZSksCj4gKHBsYW5lX2lkKSwgX1NQQUtFWU1B
WFZBTCwgX1NQQktFWU1BWFZBTCkKPiDCoCNkZWZpbmUgU1BUSUxFT0ZGKHBpcGUsIHBsYW5lX2lk
KcKgwqDCoMKgwqDCoF9NTUlPX1ZMVl9TUFIoKHBpcGUpLAo+IChwbGFuZV9pZCksIF9TUEFUSUxF
T0ZGLCBfU1BCVElMRU9GRikKPiDCoCNkZWZpbmUgU1BDT05TVEFMUEhBKHBpcGUsIHBsYW5lX2lk
KcKgwqDCoF9NTUlPX1ZMVl9TUFIoKHBpcGUpLAo+IChwbGFuZV9pZCksIF9TUEFDT05TVEFMUEhB
LCBfU1BCQ09OU1RBTFBIQSkKPiArI2RlZmluZSBTUFNVUkZMSVZFKHBpcGUsIHBsYW5lX2lkKcKg
wqDCoMKgwqBfTU1JT19WTFZfU1BSKChwaXBlKSwKPiAocGxhbmVfaWQpLCBfU1BBU1VSRkxJVkUs
IF9TUEJTVVJGTElWRSkKPiDCoCNkZWZpbmUgU1BDTFJDMChwaXBlLCBwbGFuZV9pZCnCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoF9NTUlPX1ZMVl9TUFIoKHBpcGUpLAo+IChwbGFuZV9p
ZCksIF9TUEFDTFJDMCwgX1NQQkNMUkMwKQo+IMKgI2RlZmluZSBTUENMUkMxKHBpcGUsIHBsYW5l
X2lkKcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgX01NSU9fVkxWX1NQUigocGlwZSks
Cj4gKHBsYW5lX2lkKSwgX1NQQUNMUkMxLCBfU1BCQ0xSQzEpCj4gwqAjZGVmaW5lIFNQR0FNQyhw
aXBlLCBwbGFuZV9pZCwgaSnCoMKgwqDCoMKgwqBfTU1JTyhfVkxWX1NQUigocGlwZSksCj4gKHBs
YW5lX2lkKSwgX1NQQUdBTUMsIF9TUEJHQU1DKSArICg1IC0gKGkpKSAqIDQpIC8qIDYgeCB1MC4x
MCAqLwoKQlIsCgpKb3VuaSBIw7ZnYW5kZXIKCg==
