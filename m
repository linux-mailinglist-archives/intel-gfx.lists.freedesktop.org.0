Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B08B16C0C8C
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 09:51:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B4DF10E294;
	Mon, 20 Mar 2023 08:51:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D74510E283
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Mar 2023 08:51:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679302261; x=1710838261;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=ujQbckDUlesPG4seSdEvU4KMT4b+wCVltueezBr1ZuQ=;
 b=OgBedWIXuIsNYbe/0h51NehjOAhOOZ15NUjOZta14bXbn0Op29whIjfz
 4KiG5eDnmcT7bPCtTS7Jur8znnWTR317HpKmaRXy8B7btBIv4OsP97eFp
 s5UsA3M7phYMCiZ9tVh6AUwaraj6HVFD28KkHbI7yETNg2IPIhtTpjmkr
 QDzY70ELDx53vIrhIx6vfdr8YMmnco6ETBY1l8ZDy0xdc+kwm6IrUWafr
 XG4jB9sjBj8vjez7zGtLRPPmnASjWg4QrDcfVmhL1kut+zgVkqvgJcbqR
 C1bq/TVyMj4VVBLSNFu4wqZJ1m0A4I9yuslr31UuizVFO2P+ZoHaLQYSd g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="366325153"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="366325153"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 01:51:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="658265864"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="658265864"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga006.jf.intel.com with ESMTP; 20 Mar 2023 01:50:58 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 20 Mar 2023 01:50:57 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 20 Mar 2023 01:50:57 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 20 Mar 2023 01:50:57 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 20 Mar 2023 01:50:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UvOkXITAs5T+xbkuW1BTInL79HXsV+u8sNH0vwCaoKcjhdWj8aUZYERinXy3y4416ZBUvUYi4BRBMmUc9ClOV+nTd2b5vQyi9MYEbzsp9kwpZbvhJSbxDK3ijiTodH5R03jzu/wxzAOAemHGO3oJTZTcA5M1OY8Eg9fblBuL39F0CWkBozT7zi7NJkvJVzu/7VlBytbKSC3atycbFy5XQGvixdYRJNLvLinPhTdn7zga5HTjlcGiR4MJ/vDfmse7eWeLzhLxr1yKZdXDRyGbqhiw2RNpWq4+Yl1Ei6cDtQX7ZzFrowPj8KvWd368aQzLM/RUt0+BtGaLd7OrjSGzRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ujQbckDUlesPG4seSdEvU4KMT4b+wCVltueezBr1ZuQ=;
 b=A0Tcv47HoYWrLYNuFFWULpYeI0NDnzorffzFoJWfRvIJERs2Ka/Qg53CL/2a6Xyw5G225VUQYnXt/A3zoRgwijEY8+PLbtIag3iW7fj9bZ/XDlOWxk607W0cJ9G7IdFUtRybpAqZjjZ1LZa2Vtf8OQfeL/cJNEMINO5f0llk+527ngQ5z49lIGXAGOV1unNCMGbXNWFkrjkYyoXSAWr4eAOC58o4PJpofsvOhtBLm/KKe9fJxj1n+1myfb2gMWvB3ixwouVWUVlvaqhVZm8naRBMOUm879C7S7YV9MmUf6wqs1LnPzZWU93gVrYBiTcu7nyzt3AFRD2jb4djuFHajA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH8PR11MB8257.namprd11.prod.outlook.com (2603:10b6:510:1c0::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.37; Mon, 20 Mar
 2023 08:50:49 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::a238:46d2:74d3:28cb]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::a238:46d2:74d3:28cb%5]) with mapi id 15.20.6178.037; Mon, 20 Mar 2023
 08:50:49 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 3/3] drm/i915/psr: clean up PSR debugfs sink status error
 handling
Thread-Index: AQHZWNZDVOTj7mk73UuSR40uGATw768DYHUA
Date: Mon, 20 Mar 2023 08:50:49 +0000
Message-ID: <a8ab03c1530624d768372f4d3aa82ebdf7973266.camel@intel.com>
References: <20230317134144.223936-1-jani.nikula@intel.com>
 <20230317134144.223936-3-jani.nikula@intel.com>
