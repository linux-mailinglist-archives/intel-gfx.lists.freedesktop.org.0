Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 254B8581CE5
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jul 2022 03:01:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EACFB717B;
	Wed, 27 Jul 2022 01:01:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7D66A4F01
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jul 2022 01:01:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658883675; x=1690419675;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=oaGHCMQJNbgmT+h5HIgoj1y/ml+Ia7XhQPsASlRK0P4=;
 b=SGplGNhmoGRPhC2zMyW2OhIeqx5EVKUJ0xb2u3gxOYCq3l8S2c23DNFp
 FzBbN5BW9xjQudN/Z/wL1SZM7FPVhslz6R9fVTPnLFy6wQVSdqWAi023d
 azGtoumvqDOjBIDXCCSSRtLA3C/KOyFNd7JBxwA1iHY+vl0w+NkzflchE
 RHkhXq+aIf2zVD14FHUcYjW36DuBDVa0AmvBxgB18w7SJzVz6Fqha5eyf
 qm3te+pf8oLwOJXr8qdUOHQ6leEPXC8wdgwE8uDM1wmkggFq5lWObSdjR
 3c4UWYGsXEjm/QIkGTcJbLolel36syPol0xpELsUOebUAl5NUZVONHcvn w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10420"; a="286867817"
X-IronPort-AV: E=Sophos;i="5.93,194,1654585200"; d="scan'208";a="286867817"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2022 18:01:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,194,1654585200"; d="scan'208";a="600216600"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga002.jf.intel.com with ESMTP; 26 Jul 2022 18:01:13 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 26 Jul 2022 18:01:13 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 26 Jul 2022 18:01:12 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 26 Jul 2022 18:01:12 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 26 Jul 2022 18:01:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LNPfl1rsJSNgRCs7vVJIkeCoAtxvGl14u6Vq6bkQfyjHqru4eKG5EEbWHwIoPDbk9rD0JNx3qY2aSTKJuu3Knnbx6dX7PWWEWzgv0YU7qgfQau5Rj0hSV6wilWSQ++ZNbwzAe33KfKttLcD323KatME28Pvmbu7Q+VHuzV9scYtYxTacR41bQl+VPD6X14EqAxzXwUWCax6AW3XwcdjMlm+7e6Kxcset1mjSv63tIwS5il0GKJirFloFf54FgRWnXd+D12NlkclC1VamShGL9UWXbHTUpzEJS6OIyQ6DvYoTaNjCUAqgHKm4bb6k1GDxqTxm5hVF1e/dlH/ThDchzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oaGHCMQJNbgmT+h5HIgoj1y/ml+Ia7XhQPsASlRK0P4=;
 b=asHqO+3sEi0ZYKWF6JAUpuRwQBNDLzDlAScQW2vhstxI+mCChlR/mTVwgJDPnAVYqZTPTH+OSXsfC4SyMsuVGnIeAfJegaMURkNsL2XmGyBpc2usCA1CroO1mFDsxE46/mwlFUWMabQA++qe70GxX9CRyC51fxKDgeGK6qWnoFG0DzOxSaC59k9uKfW7AHvIq4Ctboo90Cd6zCBccKk+pIg5YOc7/rO8Z3IErrb+T/3yRJ929t6dV37MeYBcDWLu/xp4swgEfuWyRnIHmsiBizV2IOuxKXpVTxqNN5raIOb/hSXnCwqFA5L0WpDpaGbWS1Ejl17d+h2K4VvYiTeF+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 MN2PR11MB3598.namprd11.prod.outlook.com (2603:10b6:208:f0::28) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5458.19; Wed, 27 Jul 2022 01:01:09 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::fdd1:18b1:3e9c:b03e]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::fdd1:18b1:3e9c:b03e%4]) with mapi id 15.20.5458.025; Wed, 27 Jul 2022
 01:01:09 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 06/15] mei: pxp: support matching with a gfx discrete card
