Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A25E6CBDBD
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Mar 2023 13:32:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8CDA10E875;
	Tue, 28 Mar 2023 11:32:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17A5010E17C
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Mar 2023 11:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680003119; x=1711539119;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=HZOrwh9MqXsNv8Jqm4lqhpy+YyaMaQIPv2rWeYgMM/s=;
 b=O8BrICjD3RjSTNiCqcbYMTRtUsqCSoHsPJW43WGwoXX12fDYJ4d2xewY
 vQkXIfuo4DA1FhBvS9sT3rQHCaqz/EYwI9/zO6WhvsBQ6vjhaMYKiEGK/
 5ufnYU+sj8ntaNUR0J59uNSygV+6sEat9gPOIKKZtvm5BADUnYX6j0YOq
 /R+VlczGAHBe9RDSjsArZcwhfmG52YXL+Mxjk6jwN/PDmwBxlylshPYmV
 pmj0W+l/oxBVBoiHHDeg8CmJ2Z6bOttrWU9wwJFEtt+chr9pJgwcAUD/d
 mIjmLoRoteCwdMooH0BPopnbfY+Fywg8GFucl4U4DmtPhFtqxd+ZfFZbC A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="342948894"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="342948894"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2023 04:31:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="773112652"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="773112652"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 28 Mar 2023 04:31:58 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 28 Mar 2023 04:31:57 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 28 Mar 2023 04:31:57 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 28 Mar 2023 04:31:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V0Y2vhU4gZo3WaN/sp7jymM6es9jproT/5g95BkS6Aic/hqG5FaV5RhsveF/XNHprviRAw1bQ4F+FzAGCNWyhw/Mse0P0I8xZtwdp0K8udshzroPk7LroTGR01tuQcD2ntFi51vqcIgM69iqrA12GnoYZ7/3aBFm4txfCDFX3hV40+KrUv4JHpV9bMyYejlUiuRYHFyxd2pZv4iwMaVMRfxtbH6Cnb4l+uHwDmukdCo+XiLsKheOSH7+UASZAe/GuWPqLkdThPGdosA9MaHuv3yLjhFyEyTcpSC62K25qSnWaZePrGN7hdT6BACTG8V72PSFF8rpIf+jXDuf9XFaUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HZOrwh9MqXsNv8Jqm4lqhpy+YyaMaQIPv2rWeYgMM/s=;
 b=IaGoQFoQFLrcxI7JJ82x3i7MyhPGsipxh6fsT86XMMGz3Xi6IdjgSG8lzmbsy8O8d1VloTeq8Z+pZxiyLsYAAupXKhnO0c/6JA9zUcuHrjXGCIETt9HajWPN3P/gfGVAmfKhcRoBkYfRx/x2h7WGvZjhaP7LhhxsY3KMEcxe6KEjQF1H3WgJV5yeS4iZyXJIRjc9IbsVuNk+JCF6JobYWe7zX1s3K/0tP/IN0vwIsT34Iydr/E2xsYIGzPKvVhMllF8XgarlT6oVrmlsDNQato12+48l9E008thQ7U+uexXhknBQGkymAxUL43+pWxaUgSAeFr4XTtIdPOZBcX8RAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 BY1PR11MB8008.namprd11.prod.outlook.com (2603:10b6:a03:534::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6222.28; Tue, 28 Mar 2023 11:31:56 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::a238:46d2:74d3:28cb]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::a238:46d2:74d3:28cb%5]) with mapi id 15.20.6222.032; Tue, 28 Mar 2023
 11:31:56 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v5 2/6] drm/i915/psr: Modify/fix
 Wa_16013835468 and prepare for Wa_14015648006
Thread-Index: AQHZXKnsgTaL6Gj7NEyqFbgZkh+uxK8QFGMAgAAEE4A=
Date: Tue, 28 Mar 2023 11:31:56 +0000
Message-ID: <2ff543070fbe6419ee76124ddac483b1cc3288f1.camel@intel.com>
References: <20230322103412.123943-1-jouni.hogander@intel.com>
 <20230322103412.123943-3-jouni.hogander@intel.com>
 <ZCLMvr4fridshPiA@intel.com>
