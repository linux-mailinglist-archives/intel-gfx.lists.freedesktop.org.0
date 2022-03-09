Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 59B264D2D43
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Mar 2022 11:41:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81E8210E679;
	Wed,  9 Mar 2022 10:41:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EF9110E677
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Mar 2022 10:41:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646822503; x=1678358503;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=TGGwyz2Eh3qyi+Ha5Xsd1uO8lLZNvNv5b53vxqCPhZo=;
 b=Xyu5qq3UeopPGQVKY753F9pPks7TtFsFRicsdHi6gvFPxcpjcHa1Nyua
 k+CK3YUXqinICJ/0lcJudzbqWAetQ/1Pl9Uj1+pkTfbgGb0n5eIHy0Fer
 5YeqLpzTEVOqah2EQpIn3BHH3n0ow+QWbAfgmfAKKoxpMCICx567Lj8S2
 luUwPUryeO0xv2TQVns2a9xo5AwWwmedqiNekgvZfwzDlLULheyTbxZ1k
 YlzPJD8nlH+XFosS8Ho8oksBaRp9iePtpQkfEMUqcQA/dbg3Rv65goH4N
 A6LWuEAsnRTfwFDqtw2nU8dmI2v0+/aQFi/VYmqA7MeTZBBiR7qxe1wHG w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10280"; a="318171535"
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="318171535"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 02:41:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="688256115"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga001.fm.intel.com with ESMTP; 09 Mar 2022 02:41:42 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 9 Mar 2022 02:41:42 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Wed, 9 Mar 2022 02:41:42 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Wed, 9 Mar 2022 02:41:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fKsyoRqBq56WPNyiKyZNb7cTRArhLWG4uPhdMaDZFFu6QiEpL1DMcVRYnrYi7eHHcaeC58nUxa2wnQ+/HCw4IkxXppL5SUyYuqskqeXvGcpXGSGRyPfGShGFdZtYPJfMpGB7xcnydW103b5f3bl64WNYPGKAuulmX8CvQmvpgqcS7ilT5XP1UcjuOz2L7vzkfOhPosF4hyUB4heNBBB3/NwEUYBLdcjgwidIfLG8GdT9mp6ul9JQNdJbqu78fFij/GSoC5iqrNh/ZxBUJoQeip3T0TUgaGIIW3cVcTkcfmD0k4QvAX/QBAQJD8He1yJmNXbR42LA11yVMm3Y1gFOuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TGGwyz2Eh3qyi+Ha5Xsd1uO8lLZNvNv5b53vxqCPhZo=;
 b=VNJ4+JWcSNzkiJb5thMcFgpnCBsSXgLw23bbtG6JvQjcYY7wyGAsO/f/W6eibO/99wzWLnSAM1O6L9CvvfHvgm5U028UIqkWJXDJJk7/yTO0Pk3IwaKDNvCqBGMXmbhxoJqPtoFISzA8V2K3BpZRrYVWI6OiB052Cz4ETSqPNDAti7ZJbKZ0SSAFsefWCd5cs3QCzgmbSEtIWPICBQ4IaLSpRcD/u74//F/GlDpnJGfXyCfJTx0eZqlOmNodth9Jv7NJ8VU1BZHDosgkMypT/L4aIUrMaKjooMRuzmuXoFbVSvd/uq4yaK2ZyY5azjTBRX1aGXqtVzeNhbkjea2puA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4962.namprd11.prod.outlook.com (2603:10b6:303:99::23)
 by CY4PR1101MB2133.namprd11.prod.outlook.com (2603:10b6:910:17::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.16; Wed, 9 Mar
 2022 10:41:28 +0000
Received: from CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::ddc3:c37d:9541:9b7c]) by CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::ddc3:c37d:9541:9b7c%8]) with mapi id 15.20.5038.029; Wed, 9 Mar 2022
 10:41:28 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/6] drm/i915: Rework SAGV block time probing
Thread-Index: AQHYMxRlBI8XoAWvHEe+qY5IuUN6dqy23ksA
Date: Wed, 9 Mar 2022 10:41:28 +0000
Message-ID: <72b03790e2b0f182bc5a3cb984d2b854e212858c.camel@intel.com>
References: <20220308173230.4182-1-ville.syrjala@linux.intel.com>
 <20220308173230.4182-3-ville.syrjala@linux.intel.com>