Thread-Index: AQHYfFedcgSvbR644UuexaliFcdmqa2RsFaA
Date: Wed, 27 Jul 2022 01:01:09 +0000
Message-ID: <7e64604385cbc8560e7c338a3281ae9e2fc781b6.camel@intel.com>
References: <20220609231955.3632596-1-daniele.ceraolospurio@intel.com>
 <20220609231955.3632596-7-daniele.ceraolospurio@intel.com>
In-Reply-To: <20220609231955.3632596-7-daniele.ceraolospurio@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5211a710-d50a-49df-ff3b-08da6f6b7e34
x-ms-traffictypediagnostic: MN2PR11MB3598:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AToCY6quQZD6/NPEtu+4/PqMso83kSXn1v0xd/tFrxGB8luoVdZOIrAsn0Xb5BHZX8cwvpHaJe/6pilY6RXcz3PRShADYzAu/BWZPx7Pv5RWhQayc8LP3++/yYvJQ1wGA1+En97/ZgEIpYHCKjA6czIBn4T1xDkrq5LlUBog3jg+eaIJAhdB1SmcGkoDSHMcbdbplHbTzr99ezAtnK4l6dXkyneVZ7ECw9p5jUbmTrinGiP9ck7UXuDsHS2pDKJ4iwqf1kdmMZNI1hXsJlBPfyYQYZPVT7CUqUlS27+gkJ/AKbGIP/88xEVeXRjE93NOQnY/oJgyLxsLaeBFfxC8qQ/KAYpfmj5yHHZorXXVnyCaG8et8zcmYcKRShXHGKLKWv4l4L4exmKlaUvVK92xNRTDwSqQmNcrNPnoMPk/voIvAWMVae2GP93wvJIDeKIKwadp3LJMArcoKRPzwFPjpfGRb5loA7noU4WcsCqbK3tfStyi3S3PqYFUXfwMoxIf57XafVWk+fq6BnT8KKRkiXFuSZ1FMTm6vnAWU/pc66+lMJZMvc1gs3eY+fiz7ctXNUocrcF/PCHX2Ws1eQc4TKR40VDO57bF3G7aljx07wxVc1L0y6sHWipqnc/Ob3zwxrl0dpWxnCIS79qXW2oAa4i/c1gPcaCRvOzQwSc1j68jGTGLh5S0/RY/VeFDP0xwlaZ3T4x5ZqYPMgfninAW+Kqu9JYJJK7eKGC16i5sXndGzZd0kPQh0YJfGJn3KBJDK/FlL/k5GROVB3cJlUUyCwq80CPNvL6E7EZiu4QX7P8sMVGDiTp2v/6XsFCjIlqk
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(376002)(396003)(366004)(346002)(39860400002)(86362001)(38100700002)(83380400001)(6486002)(5660300002)(478600001)(186003)(110136005)(316002)(2616005)(8936002)(36756003)(107886003)(38070700005)(64756008)(26005)(6512007)(82960400001)(76116006)(91956017)(54906003)(6506007)(2906002)(66946007)(122000001)(71200400001)(41300700001)(8676002)(66476007)(66446008)(66556008)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cTFKaHRibWRVeEVXVFl4bTE0U2Y5Rkt3cWZEWHQ3c2lXMFdpLzFhY0NHQ3hU?=
 =?utf-8?B?NjcyM1RqYVlUYmw4aXI2bWoraEtPNldEUm1Ld2tRVitaZkxVbE5rWDJ0MHkx?=
 =?utf-8?B?N2hsWWh0bk1LdjlFZjliRWhKemExdEtuSTVWbTQyVVNmZkloc2hqc1RJU0F5?=
 =?utf-8?B?SGdjK0RVUUxFRlBHeWdmTWhOMkpPNEI1WngyczJhYld1VHI2UXVlQm93WDZ2?=
 =?utf-8?B?UnNDbXZxRWxnaU1TckxXdWlYb1FQSUhiKzZzTnhKZzRjaG1jbTRUblhkKzVN?=
 =?utf-8?B?ZHJpZDVTd2xsM24xM0pzRFlSYzhPb0VWd2hSSkNHSzZGLzVNSUZudnNNaVR0?=
 =?utf-8?B?MTl2QWloUFhvTlQ4R0t1WlIzMW9PRmVUVllEWnVSbUNLUmFaMElCVTU4ZmFK?=
 =?utf-8?B?SU1aRzd5K3ZVSHdoN3BmOThRUmhaaVhoQVFYLzFEY1l5alFSVll2YnVoL0pF?=
 =?utf-8?B?dlBnbXRqbko5NGZFTDV4eVFwdnZvUEN5VmJuSkJ4MmNqVmRhd1NkYVZpb284?=
 =?utf-8?B?QlZMdGZWSEJCdnUxVnFPYjZLVnBJZDNaQ1luNnA2RXdZa296ZEQ3cmdDcWd4?=
 =?utf-8?B?QUNBZlk3QW1reEdSSm5pZ21UT3RyUTFYNG1LcER6S3VWOWFNTEdWRnNBamZ3?=
 =?utf-8?B?OUR6SUZpOHdZQjkzV002OVZsRk9yem1hdEYwMjBjdUV4bFRNbjIvZXp1ekYw?=
 =?utf-8?B?K1BDQjlHdi9HbzJSSVJ4NGswV3JNS0lWV2ZCVWo1Mm4yai9HRGtoWURaZm51?=
 =?utf-8?B?T2YrRkVES0YvTjNkakZxOVpGMHMvU3YxRW43UWdEWm9VZ3JVMnBDRnhTeFJG?=
 =?utf-8?B?bWIrdklSV0JLQ1dPVGw3c0pjK0wzeVU0YTZvUnpITnI3Q0NXb21BOXowQWFW?=
 =?utf-8?B?eFJLaVlKOWdSRTYrOGxWaHQzSWRZRlkyYTZ3azh4VzV6ZnpPV2dhejcvcVBF?=
 =?utf-8?B?K0lpcENQYWxYbHl3NVVaZUdKSGY3Vmd2YWlXcEJnWlFGd2pJOFBzUmFsU1ZJ?=
 =?utf-8?B?S0JOcmNGNzllSGltV2h0R1huY1pYUXV3ZWM2VDNwdS9mMkNYN1owYjRub2RK?=
 =?utf-8?B?ME1qYkxGZitkMVhxT1lRb1F5bzdhMXBZR2tkQjNFSzFWMFg2cHV5T01WRWUw?=
 =?utf-8?B?VFBEenV2QnU3VjMvNGFuamRsT1BXZHRXTkRBU05peFhYYUhTclBFWk1MQUov?=
 =?utf-8?B?aGdWUWw1MGpsaGRFRnJwUXJ4SW1HczEyQWg0U2E0dWpuOUJkVkxLdmY3OTFL?=
 =?utf-8?B?bWxKdjFqM0ttYVlKVDJIL1dVdlBSYXhPMEF0ZmU2R2pQZnI4bkltL2pLUzVz?=
 =?utf-8?B?YUNGcytZVjNzd0tQVXdTMnlvVGYyaGNOSmdzRVFDOElzYjQzSGFWNC9Pa3U0?=
 =?utf-8?B?Sm8zb21sVUJPZ250NFZFR2I0V1gyR2kzZUlsa0ZVUTNvZVhJeXNZZ2hkZnZ4?=
 =?utf-8?B?M2pSME5hSCtZWUIyMi85L2tpbE5SbkJCMk9WZTBOcFJXSlhoRnFUNmJmY1g1?=
 =?utf-8?B?cmpHYnVTeWNSUUx1bUgxajBudEM5SXV1bDJ3UkZxcnRPNTlGN0cwTGQzOVFi?=
 =?utf-8?B?U1NPckdYT2Nwa0tEYmUzZ1lIRmxVZGs3azBrVkMrOEFIalljK1NTWSt2alJy?=
 =?utf-8?B?Nzd4ZU42aXBLemt0dm9GSmlQcUVyL0FHd0E0UWY2bXg0YzVsNTJCbWRWK1U2?=
 =?utf-8?B?TFBUZjJFVVNKVjFVSXp5OG5qd3RwQTZlTDJJcm5mZEhRSWJDUjgvQ0szaG0r?=
 =?utf-8?B?cXpIU0Y5enVER0dmdnRFWFBNRlN6alpGYTNFRVFOUlo0WDFNM3dMay94OVk2?=
 =?utf-8?B?UTUyWUVmdWoxcWVudW5Gdk85SXprKzFxdTdORkx5ZG5LUFc1Syt6bnJ4RTdM?=
 =?utf-8?B?S0c1QXpRZFBGMElGcGt6RTN2Wkw4TVdwMm5lZ0hxa3UyQzVDcGVjZVEzZmpR?=
 =?utf-8?B?YzBBeHhaL0h2clUreHZSeVBHQzFnSkFxSEhxcHVEVW5EcjNuQ1krK3A1bktZ?=
 =?utf-8?B?QXNyV3dWMmJ5K2k1aFNCM1Q2YjQrb1BpRHJhTXFKSGVaa0JZNG0rdHQ0cnlY?=
 =?utf-8?B?V1FLVXhGdU80eVhmeG5wVGVXZzZyV3NDVnhlKzVBY0hRU1NPaVIwY0pQYWVU?=
 =?utf-8?B?ZE9VdlduYnBvZHJLUUViZFNySEdzTjJsaGJnTS9UU3ZzQkhkZEMyU1g2U1cv?=
 =?utf-8?Q?DJb1LJv0ZnqJqedYhM9E++iDC6xuaw12P5eZ5PeTZ5Ba?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <0AB856AA3A3EA844A80333EF83065702@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5211a710-d50a-49df-ff3b-08da6f6b7e34
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jul 2022 01:01:09.5776 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tXmQRF/nTOCNYiiwV8M0v1/qffDr9MleOae15Sh8jeNMzK63Bg2ow3RSaqavb1x2x56eScwD22TMrGqZAoYFkqqzYG5WtCVGcW5cJdafulyp3LDscWCxCPsARC1CNT3V
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3598
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 06/15] mei: pxp: support matching with a gfx
 discrete card
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
Cc: "Winkler, Tomas" <tomas.winkler@intel.com>, "Lubart,
 Vitaly" <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQpPbiBUaHUsIDIwMjItMDYtMDkgYXQgMTY6MTkgLTA3MDAsIENlcmFvbG8gU3B1cmlvLCBEYW5p
