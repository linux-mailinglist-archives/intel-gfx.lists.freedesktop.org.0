Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D3F4606969
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Oct 2022 22:19:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D8C710E073;
	Thu, 20 Oct 2022 20:19:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6422010E073
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Oct 2022 20:19:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666297186; x=1697833186;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Trxdmr9DO/MSBAzjtXBa9OCIQEELvS8KPhXWxrlZfP8=;
 b=IaPtYveH1n5T8tI5trSHJhAycIVQlydfcbSD9j7WPem8yxX6rVdl1UJ9
 R4JLKxh1B1ZnK/0NuqUXGkWHqp5ZC/OGSsqf6jaZzfkblZZNQrOwaEXEw
 hh6DeXYo/bE2u70crN8z29UcxYvN5l3/rEWfq0mo1c6xVBIDdZeBd5hC8
 In6sStA3azO19hyIyJ2bs70IdKT/PuCzU9RC72xCLZaZm9xy0XswLiXLS
 5gEyQCmQV5F8HcdWwPlewf89DboQDtCB+lBqrgMyPodiudlAJx3ji/LMr
 cwVXKwaEZommliYuFAriH3FRrSxFBq1+cVesJU71Nmevop81eRWMcNGgk g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="305565820"
X-IronPort-AV: E=Sophos;i="5.95,199,1661842800"; d="scan'208";a="305565820"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 13:19:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="698891034"
X-IronPort-AV: E=Sophos;i="5.95,199,1661842800"; d="scan'208";a="698891034"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga004.fm.intel.com with ESMTP; 20 Oct 2022 13:19:45 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 20 Oct 2022 13:19:45 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 20 Oct 2022 13:19:45 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 20 Oct 2022 13:19:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eS4abHwZEeOIfK6FhqmHcfkxPek9cLd1tMo545Jh/enwHcCivIUsyeoWh65cM7XG6ywNBahppDweUclmRq3d5/krI6HdPBlwc4gX9eo14WoCI47sXqYbER/MPHukoNndPc1yqJNLUXhQIj+j+e6zw7F78AOlBnaWX6d0DPxXln2br5MYQW0xOeJO8UNZ6nYuBVjlnvWQpaesY4CRJCoYTuuKqxqxcipyZ8XSCkN/F+t0AjjFwG3EWfshcRzzXZfVcx1X2EMamq6BEt9+0tg6fLkJu6Az+lOVSCig1/SZXL4lQZovh9ztEFMLCsTEh6dBC+UVAQAfGMUn/lZtgpDRWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Trxdmr9DO/MSBAzjtXBa9OCIQEELvS8KPhXWxrlZfP8=;
 b=AhsndqdD1+o8HLaKDqBYIo0kjyJ7h/2EAxudmIs2BdUOExgieI9QIljHhcnzBxYVW9SyGBxVNgmEAyJu99i+bdOQuIzjrHkEODOMQbwCXsl3wGAhp+JRhlqJZ6VfXGimBP4tBV7jp5Q80zY2JV19Jyo2Wl1DhvDKLngAJ8YPxMFLp0g9r2VO1ceSJzrwhML5sLIsmkhsv1zbzraJP1AqwOLS0lEaqT0scwDOI1HCuwGaeoU7R20wAM673jrRwOfSk5MzMaGyMDqDp2SEahR2VJGA9J7/KFH5SQ42I17sbjuBvweET7hzrMmucs3a2zdNBSHD6hGPwadqYF01etHtQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5573.namprd11.prod.outlook.com (2603:10b6:8:3b::7) by
 MN0PR11MB6009.namprd11.prod.outlook.com (2603:10b6:208:370::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.35; Thu, 20 Oct
 2022 20:19:43 +0000
Received: from DM8PR11MB5573.namprd11.prod.outlook.com
 ([fe80::9e0f:8983:f02b:937c]) by DM8PR11MB5573.namprd11.prod.outlook.com
 ([fe80::9e0f:8983:f02b:937c%7]) with mapi id 15.20.5723.034; Thu, 20 Oct 2022
 20:19:43 +0000
From: "Summers, Stuart" <stuart.summers@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Auld, Matthew" <matthew.auld@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: use i915_sg_dma_sizes() for
 internal backend
Thread-Index: AQHY5JZv3OnNs9gsaUemlXQ9cWVDia4XuWMA
Date: Thu, 20 Oct 2022 20:19:43 +0000
Message-ID: <7e292c0e8813d9d9879317925b6f05c4ff32d2bb.camel@intel.com>
References: <20221020151047.369354-1-matthew.auld@intel.com>
In-Reply-To: <20221020151047.369354-1-matthew.auld@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5573:EE_|MN0PR11MB6009:EE_
x-ms-office365-filtering-correlation-id: 39c2f0a0-edf4-471e-f06c-08dab2d86caf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: q6jmyokDOIpvQjyaF4EKgtTqAYTqHR/TihvnlPgSkzmZ8kT0y56cu9xL6L7/OyOUV1WLGzAXXU6bQIJPIJjJhA2owwYMBxE7qeHCKQCEVqp9xA3Tl72BK2rt4cQFAJPZMomy7lKxu7I5KFUtVBJdKqw40m1oUz7uQT12JdttbJn9j/tCaZokhtMDf4C+T5fz0sqMDJ1t/KFC6wPIBqGekRBcwGlF6be9LWOUFfNWfZXZTJSa45LdujhVl2oyxA6kX6m1jiq/h1df5yPhKHiOeXSOf/qqi2zFsnepZ7rDB24cqHVKZSqqnEqKtOti0eTC8OhmTmj3K78WUf5/qN7hWwa+GAqKTRo0oLNoFbnDmnPQxGbPhnn2Ibb/f06QIFzuPxt7k39/Z0jDFUCMS91bvSkUooL4E5M1FIsGsq/EFDa5GsAdrKW58YHBR5yJsJXOmjUjaCoPCUjDY/YtDpogsIZzXqTuXoHPlstpnmF5oG731lFW8r1ZHHwFZCCLcmpIy9xaVFPGeHW2RtGIAWyDyIhCDFSmmwXG8e9NBwgxRVmE13R1mjKw4CIYwAdAC8sgVFIF32zRtqU1NmttFj8pxBBYhII8GY2J0PlOZeHCjZnfR4jB49frPveWu62WEo5TeWsOQkTpxc24HLET1TWydbOm9Kv7nOetNlaPmZSU0L4qATsHJIUAaghix+M8BNuJNyB/Pdnh8EQ5NbFeU4E0y1VdA5WLghC0dA7RY3GNpOU3BoQL3f9G7cuK4zZneVg9gxvgO/ROmDONy8OduumvNQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5573.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(396003)(376002)(366004)(136003)(39860400002)(451199015)(36756003)(107886003)(2616005)(82960400001)(122000001)(110136005)(66946007)(4326008)(91956017)(8676002)(6636002)(26005)(6512007)(316002)(6506007)(86362001)(76116006)(71200400001)(186003)(6486002)(83380400001)(478600001)(8936002)(2906002)(5660300002)(4001150100001)(38070700005)(38100700002)(41300700001)(66446008)(66556008)(64756008)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cGRQOWlwNWg4cWJ6RHlNa2lHQ29IQm9ndE9JU3NIZnZjUldESjNhWlVUNSs5?=
 =?utf-8?B?UElEbGV5VHU3MWE2SG1xaWlINU5ERWJuakVlQzBxOE1lTGdqZDdMTHc5VEFx?=
 =?utf-8?B?L2liS0JidkhNWGEyN0JmWS83ZHdpOHhkc09qc05QTUFMUVQvS0NUUnFuMnls?=
 =?utf-8?B?ajhleVltUlBvdnMyNVgrMTNWMFNxVERndmNxbTh5Q25CWlNTdmlSR0pYVDl4?=
 =?utf-8?B?dUUzYWxIMXZpSThaNUlwdHFRR1dTWE1aQnhoK1JOOHhLMWg1dkpmNU5GT1lX?=
 =?utf-8?B?NnJmQ1IrVk81WXppRGhSaGl1WEFJbVorc3FJWDJPSjU3SmwwZFQ2YmtoWGRT?=
 =?utf-8?B?cS9OMEVCdWJ2enZZZ1M5b0t2RDgyUzB4WGFrandoelZGWHZ1TmNKaVpkRWdl?=
 =?utf-8?B?cEhqOXplVHkvTUNkN2hUMDFJemJsMjVlYlJPWkVQQ05ZTFJWWWl2SEZydGpR?=
 =?utf-8?B?VFpqRkxRVVFPSVRKankxdTdMVk1SZFdWaWtHOVhKTEZ2MEMxcithaWdlUW9j?=
 =?utf-8?B?elJVMHJWbmpXUDczWFh6TlVvdkdPZHJtSUNCNzBLL0NrVGlxVDlSTDY3cW9h?=
 =?utf-8?B?ZkwzbHY2em0zQnJud29iUzgwVVdVcklUS2tuWm9tQW56ZE5FZWMyUC9XRnpw?=
 =?utf-8?B?aFBBbTVoYkN0OEw0SllLbVhaR0ZFbi9lcVlWWjdWdU5QNzdZK2RwRzg3dmFT?=
 =?utf-8?B?MzQySTJKekZRNEdndkIvblIwTHpRVStMUzlNWkNXQzdPVWk2VU1FVGVrZVYr?=
 =?utf-8?B?UUxaQmZzc1h3MW13Vm1GeTU2ZmJPWGY1UzJHZ1lqMVpxd203RkRVQmtkQzVp?=
 =?utf-8?B?WXB6YkFqd2pWbDY2cUtjeVZselNLdzUwRVIzbm5BTW11c0VaaG1mc1RrUkQy?=
 =?utf-8?B?UEI3V2I5WGprWXRibmI1UFByNGtFUTZpdVdZMm5nZUxNTEtpMHJUQ3pSNjBP?=
 =?utf-8?B?dS9IRHJtUmM0dUlWVFhOdjI1eFFpaGFSUGR3UlFZQ1ZHTWhVYVhmWkNGOXRW?=
 =?utf-8?B?ajNtaUZNYm5WSE1KNkZFMWwwd3FDOU1VYTBBY1NtU09tcEJOQUZZRGVucEx1?=
 =?utf-8?B?R1BPSHJlMWVCQnhvSkFZYnpNb3UwZlc4V2ZmcGoyOVlScFRpcDJHRGIxZmtF?=
 =?utf-8?B?NGVPN3BuSWVIWUk2cGN5VzNSOHRHSnhqam5BRzZlZlgwTzRxNUJpNlp0bGM4?=
 =?utf-8?B?RFlYaHpIeW40ZytSWXNpdkhpNjNVWmZtby9pUFAzeFkzYjRENGdwZmZPN3FH?=
 =?utf-8?B?c3hybVo4aVdFMUhZWVBvdWdHL3IrVzFrT1BGTkFYY2VWZytoVDZSS2tmSDNt?=
 =?utf-8?B?c1dIRUVtWStzQ2hwcHI4RXRmbkhqa2pYTWVFcE5rOE1vMVdHM1pSZ1pTVElU?=
 =?utf-8?B?VCt3MXRvQWNabW5mVy9YUHltamMxaUF5YkUrWXdoUTZJSjJKNVNzNnRJU2VR?=
 =?utf-8?B?Z2lUc211NHNZVERyMG1CRlRYY2FyMHc1d3ZYdGxIRGU4N04vZFowa0NEdmdQ?=
 =?utf-8?B?M1MrN05waXhxYUt4NEVZK0xBR0dMdWJqS0h4Z2EzYzV3MzhyYjhqSU9kZ1BB?=
 =?utf-8?B?Q1ZkcHVNV0l3b1pDcW4xUHY4cFFKOU5razlPWmpkdUZHV0k4SkJrTnhwanIr?=
 =?utf-8?B?VEEybjhPUTVKemVXb2N2WG9WUUEySnBEZ1JUQkljak01Mm9iK0kwM25sNGcv?=
 =?utf-8?B?OUtmejZrR0FoRmFOTCtZNmV1OUVXTnBHcDdCblhFaVcxZHZKeTFiTHZ5azM1?=
 =?utf-8?B?d29tZUJsQkhYaHl2cWp5Q05PVllIS01SVzMzam9OWjByckhrQ2RaQTVoTnF6?=
 =?utf-8?B?eEpTSnpiUGFDVzZ5MmtsQ2ZYbk9rRTRISFpWZWxmcFR6ZGZUSklYZ3NITnEx?=
 =?utf-8?B?aGdVdUpnTkxIcHVqMlZVcDBHSXJVcEJxSjdOZGtrTDZvWWFqNHRGNGFoT1B2?=
 =?utf-8?B?NkNXZW4xUk5zeUlUN1BkZm4rSmZPajFRaTczS3lVcjZIcEQzVnFWY1ZoZFNl?=
 =?utf-8?B?TXJpdmlJdGFuOFN2UE4zaVJhbWRrOVR0OFFwOW15bzZkYXJuaklVYWNLVmhB?=
 =?utf-8?B?bWlzU1VyVlJzTjdydHdPQXlMdE02aTFXQWtYZTgyRGVtTndZYUhpc1g2NVJs?=
 =?utf-8?B?NzQ1cW5lTXhCYTl3c0pZY3lnRXMxTFlDRHQ4b0piTHdGaG8yY2xsUVpDZFVF?=
 =?utf-8?B?amc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <2B3F36AF71E5E04285E36C0DC2E7CF67@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5573.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 39c2f0a0-edf4-471e-f06c-08dab2d86caf
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Oct 2022 20:19:43.2340 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tgY4huN0wIgQDIDVQ7f+ysMWJsBmtesAVquCI6agdCtSxk1I4N3H/rH8aynlhtvnBhbH1qYhKUb2MrvplnAd239T2XyKQA88pVrWdpklIN8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6009
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: use i915_sg_dma_sizes() for
 internal backend
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
Cc: "Hajda, Andrzej" <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDIyLTEwLTIwIGF0IDE2OjEwICswMTAwLCBNYXR0aGV3IEF1bGQgd3JvdGU6DQo+
IFdlIHJlbHkgb24gcGFnZV9zaXplcy5zZyBpbiBzZXR1cF9zY3JhdGNoX3BhZ2UoKSByZXBvcnRp
bmcgdGhlDQo+IGNvcnJlY3QNCj4gdmFsdWUgaWYgdGhlIHVuZGVybHlpbmcgc2dsIGlzIG5vdCBj
b250aWd1b3VzLCBob3dldmVyIGluDQo+IGdldF9wYWdlc19pbnRlcm5hbCgpIHdlIGFyZSBvbmx5
IGxvb2tpbmcgYXQgdGhlIGxheW91dCBvZiB0aGUgY3JlYXRlZA0KPiBwYWdlcyB3aGVuIGNhbGN1
bGF0aW5nIHRoZSBzZ19wYWdlX3NpemVzLCBhbmQgbm90IHRoZSBmaW5hbCBzZ2wsDQo+IHdoaWNo
DQo+IGNvdWxkIGluIHRoZW9yeSBiZSBjb21wbGV0ZWx5IGRpZmZlcmVudC4gSW4gc3VjaCBhIHNp
dHVhdGlvbiB3ZSBtaWdodA0KPiBpbmNvcnJlY3RseSB0aGluayB3ZSBoYXZlIGEgNjRLIHNjcmF0
Y2ggcGFnZSwgd2hlbiBpdCBpcyBhY3R1YWxseQ0KPiBvbmx5DQo+IDRLIG9yIHNpbWlsYXIgc3Bs
aXQgb3ZlciBtdWx0aXBsZSBub24tY29udGlndW91cyBlbnRyaWVzLCB3aGljaCBjb3VsZA0KPiBs
ZWFkIHRvIGJyb2tlbiBiZWhhdmlvdXIgd2hlbiB0b3VjaGluZyB0aGUgc2NyYXRjaCBzcGFjZSB3
aXRoaW4gdGhlDQo+IHBhZGRpbmcgb2YgYSA2NEsgR1RUIHBhZ2UtdGFibGUuICBMaWtlIHdlIGFs
cmVhZHkgZG8gZm9yIG90aGVyDQo+IGJhY2tlbmRzLA0KPiBzd2l0Y2ggb3ZlciB0byBjYWxsaW5n
IGk5MTVfc2dfZG1hX3NpemVzKCkgYWZ0ZXIgbWFwcGluZyB0aGUgcGFnZXMuDQoNCk1ha2VzIHNl
bnNlIHRvIG1lLiBJcyB0aGVyZSBhIGJ1ZyB0cmFja2luZyB0aGlzIHRob3VnaD8gSWYgc28gcGxl
YXNlDQphZGQgaGVyZS4NCg0KT3RoZXJ3aXNlOg0KUmV2aWV3ZWQtYnk6IFN0dWFydCBTdW1tZXJz
IDxzdHVhcnQuc3VtbWVyc0BpbnRlbC5jb20+DQoNCj4gDQo+IFNpZ25lZC1vZmYtYnk6IE1hdHRo
ZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4NCj4gQ2M6IEFuZHJ6ZWogSGFqZGEgPGFu
ZHJ6ZWouaGFqZGFAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9pbnRlcm5hbC5jIHwgNSArLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5z
ZXJ0aW9uKCspLCA0IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9pbnRlcm5hbC5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX2ludGVybmFsLmMNCj4gaW5kZXggYzY5OGY5NWFmMTVmLi4zMDFjZmIx
MjdjNGMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9p
bnRlcm5hbC5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9pbnRl
cm5hbC5jDQo+IEBAIC0zNiw3ICszNiw2IEBAIHN0YXRpYyBpbnQNCj4gaTkxNV9nZW1fb2JqZWN0
X2dldF9wYWdlc19pbnRlcm5hbChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQ0KPiAg
CXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShvYmotPmJhc2UuZGV2KTsN
Cj4gIAlzdHJ1Y3Qgc2dfdGFibGUgKnN0Ow0KPiAgCXN0cnVjdCBzY2F0dGVybGlzdCAqc2c7DQo+
IC0JdW5zaWduZWQgaW50IHNnX3BhZ2Vfc2l6ZXM7DQo+ICAJdW5zaWduZWQgaW50IG5wYWdlczsN
Cj4gIAlpbnQgbWF4X29yZGVyOw0KPiAgCWdmcF90IGdmcDsNCj4gQEAgLTc1LDcgKzc0LDYgQEAg
c3RhdGljIGludA0KPiBpOTE1X2dlbV9vYmplY3RfZ2V0X3BhZ2VzX2ludGVybmFsKHN0cnVjdCBk
cm1faTkxNV9nZW1fb2JqZWN0ICpvYmopDQo+ICANCj4gIAlzZyA9IHN0LT5zZ2w7DQo+ICAJc3Qt
Pm5lbnRzID0gMDsNCj4gLQlzZ19wYWdlX3NpemVzID0gMDsNCj4gIA0KPiAgCWRvIHsNCj4gIAkJ
aW50IG9yZGVyID0gbWluKGZscyhucGFnZXMpIC0gMSwgbWF4X29yZGVyKTsNCj4gQEAgLTk0LDcg
KzkyLDYgQEAgc3RhdGljIGludA0KPiBpOTE1X2dlbV9vYmplY3RfZ2V0X3BhZ2VzX2ludGVybmFs
KHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopDQo+ICAJCX0gd2hpbGUgKDEpOw0KPiAg
DQo+ICAJCXNnX3NldF9wYWdlKHNnLCBwYWdlLCBQQUdFX1NJWkUgPDwgb3JkZXIsIDApOw0KPiAt
CQlzZ19wYWdlX3NpemVzIHw9IFBBR0VfU0laRSA8PCBvcmRlcjsNCj4gIAkJc3QtPm5lbnRzKys7
DQo+ICANCj4gIAkJbnBhZ2VzIC09IDEgPDwgb3JkZXI7DQo+IEBAIC0xMTYsNyArMTEzLDcgQEAg
c3RhdGljIGludA0KPiBpOTE1X2dlbV9vYmplY3RfZ2V0X3BhZ2VzX2ludGVybmFsKHN0cnVjdCBk
cm1faTkxNV9nZW1fb2JqZWN0ICpvYmopDQo+ICAJCWdvdG8gZXJyOw0KPiAgCX0NCj4gIA0KPiAt
CV9faTkxNV9nZW1fb2JqZWN0X3NldF9wYWdlcyhvYmosIHN0LCBzZ19wYWdlX3NpemVzKTsNCj4g
KwlfX2k5MTVfZ2VtX29iamVjdF9zZXRfcGFnZXMob2JqLCBzdCwgaTkxNV9zZ19kbWFfc2l6ZXMo
c3QtDQo+ID5zZ2wpKTsNCj4gIA0KPiAgCXJldHVybiAwOw0KPiAgDQo=