In-Reply-To: <20220308173230.4182-3-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 92471fcf-6108-411b-b32e-08da01b95dda
x-ms-traffictypediagnostic: CY4PR1101MB2133:EE_
x-microsoft-antispam-prvs: <CY4PR1101MB2133F4B76767F362A9E60BADF60A9@CY4PR1101MB2133.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cVmldODOsD+ZuCHmtlF4F0P0mahFGb7lte7IHkmflIFpiE/sDjCh8s4SP5lFtHNq44w7fzxV7moMKi7F8P8gXXXBfkLKek3qbDt1gK728lOwHJZgPQ/JBRU+rSXcz5cEVzb7/5ZyThyJSSsE/FQonMjmchPpTc3LhZr721nPZ1KOLDuAlMzZjp+THJ1V+Hs3evSwM7IWSm+8HN98UIJlW63rWdJkWyrKnyvwnx4fusst5hHZNnpRo2012OcKTTf+DN6PITJ19Ep0ODJBPFTgy0TiE8zpLG65ECzthff1IuFmA2En+a4FqnFJuF7uFLpEbnVXV+miJECeQBythNvnR+VbOrQiJfj2Ytb82Dt+qiObncVhnafr/JjrXyUhTectN3L0EgEQGP+QotNRwYnCbx4aJ4MoKJxjMyLvq0yPqDKvz8I0WsXdaT/6yiriepRT2uWPCNox1kylkcIpEVCsFevpyqSygpF6k20CujS8WZ2mfmPdRjOCZwq4HdjjeUhv/LLH81Aiwn2XvE0g1HtIbi09On+nHduiL2EqxrVP3/fJtvenX1jaB+tqeX47gZcQzvQd76mqWCiir6TfWqn2jot/R46mh0pQWEPSeLA3qFOhqdfMIxtc2D8hCQl6zUctS5u0aXGu2BCRcUCjlz8mFLxT+5XfRrLULbPCzlpTj/xyU/VhxTsnWMUH8n4bF4WnTIz3xHw0A9itSYfN00Ti5g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4962.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(5660300002)(122000001)(83380400001)(38100700002)(8936002)(82960400001)(36756003)(186003)(26005)(71200400001)(2906002)(66476007)(2616005)(66556008)(508600001)(8676002)(86362001)(316002)(91956017)(64756008)(66946007)(76116006)(38070700005)(110136005)(6486002)(6512007)(6506007)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OFVFdnZ2M1pXSTZyM01KVHg3TzR2eENUckQ3Z3JJSDljWS9ZYmFBekFJY1lS?=
 =?utf-8?B?aWEyN0RCY3g1TWxqOFZCV1RrSlo3MjBrZmcrcXZrTTRITXU1QmVIZXlQU0c5?=
 =?utf-8?B?M01MU1h2VEpmLzdJdU9IYU9ta21VS0ErMURqMVBoNlAya1p0eERISFErekZh?=
 =?utf-8?B?dEUyenBVNkFxSkVsQ1FyOGJkdi9zdlhKZVBLS1czVGdKdE9iNVNaTDQ3bERX?=
 =?utf-8?B?S1Q4MUNuNmU0WmZBc1FZenVpR1pXRXFvQldFcGExak8yMWpRRkl6Zmx4N3hO?=
 =?utf-8?B?NGNNeWVGWU5yckJSZXk5SFk3V3ZBNW56TnlRY1Bablh0WkhLeCtyM2dqREVF?=
 =?utf-8?B?TVlsTEd5TVcyZjBXdU00MmVTdjZvd29XQ1cxSDZDRXBLRlN2VU9GRC9qVUty?=
 =?utf-8?B?MU05TStoRUFQOUVnRGdXSWJuSC9EaGVhUytiTTZxdjRjOTRpOUw0TklBQUV5?=
 =?utf-8?B?UXVJOC9WUys1Z05iczE2WHJreVdyQkk4WGdyMms5WHNxYmg0ZnMvQjlSWGRo?=
 =?utf-8?B?VmpzaW1wQS9sNWdDVGo3MHZITWVhQndNc1RUeCt3S3I1ZzNrUUR1WURjanlh?=
 =?utf-8?B?MWhjRXZRUUN1bGljVlF1M21pWk4vZkdlYnc2VGZTd1NaWXdQV3Zhb29IQ1ZD?=
 =?utf-8?B?K3lLUkFHTzNBUW5kTG91N0xxemQrYytEa3pGMFh2SEltRitVcFFEenRXQS9M?=
 =?utf-8?B?Z0lmMUJ2WUlFUE91c0E3Zng1WUVncFZRRWVPdWJzWlpoQ3kvL2pMK2UvQ29q?=
 =?utf-8?B?aGpHYzcvMCtUTVAwTnV0R2RkNE5wSXNlRnVST3JnbkJnZk4wdVJmdXNMN0tS?=
 =?utf-8?B?amZvWXVQQ2s2bHpTcVh6ektTVllGaklaaU1acStiT1NTbnVsYm80RS9KMG1G?=
 =?utf-8?B?YVlObEJUUFh2Ry92Qm5nTkU3VEJhZXNyRHNRWm5rUGJVeFc1dVNudTM5Q0Vx?=
 =?utf-8?B?YytRdlVzV0djc1V2ZGpVTUpDeVJQWlRocUZJRjZXRnJJRHZuOEpMYlY4NmJP?=
 =?utf-8?B?eHZGbjFlb1l2RUxpdUZ2QStQbm4weFBjY1o1cnZ3T0E0bmE5MEUxSUI4VTFK?=
 =?utf-8?B?elZnRk9pRjRQM0tRY3o3SXlSOWFwWVQ5R2lXNWhVaHlSaEZZYWJvWFhadHB5?=
 =?utf-8?B?RVJENHRXMkF4L0JnL2dPSE0zTHZhWFVmajlqWkIwRTZRakxBRjZNVS9HQk1Y?=
 =?utf-8?B?WlB4Nmg3dlNJNklqZk9nSTAyK0VVNHdpR2lzbzJNOC8vUEFPQ1hOZVFtUE55?=
 =?utf-8?B?eEtPWklnRkNRdmhPTGM4SHNZWWVRcUVPb2NsOXB0NlV3ZHJKRkNQREVsQVg0?=
 =?utf-8?B?dmJWWXF1dWRSLytCMlJZNE11YklYNURwbFRqTjRMWUtZVWt2RzVKeEFkUFZI?=
 =?utf-8?B?Q2YrUm40V1VIeGZ2ZENlSVJ0b2RvZHA0ckp4M3FRbXcvK2VaeWdqcXJvZVVL?=
 =?utf-8?B?amhVVWJkSTZoL2xDRmhqdnhrRFpEa3QrMnh5d1RvMkxlMVM3Ynp3R1JXdW12?=
 =?utf-8?B?bk9laU5DZlJmVmcwVHBvcytWQTUwSzlSOEN6Q21TZWd6VEp0Zkhid1ZzZjBF?=
 =?utf-8?B?RGdyMVdRMXFrTEpjWkdtN0tjcG04NWZWQU9BeWwvVUtIZHhtSEhmVmxveVZI?=
 =?utf-8?B?NUlsSmJXd1dDcThKdUlFRFE4RjR5dzA3Mzd6WFl3QWZzUkZHSDZRV2o4aTF3?=
 =?utf-8?B?SThNanJhRXROWE9ENjFDTjZGeFVOeHZIUUVTd2RzZTRKTUg0MGVZNGlpanYr?=
 =?utf-8?B?alZoRHlJZDBwRXN2Q2w4aEwxbVZYN3AwUmRLQWQ2UVZQTDN4U3JtTzA5SnFK?=
 =?utf-8?B?TkxzNXUyaTdRM1JuWU1yczBLK2h2SWxiSDZ2NVlQYzg1bUdNYk54TTY4VE9B?=
 =?utf-8?B?UU5FQzlpT0oyVHNKY09YTzh2RnFoZG9vSjJmcG5uU2I4aElUbnlidHJ3TVVE?=
 =?utf-8?B?OHM0ZktSN29PQ29wZHRKcXZqemN5MUtkQVVxbmgvaVFSNDE1YzJZaSt4ZjB1?=
 =?utf-8?B?Umx6NzE5NGZHUy9MNFUzaHZTM2IzYjZxcjl5N0ErNWhSOGljWG9SK3NiRWVz?=
 =?utf-8?B?L0JYcVB6dThVREFoQ2Y3ZTVsL0NjcCthMFFqaExId01kZlJBN3g5VVd5MUtn?=
 =?utf-8?B?Z29MaU5tWmFwNlRpRHZDTjRRdk04TUY5bExseU5KVGNja2VpNVlUc1N6Y0J1?=
 =?utf-8?B?VXB2MEUvbzIzbjUzSHRlYVNiOFF0NUxVcCtpQ0Y0MUxkME1TODhraGdHVHZC?=
 =?utf-8?Q?Ik6xos5fJ/YubNbKQ9x6GdB7jY0k2x9tuXEISdSbUM=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <DD1D355E12078643AD9AF6CD0BBB9098@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4962.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 92471fcf-6108-411b-b32e-08da01b95dda
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Mar 2022 10:41:28.0912 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7Q3UyMGtDMnGJmR25AJ8095SuDZ09k5xP0sXTwYrwuJamzBcXxkocnfM6SzLASx8xO+Ub4VVVsiA5a+LpTDajasiZkTcg5ANBcqWVGm8ECE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1101MB2133
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915: Rework SAGV block time probing
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