In-Reply-To: <20230317134144.223936-3-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH8PR11MB8257:EE_
x-ms-office365-filtering-correlation-id: 9f00c7f7-218c-49bf-100e-08db29203423
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 64JDqx8+Vpxh2jCnmfGsgEg1XZCsLK53/SZLTHHcNK+eCETEIyRu4BVAmbrySNlSaf1Uz4U8UNoH9TROLVD65h7AhbMPmfOfp61xumjL02KdTQzxeYIh0zuRPkKYzKY5g4TqzDaPyfe1FAtlXlFe7tsKOI400YCdN7tvwNAVxXlx1lpz2VI6B6KBNGBQLTYeZHjRk5HTFqsuxSJHFHHNbNG+prME26Nt7rlct7dTsm+Q9m46/8puwcR8FQZGDgVAcwRoW3ez+RPjFNPzypTsTU4cxhN2eXP8G0TXU2r0eEL/y/UJ0I52xkfKsy0bRiAT+/XhbyWi6nWEUNqv7B37ICCZvp1Fq7iPw4OPLqybCmSzl+vuWp+I16WVwj3jbILDYubwS1FNICUfyiY3TUY0kKcKeb6T7HKatsY7xlZ7KZeAT5SGxBNxBa5SyBzJ7KiQz9oGfeRweGc20vF9WBcVf3xANkuOEIkFXIcP4hcPqvp1Los8U9vOiXPq+ZD4utlP0YF89K1D9i94O5mCA1brCcLp9jnkno6crin5pH7D/vgY8bHN1765Klpp9QdXxXNvws+JOLTVZ/BdYgdJ97GW7AWnbNrtabBGsGvPo6OexoDiDtPQSloUVpPapboGmIM08MctHMPeBzTWOUYSpehb7cNW82OK9BVomvdh4rtrJ0z85LJBv7yXKsHJnZlsG/s2RHcJIk/nkWyHrpGc7M2hIw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(39860400002)(396003)(376002)(136003)(366004)(451199018)(110136005)(316002)(86362001)(83380400001)(2616005)(38100700002)(122000001)(38070700005)(82960400001)(71200400001)(478600001)(6486002)(186003)(26005)(6506007)(6512007)(36756003)(2906002)(41300700001)(8936002)(5660300002)(66556008)(8676002)(66476007)(66446008)(66946007)(64756008)(91956017)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ancwQmhudU5HRHpiZzQyeG5sNWtRTmVBdU9BZGpRaGRQUlBkWGhJQ3o5YUxs?=
 =?utf-8?B?NkNvQnJEQms4WStwakU2eTlnVXIwcWRJeFNVMXJ5bUdacXQ5ODZTYVROZk1N?=
 =?utf-8?B?WTVqMnRtOGVGQzlrNEgvY3lCN3BjSG5MOTcyTFdIZWF3Yk91V0NNaHBpNGxl?=
 =?utf-8?B?YVVlaC8xUWJSMWdUbnhGSW9aS2I3aU15cjZjTEpkWUp3TStrU0oyNHRNVlN2?=
 =?utf-8?B?aHJXNko5S1BVRUJVRDZTNmlyUHh1cFZ2aDZzV0prTjNSYzFuV2ZjK3RtaFlI?=
 =?utf-8?B?cFBtVndtdEZnS3dRSEZvSURlYnY3VllaWmkrRkkvaDJRZmF1cVZNMDZWc3BI?=
 =?utf-8?B?QlVpdkI0aFdBMncvQmdvbHpERUxoVGh4VVVIUEtKT3N5TGJVeTR0Z2NiM1d2?=
 =?utf-8?B?dlhLb2IvN0JONUNNcUo1akNYYnRuUzYxd1JYMnNQMHZsS1djUzJGdXU4WG43?=
 =?utf-8?B?ckQ4cmlTa3RydkVDeGRjL2w0UmhtNFRlTEdoUjFhSHBoT1JzcUttbGxTUDht?=
 =?utf-8?B?dVdpMzZPVVoycFo1RGlJd2FUN1NUa3JUNVZWZWlOY25wcFBDU1c2Mkh5Zit4?=
 =?utf-8?B?VlhhL1JnVkN4UkN1U2t3WXFpcmNacFpySmxsL3plOXErNmpaVU5kTkIrRmp6?=
 =?utf-8?B?cXlyYWYyekQ5b1ZUaTFBR3VxeHFaZWIrL2R3L2lkTmFERDJaN0pWQkN6aDlB?=
 =?utf-8?B?Y1pMV2RvZ3dWTC9zdzhycVljbUhobE1qWlBPNHNnc3BFRG1DNDB4ZEwxNnFh?=
 =?utf-8?B?T1RWKzIyb3RYNFEwS2pxcE9RTVlQUCtVS2xPdDJ3ZitGQk9hQkRQSE9uNk5L?=
 =?utf-8?B?WFNCNTFFNnByUjlVMTB3NEdKeEVQWCtEajJQdjdHQks0c010VXk4aVQrcHdF?=
 =?utf-8?B?UjRLek5aUU1HTnEyby9ZWHJNTzczUnMyVkFCam5ocjM5VjdRQzEwakd5ZXgz?=
 =?utf-8?B?T0ZMVWdtQmdqWVVPQUVKKys1cEorTFVSZCt5SHZHWGw5N0lYWjNYOENuZUJi?=
 =?utf-8?B?TGFZcWJTMldwRTVIL3V1Qlh4NFF4cmFoeFBBUndJWTQwMUhhMUdkbHVOK29D?=
 =?utf-8?B?NGNIOWZEK2JhSWxVVlFsSGJ1ejRnRmt4cXZzM0JrTVh6d3RIYnNDb2E5Vk01?=
 =?utf-8?B?OWZYZHlIQ0FpbDU2cGNrMGMrb0RuQ1BsMnV6RnhhTFh2YkZxWjdWc1FtbmYx?=
 =?utf-8?B?OXhneHp3aGorZnpkVC90L2Vnemoxalc4Mmdnb1FwT2x3SjZhaFBuRGpURUlY?=
 =?utf-8?B?V3J2cUl4blVrOThtRGpiSkFkdkpvdURZOS9ncWFvcE40WWJVZjBzWVdnUWQ5?=
 =?utf-8?B?blUzOVZHRGNsUlRVMXNGUUNkSk43ejZqZlRsbWZWY2o3WjV1YXJZTk1ydzMy?=
 =?utf-8?B?clVKc2ZRME5sVHRtek1PM0hHWkp4YzRKZmkwVmZkNFlLMzVERFNEQ2JrUlhj?=
 =?utf-8?B?c0thclh5OElrRHEzTy9EL0FGL2Y2M01SMTM2WjMzS0I5OWZwaGlVclVKajB6?=
 =?utf-8?B?bWc3RVBrczUwK28vbjcvdXpvMTRueXBSa0wzVTZmRjdDWDBLQ2JnTndOckgw?=
 =?utf-8?B?YnNMVEF0VE05ZGxNbHNNcnA2ZEsyU1V1WEFSR3Y2ZGlKeHZTbiszdm5Tbmk3?=
 =?utf-8?B?VUIrUDVJVkhsM1pFc3ZsREFiQnUxTWoyUnZHMjlCMjJaTi95QXdaa2N3NFdI?=
 =?utf-8?B?Nmx1OFhzNUxFRk0yWG54eEhIeFk2aGRuYkJCZDVxc1Y0b3p3ckMrZndPUytj?=
 =?utf-8?B?SGlnZHhsWkRJUDBRQmY5L3RjQTZ6bTh2cUpHdFhtSytFT0JGNGdJVzh2S0RO?=
 =?utf-8?B?YnZ4VFd4bDlLdCtpamtadGRYaG12WnJTNUxaVDkwWmpCWUVhUk8wc3ZSMjRw?=
 =?utf-8?B?YlVaVzBxWDB4eHJ3NjN5Vzd5ZXp0MHRYeDR4aXlEWjVzSUYyYXgwd1BUMHlV?=
 =?utf-8?B?Q2tFbnR6SnlGNURHT2NiVDY3eW1XOFR2Z0NTR00rOTBYRkhQOWFBMXZsQmtt?=
 =?utf-8?B?ejJMOHlXRnNMZ1NTVnhVcjZZaGVPaWtoVDRHY2VkU21Yb3VGUWs4eXhrREZ6?=
 =?utf-8?B?QWhUNkpBNE9BNDJISDBKOVNkYU9IQXUwYjFNWm5mNC8zdEJra3JWQm5EZVZn?=
 =?utf-8?B?SWZJdEVUc0poY2ZreVVReHVPcGljTDQrdlRiWkJLMkdoSHo0dWExYzdyWXVS?=
 =?utf-8?B?cEE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <3D4D5DB987762949829CD93F9D231B31@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f00c7f7-218c-49bf-100e-08db29203423
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Mar 2023 08:50:49.2837 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gyK8TiFx7l0aNKFUeWgwN+Mz2Gqryep1YD6M5Z8Mq8+jzK7kKpxg8Ce+6v3v7IsvFEp7HNwf8c5RmYhyQRXlVNe2Z+/K9JtBUDClNvOUGvc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8257
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/psr: clean up PSR debugfs sink
 status error handling
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