ZWxlIHdyb3RlOg0KPiBGcm9tOiBUb21hcyBXaW5rbGVyIDx0b21hcy53aW5rbGVyQGludGVsLmNv
bT4NCj4gDQo+IFN1cHBvcnQgbWF0Y2hpbmcgd2l0aCBhIGRpc2NyZXRlIGdyYXBoaWNzIGNhcmQu
DQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBUb21hcyBXaW5rbGVyIDx0b21hcy53aW5rbGVyQGludGVs
LmNvbT4NCj4gQ2M6IFZpdGFseSBMdWJhcnQgPHZpdGFseS5sdWJhcnRAaW50ZWwuY29tPg0KPiAt
LS0NCj4gIGRyaXZlcnMvbWlzYy9tZWkvcHhwL21laV9weHAuYyB8IDEzICsrKysrKysrKystLS0N
Cj4gIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQ0KPiAN
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWlzYy9tZWkvcHhwL21laV9weHAuYyBiL2RyaXZlcnMv
bWlzYy9tZWkvcHhwL21laV9weHAuYw0KPiBpbmRleCA5NGQzZWYzY2M3M2EuLjY0NTg2MmY0YmIz
OCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9taXNjL21laS9weHAvbWVpX3B4cC5jDQo+ICsrKyBi
L2RyaXZlcnMvbWlzYy9tZWkvcHhwL21laV9weHAuYw0KPiBAQCAtMTYyLDEzICsxNjIsMjAgQEAg
c3RhdGljIGludCBtZWlfcHhwX2NvbXBvbmVudF9tYXRjaChzdHJ1Y3QgZGV2aWNlICpkZXYsIGlu
dCBzdWJjb21wb25lbnQsDQo+ICAJICAgIHN1YmNvbXBvbmVudCAhPSBJOTE1X0NPTVBPTkVOVF9Q
WFApDQo+ICAJCXJldHVybiAwOw0KPiAgDQo+IC0JYmFzZSA9IGJhc2UtPnBhcmVudDsNCj4gLQlp
ZiAoIWJhc2UpDQo+ICsJaWYgKCFkZXYpDQo+ICAJCXJldHVybiAwOw0KPiANClRoaXMgY2hlY2sg
Zm9yICFkZXYgc2VlbXMgdG8gYmUgYXBwZWFyaW5nIGEgZmV3IGxpbmVzIGFmdGVyIHRoaXMgb3Ro
ZXIgY2hlY2sgYmVsb3csIHdoaWNoIGxvb2tzIGxpa2UgYSBidWcgY296IGl0IG1lYW5zDQpkZXYg
Y2FuIGJlIG51bGwgYW5kIHdlIGFyZSBjaGVja2luZyBmb3IgdmFsaWRpdHkgYWZ0ZXIgZGVyZWZl
cmVuY2luZyBpdDoNCglpZiAoIWRldi0+ZHJpdmVyIHx8IHN0cmNtcChkZXYtPmRyaXZlci0+bmFt
ZSwgImk5MTUiKSB8fA0KCSAgICBzdWJjb21wb25lbnQgIT0gSTkxNV9DT01QT05FTlRfUFhQKQ0K
CQlyZXR1cm4gMDsNCg0KSW0gYXNzdW1pbmcgdGhpcyBpcyBhbiB1bmludGVudGlvbmFsIG92ZXJz
aWdodCBzbyBjb25kaXRpb25hbCBSQiB0byBtb3ZlIHRoaW5ncyBvbiAocGxlYXNlIGZpeCB3aGVu
IG1lcmdpbmcpOg0KDQpSZXZpZXdlZC1ieTogQWxhbiBQcmV2aW4gPGFsYW4ucHJldmluLnRlcmVz
LmFsZXhpc0BpbnRlbC5jb20+DQoNCj4gIA0KPiAgCWJhc2UgPSBiYXNlLT5wYXJlbnQ7DQo+IC0J
ZGV2ID0gZGV2LT5wYXJlbnQ7DQo+ICsJaWYgKCFiYXNlKSAvKiBtZWkgZGV2aWNlICovDQo+ICsJ
CXJldHVybiAwOw0KPiAgDQo+ICsJYmFzZSA9IGJhc2UtPnBhcmVudDsgLyogcGNpIGRldmljZSAq
Lw0KPiArCS8qIGZvciBkZ2Z4ICovDQo+ICsJaWYgKGJhc2UgJiYgZGV2ID09IGJhc2UpDQo+ICsJ
CXJldHVybiAxOw0KPiArDQo+ICsJLyogZm9yIHBjaCAqLw0KPiArCWRldiA9IGRldi0+cGFyZW50
Ow0KPiAgCXJldHVybiAoYmFzZSAmJiBkZXYgJiYgZGV2ID09IGJhc2UpOw0KPiAgfQ0KPiAgDQo+
IC0tIA0KPiAyLjI1LjENCj4gDQoNCg==