T24gVHVlLCAyMDIyLTAzLTA4IGF0IDE5OjMyICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gSSdkIGxpa2UgdG8gc2VlIHRoZSBTQUdWIGJsb2NrIHRpbWUgd2UgZ290IGZyb20gdGhl
IG1haWxib3gNCj4gaW4gdGhlIGxvZ3MgcmVnYXJkbGVzcyBvZiB3aGV0aGVyIG90aGVyIGZhY3Rv
cnMgcHJldmVudCB0aGUNCj4gdXNlIG9mIFNBR1YuDQo+IA0KPiBTbyBsZXQncyBhZGp1c3QgdGhl
IGNvZGUgdG8gYWx3YXlzIHF1ZXJ5IHRoZSBTQUdWIGJsb2NrIHRpbWUsDQo+IGxvZyBpdCwgYW5k
IHRoZW4gcmVzZXQgaXQgaWYgU0FHViBpcyBub3QgYWN0dWFsbHkgc3VwcG9ydGVkLg0KPiANCj4g
U2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4NCg0KSGkgVmlsbGUsDQoNCkkgd29uZGVyIGlmIGl0IGlzIGJldHRlciB0byBjb21wcmVo
ZW5kIGlmIHdlIGNsZWFuIGFzc2lnbmluZyAgLTEgdG8gYSB1MzIgdmFyaWFibGUgZmlyc3QgYmVm
b3JlDQp0aGlzPyBJIHNlZSB0aGF0IHlvdSBhcmUgZG9pbmcgdGhhdCBhbnl3YXkgaW4gdGhlIG5l
eHQgcGF0Y2ggaW4gdGhpcyBzZXJpZXMuIFdhcyB0aGVyZSBhbnkNCnBhcnRpY3VsYXIgcmVhc29u
Pw0KDQpCUg0KVmlub2QNCg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Bt
LmMgfCAzOCArKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0NCj4gIDEgZmlsZSBjaGFu
Z2VkLCAyMiBpbnNlcnRpb25zKCspLCAxNiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfcG0uYw0KPiBpbmRleCA4ZWUzMWM5NTkwYTcuLjIxYzM3MTE1YzM2ZSAxMDA2NDQNCj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYw0KPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9wbS5jDQo+IEBAIC0zNjcwLDggKzM2NzAsOCBAQCBpbnRlbF9oYXNf
c2FndihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpDQo+ICAJCWRldl9wcml2LT5z
YWd2X3N0YXR1cyAhPSBJOTE1X1NBR1ZfTk9UX0NPTlRST0xMRUQ7DQo+ICB9DQo+ICANCj4gLXN0
YXRpYyB2b2lkDQo+IC1za2xfc2V0dXBfc2Fndl9ibG9ja190aW1lKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdikNCj4gK3N0YXRpYyB1MzINCj4gK2ludGVsX3NhZ3ZfYmxvY2tfdGlt
ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpDQo+ICB7DQo+ICAJaWYgKERJU1BM
QVlfVkVSKGRldl9wcml2KSA+PSAxMikgew0KPiAgCQl1MzIgdmFsID0gMDsNCj4gQEAgLTM2ODAs
MjQgKzM2ODAsMzEgQEAgc2tsX3NldHVwX3NhZ3ZfYmxvY2tfdGltZShzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYpDQo+ICAJCXJldCA9IHNuYl9wY29kZV9yZWFkKGRldl9wcml2LA0K
PiAgCQkJCSAgICAgR0VOMTJfUENPREVfUkVBRF9TQUdWX0JMT0NLX1RJTUVfVVMsDQo+ICAJCQkJ
ICAgICAmdmFsLCBOVUxMKTsNCj4gLQkJaWYgKCFyZXQpIHsNCj4gLQkJCWRldl9wcml2LT5zYWd2
X2Jsb2NrX3RpbWVfdXMgPSB2YWw7DQo+IC0JCQlyZXR1cm47DQo+ICsJCWlmIChyZXQpIHsNCj4g
KwkJCWRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLCAiQ291bGRuJ3QgcmVhZCBTQUdWIGJsb2Nr
IHRpbWUhXG4iKTsNCj4gKwkJCXJldHVybiAtMTsNCj4gIAkJfQ0KPiAgDQo+IC0JCWRybV9kYmco
JmRldl9wcml2LT5kcm0sICJDb3VsZG4ndCByZWFkIFNBR1YgYmxvY2sgdGltZSFcbiIpOw0KPiAr
CQlyZXR1cm4gdmFsOw0KPiAgCX0gZWxzZSBpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID09IDEx
KSB7DQo+IC0JCWRldl9wcml2LT5zYWd2X2Jsb2NrX3RpbWVfdXMgPSAxMDsNCj4gLQkJcmV0dXJu
Ow0KPiAtCX0gZWxzZSBpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID09IDkpIHsNCj4gLQkJZGV2
X3ByaXYtPnNhZ3ZfYmxvY2tfdGltZV91cyA9IDMwOw0KPiAtCQlyZXR1cm47DQo+ICsJCXJldHVy
biAxMDsNCj4gKwl9IGVsc2UgaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA9PSA5ICYmICFJU19M
UChkZXZfcHJpdikpIHsNCj4gKwkJcmV0dXJuIDMwOw0KPiAgCX0gZWxzZSB7DQo+IC0JCU1JU1NJ
TkdfQ0FTRShESVNQTEFZX1ZFUihkZXZfcHJpdikpOw0KPiArCQkvKiBEZWZhdWx0IHRvIGFuIHVu
dXNhYmxlIGJsb2NrIHRpbWUgKi8NCj4gKwkJcmV0dXJuIC0xOw0KPiAgCX0NCj4gK30NCj4gIA0K
PiAtCS8qIERlZmF1bHQgdG8gYW4gdW51c2FibGUgYmxvY2sgdGltZSAqLw0KPiAtCWRldl9wcml2
LT5zYWd2X2Jsb2NrX3RpbWVfdXMgPSAtMTsNCj4gK3N0YXRpYyB2b2lkIGludGVsX3NhZ3ZfaW5p
dChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkNCj4gK3sNCj4gKwlpOTE1LT5zYWd2X2Js
b2NrX3RpbWVfdXMgPSBpbnRlbF9zYWd2X2Jsb2NrX3RpbWUoaTkxNSk7DQo+ICsNCj4gKwlkcm1f
ZGJnX2ttcygmaTkxNS0+ZHJtLCAiU0FHViBzdXBwb3J0ZWQ6ICVzLCBvcmlnaW5hbCBTQUdWIGJs
b2NrIHRpbWU6ICV1IHVzXG4iLA0KPiArCQkgICAgc3RyX3llc19ubyhpbnRlbF9oYXNfc2Fndihp
OTE1KSksIGk5MTUtPnNhZ3ZfYmxvY2tfdGltZV91cyk7DQo+ICsNCj4gKwlpZiAoIWludGVsX2hh
c19zYWd2KGk5MTUpKQ0KPiArCQlpOTE1LT5zYWd2X2Jsb2NrX3RpbWVfdXMgPSAtMTsNCj4gIH0N
Cj4gIA0KPiAgLyoNCj4gQEAgLTgxNzMsOCArODE4MCw3IEBAIHZvaWQgaW50ZWxfaW5pdF9wbShz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpDQo+ICAJZWxzZSBpZiAoR1JBUEhJQ1Nf
VkVSKGRldl9wcml2KSA9PSA1KQ0KPiAgCQlpbGtfZ2V0X21lbV9mcmVxKGRldl9wcml2KTsNCj4g
IA0KPiAtCWlmIChpbnRlbF9oYXNfc2FndihkZXZfcHJpdikpDQo+IC0JCXNrbF9zZXR1cF9zYWd2
X2Jsb2NrX3RpbWUoZGV2X3ByaXYpOw0KPiArCWludGVsX3NhZ3ZfaW5pdChkZXZfcHJpdik7DQo+
ICANCj4gIAkvKiBGb3IgRklGTyB3YXRlcm1hcmsgdXBkYXRlcyAqLw0KPiAgCWlmIChESVNQTEFZ
X1ZFUihkZXZfcHJpdikgPj0gOSkgew0K