T24gRnJpLCAyMDIzLTAzLTE3IGF0IDE1OjQxICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToKPiBI
YW5kbGUgZXJyb3JzIGZpcnN0IGFuZCByZXR1cm4gZWFybHksIGFuZCByZWR1Y2UgaW5kZW50YXRp
b24gb24gdGhlCj4gaGFwcHkgZGF5IGNvZGUgcGF0aC4KPiAKClJldmlld2VkLWJ5OiBKb3VuaSBI
w7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4KCj4gQ2M6IEpvdW5pIEjDtmdhbmRl
ciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxh
IDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cj4gLS0tCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jIHwgMTggKysrKysrKysrLS0tLS0tLS0tCj4gwqAxIGZpbGUgY2hh
bmdlZCwgOSBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCj4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCj4gaW5kZXggYmQxYTFhMjUyNGI1Li4zMTA4NGQ5
NTcxMWQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPiBA
QCAtMjg5MSw2ICsyODkxLDcgQEAgc3RhdGljIGludCBpOTE1X3Bzcl9zaW5rX3N0YXR1c19zaG93
KHN0cnVjdAo+IHNlcV9maWxlICptLCB2b2lkICpkYXRhKQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgInJlc2VydmVkIiwKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCJzaW5rIGludGVybmFsIGVycm9yIiwKPiDCoMKgwqDCoMKgwqDCoMKgfTsKPiArwqDCoMKgwqDC
oMKgwqBjb25zdCBjaGFyICpzdHI7Cj4gwqDCoMKgwqDCoMKgwqDCoGludCByZXQ7Cj4gwqDCoMKg
wqDCoMKgwqDCoHU4IHZhbDsKPiDCoAo+IEBAIC0yOTAzLDE3ICsyOTA0LDE2IEBAIHN0YXRpYyBp
bnQgaTkxNV9wc3Jfc2lua19zdGF0dXNfc2hvdyhzdHJ1Y3QKPiBzZXFfZmlsZSAqbSwgdm9pZCAq
ZGF0YSkKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiAtRU5PREVWOwo+
IMKgCj4gwqDCoMKgwqDCoMKgwqDCoHJldCA9IGRybV9kcF9kcGNkX3JlYWRiKCZpbnRlbF9kcC0+
YXV4LCBEUF9QU1JfU1RBVFVTLCAmdmFsKTsKPiArwqDCoMKgwqDCoMKgwqBpZiAocmV0ICE9IDEp
Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiByZXQgPCAwID8gcmV0IDog
LUVJTzsKPiDCoAo+IC3CoMKgwqDCoMKgwqDCoGlmIChyZXQgPT0gMSkgewo+IC3CoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBjb25zdCBjaGFyICpzdHIgPSAidW5rbm93biI7Cj4gK8KgwqDC
oMKgwqDCoMKgdmFsICY9IERQX1BTUl9TSU5LX1NUQVRFX01BU0s7Cj4gK8KgwqDCoMKgwqDCoMKg
aWYgKHZhbCA8IEFSUkFZX1NJWkUoc2lua19zdGF0dXMpKQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBzdHIgPSBzaW5rX3N0YXR1c1t2YWxdOwo+ICvCoMKgwqDCoMKgwqDCoGVsc2UK
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc3RyID0gInVua25vd24iOwo+IMKgCj4g
LcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHZhbCAmPSBEUF9QU1JfU0lOS19TVEFURV9N
QVNLOwo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAodmFsIDwgQVJSQVlfU0la
RShzaW5rX3N0YXR1cykpCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqBzdHIgPSBzaW5rX3N0YXR1c1t2YWxdOwo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqBzZXFfcHJpbnRmKG0sICJTaW5rIFBTUiBzdGF0dXM6IDB4JXggWyVzXVxuIiwgdmFs
LAo+IHN0cik7Cj4gLcKgwqDCoMKgwqDCoMKgfSBlbHNlIHsKPiAtwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgcmV0dXJuIHJldDsKPiAtwqDCoMKgwqDCoMKgwqB9Cj4gK8KgwqDCoMKgwqDC
oMKgc2VxX3ByaW50ZihtLCAiU2luayBQU1Igc3RhdHVzOiAweCV4IFslc11cbiIsIHZhbCwgc3Ry
KTsKPiDCoAo+IMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gMDsKPiDCoH0KCg==