In-Reply-To: <ZCLMvr4fridshPiA@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|BY1PR11MB8008:EE_
x-ms-office365-filtering-correlation-id: 98c9cfcb-de9b-4a73-26df-08db2f80093f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mbj+UHXubVPUAT0EilWxglwm25GxIQ48jGeJnAHPAPpYlxXxoqkzLNKNoS0ooAjrQ62msJ3/VBsKaGWyCehXSf84LM4DRNwBi80PZ9T45wGAvYVNbIcQ+EyuCjX032Rjjyl0RWWozvNfEFkULZ7Lfcb2Xd8mR73Gqwj0TlOkU+kHJ+WYvjFZMILcdeUwbf/HEeClNLJYZZ/iD0GCE25J9b4JAPPWLDQo9BRdca8f68UU5OeRhyXYElZp74Qwj1XtT7kwIukyBoz6q5qh86UDKmWFbSGsyM0T9KvDm89HvEyMlgYTZtH4sHB/uYobXhLE67FUeDDAOY/fhSYLyPdaTdJQrPNzOmlScrl1nGrRMxdbNxecLRivji/914UHw1HemsDcDX7iqsNRwu40JD/7LmvnAYIaHFYEUuXp4o76ia/f8nrAAzuxkfNeYWNaTdX3jWBjnznWDKw06hAd1CB2DB3YYjPTZ6TR3xAsVEpwEhD9IFakCIxD6NQZavBv4lIlrtKLBu5yhJNGCJbWCN1G89iS8J7AnHOgMoxmLnOVe7INwxjRGFxZ2RAmbz/tt9OcyhM8Bw99vxnLH6knKDvk7GQnipZGD8BY494Fk5b7fr75MNhJLZQxTVMNNhWBOB0r
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(39860400002)(346002)(396003)(136003)(376002)(451199021)(66574015)(91956017)(83380400001)(2616005)(41300700001)(36756003)(86362001)(38100700002)(5660300002)(6486002)(122000001)(66446008)(8936002)(82960400001)(478600001)(71200400001)(76116006)(66946007)(66556008)(64756008)(2906002)(8676002)(6916009)(66476007)(6512007)(4326008)(6506007)(186003)(38070700005)(316002)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Ni93MUljUVpxZGpFTWhhdGFJZzFCOUVrcklIeENXOFhpVnU4MjdyeGM5VEhF?=
 =?utf-8?B?RnZiWFJGZmJFRi9QdlFzVXpJdURVZk5yTlZKS0MzV1E0NnFZYVlSa3JJa0Yr?=
 =?utf-8?B?QVZSOXdseVBDYnE4YVY2WlFITk05UTJqMDFBd3ZSSXlrMEtJMWRrTUs0MFp4?=
 =?utf-8?B?VCtib2ZxSTh6ZENzVjJ6WVEza1dMQkptaTM1Z0p1c2R2V2ZCRzYyZXlKTXVs?=
 =?utf-8?B?dUNRV3JlbWpQVy9nRmc0ZTNiSVFxSVRvdndZR1NwdGJvVzVnOEc4Z3lKSlRx?=
 =?utf-8?B?Rm1JR3I1ajBUc0x2d2hZSWVjU3JOSFFWbFpHZXh3N0puZHRmNWNjTmN2LzBM?=
 =?utf-8?B?MSt4ZXAwN3pNM3owNGtaeTlTWnFPcmNLWXkvY3ZmbGVTQnYyVG84Y1Mza2Mr?=
 =?utf-8?B?M1RSRXZZWUhTZGVxaU9Bc3h1MzQyZzlsT2NrSElpakdmK2g1dEdMd3R5N2RV?=
 =?utf-8?B?R293TFBYWnBhb1hFVlJvWC8yYzRMVVUya1c2VHJ1cktrMTJGdEZpU1dWOThm?=
 =?utf-8?B?Uk1Zb3Q3UTZZQ3lneHZrTWRTc2laNUYxekRkcWU3eGxHME9BY1EzNGhqU1Za?=
 =?utf-8?B?SVQwQ25IS1lUSzFpYjVaRmFpTVBHeUFUOGlDRG1KL0srVG5aVVA2aTd3eW13?=
 =?utf-8?B?cVc4V0hTYnF0ZExzNzJGWGNoMzc1dW9XWnNxVGZtbFk0Y1ZhNURtWTdRdlhR?=
 =?utf-8?B?ZEltWWdFWEpFWmw5MUpVNmJ4UWNNakhERnhkblRvY0NVaDlySWMvTXZMY2VI?=
 =?utf-8?B?Y1luY3JuOGY1d0xsWXpiUHdldSt1MmNuMDRsYVVnMFYwcXFXcmd6SHRrc3NO?=
 =?utf-8?B?dHVnb0M5cGlKdnJGVmJRcHVnTldORW9jVVp0N0w5cUxNRjJPOWVjQkpBK1Y0?=
 =?utf-8?B?WlkrczBlQ040Z0JXUVlZbUNXalNFZjZvcUkveWxVWHMzSlZhWlZMYUJQQWxR?=
 =?utf-8?B?R0IvMVdsdDFUT2V2UUtSRUd0WE9xSnBjMWEyVkwvbDVFREVqREFQUW43WVla?=
 =?utf-8?B?UzhySjQ0YWdVa0dEOFVxRWIwTDNFR1FsUGV5MkJ1RGtpTzdmam42TmY4dVcv?=
 =?utf-8?B?UURuSFM2NnFTckF5OGtiQWRCZUZ3aVNxWUxPYjIvNk9XRWgvUzN6Q2svMlVm?=
 =?utf-8?B?djE0U2NuZjJYUGt5dVhQRjVzV0NQdXN3Z3EyS2hReWk0cng5QWliUlBiOUdr?=
 =?utf-8?B?OHhKKy9iRXhqdTYzbWYwWjE4UGRtQjVZSXBxS2NUSDhZMXAxNHJMbEQzS2dF?=
 =?utf-8?B?Yk5OTU00bTBtSVR6ejc4d05mREtad25NUk1NWGwybjQ3UUs5cTVxRmlMdWQ0?=
 =?utf-8?B?UlY0aGJRWWE2OXQyUjRVZkkxNnZWZG50WUJUZlNzWEFSVUhZSGJZNnVmT0pY?=
 =?utf-8?B?WTBCVnZKL0FKb3hMdnB6Rkp1MnZzenRWQ0E2cnBYcnRlZTlnSVJYSGZES2Ew?=
 =?utf-8?B?K3A5YzN1ZWdvK3V5TklQWDF3eEtGM1ZSSEJXVGUrQzVOZjlsN2lSZGNrcGx2?=
 =?utf-8?B?RUJmT3pnbXZQYzV3SnlOb01TVjFLZm84Njl1NjVKQmp2dlloWFlId1VEekpp?=
 =?utf-8?B?WjFwNm81MTEzZzJYWGFaWnE0WTk4VU9LY0o4SnQ0QlZ1MEplazBYVHFpcytw?=
 =?utf-8?B?ZElKR1BYaEZZVUZLM0Y0NzVhdkhSL2RDUEEyY1JEVWtRL0pDRElhcG8yblRK?=
 =?utf-8?B?Y29vN0N0MmtuUVU4TndGYVQ1TFYvTjhVZjB3U3ExWkhWR1VycjNSWWJPMzFz?=
 =?utf-8?B?OVlydVA4TVErVHBJdVRlKzVzcXN5WWNYUE1IWGg1VDZkVXdLSytHR2dzN2M0?=
 =?utf-8?B?WGFZM1ByNVo4N2J5Z2Y4VzdQcCtwcTRiSnIwZDhuZnFnZWhRR0NXZEpvVGw3?=
 =?utf-8?B?WDhVWTUzVjNFOStrcnBVcUhxNFlCSnpVNmhibkVFYXB2RzdRcHJOQnBwalVz?=
 =?utf-8?B?cTlLTm8wSmwvMnVPS3NFZUdGcW0vcHp0cXpHT3hRV0trSm5WTG56bXJ2UXJn?=
 =?utf-8?B?a0FhTHdNWXg5VlhoWUh6MVhTTEpzK0hmU1dPSzZCbFU4MTdmaHo2SmFWc0NX?=
 =?utf-8?B?WFRlY2VEZkF3T01oQXk2OGNlMzYxUVpoZ3hKSnN6OUlaUGc0WVVWTktVeTY4?=
 =?utf-8?B?MEhZdUwzNXNidkgzRUp1di9QZTdMeW1LNnBPaWVRdEF5Tng1Q05yZWJrQjBG?=
 =?utf-8?B?T3c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <4BAEFEB6CE9D8E40A5A4E1AADB8EE2B1@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 98c9cfcb-de9b-4a73-26df-08db2f80093f
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Mar 2023 11:31:56.0116 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rlIrKU3urkPJy8Y2yVi8/T981I7pHe/BMfQ9hcC5gxzeFNWxq0Y3aiTUVOfA8a0KhIyuisiWJWRJTZh4oJhbYN9v7rPAQVM34E3fbf7UbRA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8008
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 2/6] drm/i915/psr: Modify/fix
 Wa_16013835468 and prepare for Wa_14015648006
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIzLTAzLTI4IGF0IDE0OjE3ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
Cj4gT24gV2VkLCBNYXIgMjIsIDIwMjMgYXQgMTI6MzQ6MDhQTSArMDIwMCwgSm91bmkgSMO2Z2Fu
ZGVyIHdyb3RlOgo+ID4gV2FfMTYwMTM4MzU0NjggaXMgYSBzZXBhcmF0ZSBmcm9tIFdhXzE0MDE1
NjQ4MDA2IGFuZCBuZWVkcyB0byBiZQo+ID4gYXBwbGllZCBmb3IgVEdMIG9ud2FyZHMuIEZpeCB0
aGlzIGJ5IHJlbW92aW5nIGFsbCB0aGUgcmVmZXJlbmNlcyB0bwo+ID4gV2FfMTQwMTU2NDgwMDYg
YW5kIGFwcGx5IFdhXzE2MDEzODM1NDY4IGFjY29yZGluZyB0byBCc3BlYy4KPiA+IAo+ID4gQWxz
byBtb3ZlIHdvcmthcm91bmQgaW50byBzZXBhcmF0ZSBmdW5jdGlvbiBhcyBhIHByZXBhcmF0aW9u
IGZvcgo+ID4gV2FfMTQwMTU2NDgwMDYgaW1wbGVtZW50YXRpb24uIEFwcGx5IHRoaXMgd29ya2Fy
b3VuZCBpbiBwb3N0IHBsYW5lCj4gPiBob29rLgo+ID4gCj4gPiBCc3BlYzogNTUzNzgKPiA+IAo+
ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5j
b20+Cj4gPiAtLS0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
YyB8IDQ1ICsrKysrKysrKysrKysrKystLS0tCj4gPiAtLS0tCj4gPiDCoDEgZmlsZSBjaGFuZ2Vk
LCAzMCBpbnNlcnRpb25zKCspLCAxNSBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPiA+IGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+ID4gaW5kZXggOGRiZjQ1MmQ2M2MyLi5l
NjY2NzdlMDU1NGIgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jCj4gPiBAQCAtMTE3MywxOCArMTE3Myw2IEBAIHN0YXRpYyB2b2lkIGludGVsX3Bzcl9l
bmFibGVfc291cmNlKHN0cnVjdAo+ID4gaW50ZWxfZHAgKmludGVsX2RwLAo+ID4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaW50ZWxfZHAt
PnBzci5wc3IyX3NlbF9mZXRjaF9lbmFibGVkID8KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIElHTk9SRV9QU1IyX0hXX1RSQUNLSU5H
IDogMCk7Cj4gPiDCoAo+ID4gLcKgwqDCoMKgwqDCoMKgLyoKPiA+IC3CoMKgwqDCoMKgwqDCoCAq
IFdhXzE2MDEzODM1NDY4Cj4gPiAtwqDCoMKgwqDCoMKgwqAgKiBXYV8xNDAxNTY0ODAwNgo+ID4g
LcKgwqDCoMKgwqDCoMKgICovCj4gPiAtwqDCoMKgwqDCoMKgwqBpZiAoSVNfTVRMX0RJU1BMQVlf
U1RFUChkZXZfcHJpdiwgU1RFUF9BMCwgU1RFUF9CMCkgfHwKPiA+IC3CoMKgwqDCoMKgwqDCoMKg
wqDCoCBJU19ESVNQTEFZX1ZFUihkZXZfcHJpdiwgMTIsIDEzKSkgewo+ID4gLcKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoGlmIChjcnRjX3N0YXRlLT5ody5hZGp1c3RlZF9tb2RlLmNydGNf
dmJsYW5rX3N0YXJ0Cj4gPiAhPQo+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBjcnRjX3N0YXRlLT5ody5hZGp1c3RlZF9tb2RlLmNydGNfdmRpc3BsYXkpCj4gPiAtwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGludGVsX2RlX3Jtdyhk
ZXZfcHJpdiwgR0VOOF9DSElDS0VOX0RDUFJfMSwKPiA+IDAsCj4gPiAtwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoAo+
ID4gd2FfMTYwMTM4MzU0NjhfYml0X2dldChpbnRlbF9kcCkpOwo+ID4gLcKgwqDCoMKgwqDCoMKg
fQo+ID4gLQo+ID4gwqDCoMKgwqDCoMKgwqDCoGlmIChpbnRlbF9kcC0+cHNyLnBzcjJfZW5hYmxl
ZCkgewo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAoRElTUExBWV9WRVIo
ZGV2X3ByaXYpID09IDkpCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBpbnRlbF9kZV9ybXcoZGV2X3ByaXYsCj4gPiBDSElDS0VOX1RSQU5TKGNwdV90
cmFuc2NvZGVyKSwgMCwKPiA+IEBAIC0xMzU5LDEwICsxMzQ3LDggQEAgc3RhdGljIHZvaWQgaW50
ZWxfcHNyX2Rpc2FibGVfbG9ja2VkKHN0cnVjdAo+ID4gaW50ZWxfZHAgKmludGVsX2RwKQo+ID4g
wqAKPiA+IMKgwqDCoMKgwqDCoMKgwqAvKgo+ID4gwqDCoMKgwqDCoMKgwqDCoCAqIFdhXzE2MDEz
ODM1NDY4Cj4gPiAtwqDCoMKgwqDCoMKgwqAgKiBXYV8xNDAxNTY0ODAwNgo+ID4gwqDCoMKgwqDC
oMKgwqDCoCAqLwo+ID4gLcKgwqDCoMKgwqDCoMKgaWYgKElTX01UTF9ESVNQTEFZX1NURVAoZGV2
X3ByaXYsIFNURVBfQTAsIFNURVBfQjApIHx8Cj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqAgSVNf
RElTUExBWV9WRVIoZGV2X3ByaXYsIDEyLCAxMykpCj4gPiArwqDCoMKgwqDCoMKgwqBpZiAoRElT
UExBWV9WRVIoZGV2X3ByaXYpID49IDEyKQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBpbnRlbF9kZV9ybXcoZGV2X3ByaXYsIEdFTjhfQ0hJQ0tFTl9EQ1BSXzEsCj4gPiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB3YV8x
NjAxMzgzNTQ2OF9iaXRfZ2V0KGludGVsX2RwKSwgMCk7Cj4gPiDCoAo+ID4gQEAgLTE5NDEsNiAr
MTkyNywzMCBAQCB2b2lkIGludGVsX3Bzcl9wcmVfcGxhbmVfdXBkYXRlKHN0cnVjdAo+ID4gaW50
ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKPiA+IMKgwqDCoMKgwqDCoMKgwqB9Cj4gPiDCoH0KPiA+
IMKgCj4gPiArLyoKPiA+ICsgKiBXYV8xNjAxMzgzNTQ2OAo+ID4gKyAqLwo+ID4gK3N0YXRpYyB2
b2lkIHdtX29wdGltaXphdGlvbl93YShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAo+ID4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbnN0IHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlCj4gPiAqY3J0Y19zdGF0ZSkKPiA+ICt7Cj4gPiArwqDCoMKg
wqDCoMKgwqBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBkcF90b19pOTE1KGlu
dGVsX2RwKTsKPiA+ICvCoMKgwqDCoMKgwqDCoGJvb2wgc2V0X3dhX2JpdCA9IGZhbHNlOwo+ID4g
Kwo+ID4gK8KgwqDCoMKgwqDCoMKgLyogV2FfMTYwMTM4MzU0NjggKi8KPiA+ICvCoMKgwqDCoMKg
wqDCoGlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gMTIpCj4gPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgc2V0X3dhX2JpdCB8PSBjcnRjX3N0YXRlLQo+ID4gPmh3LmFkanVzdGVk
X21vZGUuY3J0Y192Ymxhbmtfc3RhcnQgIT0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgY3J0Y19zdGF0ZS0+aHcuYWRqdXN0ZWRfbW9kZS5jcnRjX3Zk
aXNwbGF5Owo+ID4gKwo+ID4gK8KgwqDCoMKgwqDCoMKgc2V0X3dhX2JpdCAmPSBpbnRlbF9kcC0+
cHNyLmVuYWJsZWQ7Cj4gPiArCj4gPiArwqDCoMKgwqDCoMKgwqBpZiAoc2V0X3dhX2JpdCkKPiA+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9kZV9ybXcoZGV2X3ByaXYsIEdF
TjhfQ0hJQ0tFTl9EQ1BSXzEsIDAsCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHdhXzE2MDEzODM1NDY4X2JpdF9nZXQoaW50ZWxfZHAp
KTsKPiA+ICvCoMKgwqDCoMKgwqDCoGVsc2UKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBpbnRlbF9kZV9ybXcoZGV2X3ByaXYsIEdFTjhfQ0hJQ0tFTl9EQ1BSXzEsCj4gPiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHdhXzE2
MDEzODM1NDY4X2JpdF9nZXQoaW50ZWxfZHApLCAwKTsKPiA+ICt9Cj4gPiArCj4gPiDCoHN0YXRp
YyB2b2lkIF9pbnRlbF9wc3JfcG9zdF9wbGFuZV91cGRhdGUoY29uc3Qgc3RydWN0Cj4gPiBpbnRl
bF9hdG9taWNfc3RhdGUgKnN0YXRlLAo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29uc3Qg
c3RydWN0Cj4gPiBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQo+ID4gwqB7Cj4gPiBAQCAt
MTk2Niw2ICsxOTc2LDExIEBAIHN0YXRpYyB2b2lkCj4gPiBfaW50ZWxfcHNyX3Bvc3RfcGxhbmVf
dXBkYXRlKGNvbnN0IHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUKPiA+ICpzdGF0ZSwKPiA+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKCFwc3ItPmVuYWJsZWQgJiYgIWtlZXBf
ZGlzYWJsZWQpCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBpbnRlbF9wc3JfZW5hYmxlX2xvY2tlZChpbnRlbF9kcCwKPiA+IGNydGNfc3RhdGUpOwo+
ID4gwqAKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAvKgo+ID4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqIFdhXzE2MDEzODM1NDY4Cj4gPiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgICovCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
d21fb3B0aW1pemF0aW9uX3dhKGludGVsX2RwLCBjcnRjX3N0YXRlKTsKPiAKPiBIbW0uIEkgdGhp
bmsgdGhlIGNvcnJlY3QgdGhpbmcgd291bGQgcHJvYmFibHkgYmUgdG8gc2V0IHRoZQo+IGJpdCBp
biBwcmVfcGxhbmVfdXBkYXRlKCkgYW5kIGNsZWFyIGl0IGluIHBvc3RfcGxhbmVfdXBkYXRlKCku
Cj4gT3RoZXJ3aXNlIHdlIHJpc2sgcnVubmluZyB3aXRoIHRoZSBiaXQgaW4gdGhlIHdyb25nIHBv
c2l0aW9uCj4gZm9yIGEgd2hpbGUuCgpJIHNlZSBpbnRlbF91cGRhdGVfd2F0ZXJtYXJrcyBiZWlu
ZyBjYWxsZWQgaW4gaW50ZWxfZGlzcGxheS5jOgppbnRlbF9wcmVfcGxhbmVfdXBkYXRlLiBJcyBp
dCBvayB0byBjb25maWd1cmUgdGhlIGJpdCBiZWZvcmUgdGhhdCBpcwpjb21wbGV0ZT8gVGhpcyB3
YXMgdGhlIG1haW4gcmVhc29uIHRvIHBsYWNlIGl0IGluCnBzdF9wb3N0X3BsYW5lX3VwZGF0ZS4K
Cj4gCj4gPiArCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoC8qIEZvcmNlIGEg
UFNSIGV4aXQgd2hlbiBlbmFibGluZyBDUkMgdG8gYXZvaWQgQ1JDCj4gPiB0aW1lb3V0cyAqLwo+
ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAoY3J0Y19zdGF0ZS0+Y3JjX2Vu
YWJsZWQgJiYgcHNyLT5lbmFibGVkKQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgcHNyX2ZvcmNlX2h3X3RyYWNraW5nX2V4aXQoaW50ZWxfZHApOwo+
ID4gLS0gCj4gPiAyLjM0LjEKPiAKCg==
