Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E2FC06339B8
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 11:19:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAD5810E039;
	Tue, 22 Nov 2022 10:19:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 266D810E039
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Nov 2022 10:19:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669112365; x=1700648365;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=pP8QVbJvmWyOwhI9oHlWwD2DESrpiUnulu4cv4+/hwk=;
 b=AeCd+hX4VWWR/VkwcQbHIbD+LILlUHpmhadYBTIxrmShfRaRjfPhs2qM
 TWJOMppbBDR7518g+iEfdFjOxSuaRvhdv6vyrBDo0YdseiNzlYxK2QIm0
 kJvVx9Ulw95yEcVSUg+sX9hkLZRZLQhlPNV4t7Dd8oDUCeMeJ0p3+Xk9w
 zTpEm/+phEtLeFBdZ6ZCub7GmlazyZWrQ+2nCB0lwb0qywYgt2ntQWqn8
 4fjEpZSwhkJi2SFGxtQlKPESZviNDP6acUUMqIN06paxbgRYYQNc4Sxi4
 06xju7xzIPeyQ6a3z1ReWXlrkFyHaV8EQvtfVCWL4hdrkT8Y6FWt4h8p/ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="312484543"
X-IronPort-AV: E=Sophos;i="5.96,183,1665471600"; d="scan'208";a="312484543"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 02:19:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="592095831"
X-IronPort-AV: E=Sophos;i="5.96,183,1665471600"; d="scan'208";a="592095831"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP; 22 Nov 2022 02:19:24 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 22 Nov 2022 02:19:23 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 22 Nov 2022 02:19:23 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 22 Nov 2022 02:19:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZdgCuf6bVqCHspxLRFO1amV6ZvwaKJes0F6Fi3VpdITHhIZBIFblPtnIVNALVRCswwZGtW7uoTvKJZ/phf3QlZMLZcIXgGCOpY+vhfh4UknalDj7umEO0FqTkK/zTsfTfphvDxOarTLOwSJyCof0brlJyp0QvW5vEPy9BZj6Y3NTncAIMqJTCG3JWZ52E07++kLtwyaOcaDoqMUzsJ2m1qNTNCG10I5usBFA6eSbEfZ+i0Ysny5Z7YUy4OHVtlK+72jrR8KobHMkBAaNdN38cie3jDedg2JEDesQrCZcXc5nHg+//hTLSL3Ok7JpEaJXRfQIyHfCbPXytzzN4WV8CA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pP8QVbJvmWyOwhI9oHlWwD2DESrpiUnulu4cv4+/hwk=;
 b=fd/BNaCVrEs1wjc4Wfb88MwejWWd7QuhazW1P7AxDBiC2Hd4UJ1T3Nnk2gnlCcP2FUEN3feEjc1BUKsGlKmkVMZ1YzdMhZ7QpXGE3/UbJNM0IHhmEFNB2CSKaxgrYqg7dPnETvAXBf+2Vw2bXX6rpzPAthDyxVXPdr7kXzTGLTMWANn/G7Z+tgdAIurzvp5jRF2OA7hxvNKoEVvnqSp6oR5UEtYiUxei5cnkKIh+i6t/m0/17pphiwaZND/5+Lf3BFj51dlTtfPmWFZDawGQdm5a8V3cPx6OO+cnM7aiEp7aPWu1iF4T7/Kr4l72ZIcgGYlMhccwJ5hYE8MqCIa4cQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3207.namprd11.prod.outlook.com (2603:10b6:a03:7c::14)
 by DS7PR11MB7692.namprd11.prod.outlook.com (2603:10b6:8:ef::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.15; Tue, 22 Nov
 2022 10:19:17 +0000
Received: from BYAPR11MB3207.namprd11.prod.outlook.com
 ([fe80::90bd:c90a:5253:a3f]) by BYAPR11MB3207.namprd11.prod.outlook.com
 ([fe80::90bd:c90a:5253:a3f%5]) with mapi id 15.20.5813.024; Tue, 22 Nov 2022
 10:19:16 +0000
From: "Coelho, Luciano" <luciano.coelho@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 2/2] drm/i915/mtl: Limit scaler input to
 4k in plane scaling
Thread-Index: AQHY/lvg9xoIcOlCnkKjUycoxydmeQ==
Date: Tue, 22 Nov 2022 10:19:16 +0000
Message-ID: <7a263c341d73309e85ffa62a69f10b94bca908c1.camel@intel.com>
References: <20221121115043.763658-1-luciano.coelho@intel.com>
 <20221121115043.763658-2-luciano.coelho@intel.com>
In-Reply-To: <20221121115043.763658-2-luciano.coelho@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.1-1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3207:EE_|DS7PR11MB7692:EE_
x-ms-office365-filtering-correlation-id: 3189d37e-1da4-442e-ee2f-08dacc7302d8
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: h5F1NvcSl5PUwoaF9x0tQ8FlqFo6sZG2zHHqSnC2BE5k1yihG0yNZffNGkhPJhR/maRAtAT9DJQx24oyQnsvXycRKl8Z4kgCtPdaMxznbj7/Boq2pFEQLG1wWgeX1gLJ/Wt+GgYyYbuavCCcgQibiHMehoVEG/nuViYojTUcPHzoeebpl6KdIevXFynry+WQRTeiWPI2Onq+hL9ctPQET7LxUuBfwWcCnVzCW1BMWwOaem72Ckx+qADIGbc2ei2jMZUTzpkZ8mDtIRD1d5iHb16kJAy/UxWQ/IlAc7XTZv8Y94Sd64dkQIq+Ntt4O9z4TGCoeCna9DDY5yjedhY037e7fnGmOFXwloaSeNoOqfs1iph9MvC9bk6dywtgC/uecRMzVrrC3Z1WZX0Dgxd5Jh1YRTYHX5j28EYqP0dg35QVmORe3oNKDBN8eiU/T4XPeUQe3dlZssvNPz4ukBSDfaPfcsFSONFfBS7pMzgqTXzlXJhwhmLlO7D1N0rQJxwn3Dsigphvwk3cRSzONc6olO8zDvEdk6pc6GTxsJfkvChbD5I9EIiL9yMZ4psZifQh23WRzaSoqSaN9U5Mgz09Ai+zxunGx5Oc6Ta1D5Ss5VxLCZdrBX1Mg/zdJOmj8cat3ddHbtAabuZtK9A2pGVOXGu6BJhWg4ZVha2j/o/WmnuW49XeUirkWv21f/BT7/gm0JYhjzQTCIMluh+A/y2qPA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3207.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(136003)(376002)(39860400002)(346002)(366004)(451199015)(82960400001)(38100700002)(122000001)(4001150100001)(2906002)(41300700001)(66556008)(66476007)(66946007)(91956017)(4326008)(8676002)(316002)(64756008)(6916009)(76116006)(4744005)(66446008)(6486002)(36756003)(478600001)(6512007)(6506007)(86362001)(38070700005)(5660300002)(8936002)(107886003)(186003)(71200400001)(26005)(2616005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SWliRzlreWpXUU5CbHg2K0U5Nm5IdUVwUW1iTk1nUzQzNVUzLy8vNUlBZUJm?=
 =?utf-8?B?NFhVcnM3YWpvc2ZTajJZNHFneHBEL2t4amloUDViM3dXZXVqQ2VjT1JKbk1X?=
 =?utf-8?B?WDFCbnBGek9qNERtQ0tIV2U4MHhzbEo0VnAvbmVieVZld0dORDY4NmpaVmxP?=
 =?utf-8?B?L1NXRGt2RkI5NS96aUJJN2M3UlFPbnF1VlM3ZXdod1NaelZKUnV4eFA3aWQ1?=
 =?utf-8?B?czhERkNPQjVSM3hNelYydmV3bVZPT3VlYU96c0doODJXYTRjWUNoY2loVVA2?=
 =?utf-8?B?eHNBRjNMQytra254ZVJHYVU4aERmVk9vekJ1eFVBdklPSnhBL1ZrYUduSC9R?=
 =?utf-8?B?STVXNXNzdGxSZkFoSTNKZlBxOFk1Ly9tMUw4bWIzcUQ2dWJVK3JCN3U2N2NK?=
 =?utf-8?B?M1hQUUdUdmliREU0UmdGMkRKTmlhRWNkcHd1OWRJczBXeDFnSGdLMnJLT014?=
 =?utf-8?B?dWVnWGt2WjFaL1cyaG9IY1BGNDNzKzlyTTR5a1BpRDUzbGdJZ1g2T0dMVFBu?=
 =?utf-8?B?UmVZb3RQUk1TcFd0VE1xRXBHR3hjNGRxWTM0ZjBwMFcrODAwVHRodlpmd1p0?=
 =?utf-8?B?Tk1vVWcwQmd6OE4rZ1kxWVVSN0w0NFVyT0VWN0kvT3RMRjg2S1RObW93MzB6?=
 =?utf-8?B?NnRUWTUwbnEwYWhGNnBTSy9MaHlmelFDdVF5ZEJKRzVleFBPUjFBdlloai9t?=
 =?utf-8?B?dEwwRCtWQTVCNHpLVlNzR0pMVEtqTXRyckJ1SjdmRTdhN05kaTBScks4MUJJ?=
 =?utf-8?B?T3NpcHMwMzZHMVgrNWJRVVJybEY2ajNBbFdhT1VJVGk5dnZBQVIyODRuMnRG?=
 =?utf-8?B?ZnFvNGY2azZhUmhKQ1JLNUgrZ0RxNnY0UzhCUG9KYzVOeTVQc1owL1BHZzJH?=
 =?utf-8?B?a2pvOHc3bDVmd3d3NlJ3d0tyaW05MVBXaldSc2JqSHBkWENxTGxhN0ZtZ2lK?=
 =?utf-8?B?dmNEdzBHZ2t4bU85SWFEbXFxSE9kamRsUDgza2E1ejZoNUdUODRjSFFxS2M5?=
 =?utf-8?B?OEM0L2lobytLVmVXNXFpVTV1RCtvSkFETThxQ09oY0VaYmpzMGw5Mi8zeFZj?=
 =?utf-8?B?WFlpc2YyNVNJZWgyOEpKVCtaR3hrbmc3RmxZdll3cGNHbDNFU3JnTzV6cjJX?=
 =?utf-8?B?RVA3ZmNBWkZndmN4RllEd0gwTUhaYU50eW5RVmNoUVdIajl5OUtybHVqelVz?=
 =?utf-8?B?UFZhQ2R3bFIvTmduVEFHdUFGaENKaHBYSVArR1NqL3NxbURJZ1h5dmRxSy9G?=
 =?utf-8?B?RzYyVXRJNEhIVUgxYXIvWDJDdXZuSnBTaWpKRmxPQUNrWFVUa1N5MXAvYVJK?=
 =?utf-8?B?cTl1K2EydFF3TWp0QTZDVy8ySzBrcVdDMzRDSEl2eVBwOEsrQnNwV2o3ZmJI?=
 =?utf-8?B?bERLMldTT0NXZUZYOXdYUTNNY1VwK3VKNkppYVY4aVo3YThUMlBCcVg0V2Vo?=
 =?utf-8?B?M1ZCMDIyWkQxbWxmcTVyRW9EMm5vMnBVamd3b29uNmNhbEtEQmRsVEZKK0pL?=
 =?utf-8?B?Y3BzMHlvajZnNitCRFJDTWZVM05ZZWFkVTVBWDVaSFArZnVJaGM2ZG9aejVV?=
 =?utf-8?B?M1JQNnVKUm94clMzb1NmQlF4V3dYQU44a0tGMi8yQ1BQZkxxUXk0TWIvdGxz?=
 =?utf-8?B?RHRsYjRHbHBVajdtazB3QXlFcGVIVjVVb08vWWVrWHNzZjQrZURlTGNxS1pu?=
 =?utf-8?B?aXVTek5sYnhMbWdyenRjNmxxcVRGdWVTV1YwLy9zNmY5d0lFYUM0Z0FxZzZB?=
 =?utf-8?B?STJOTWE0UitMeEhrdFFETW1aejY4SU4yUzh2Nmc4anhkc21rZzk0eE1mTy8z?=
 =?utf-8?B?MVF1NjFtajA0a2UxaG1rM01oUzRrSGR6QTdwS3V6RUJaRElyMXZuKy9hZlMv?=
 =?utf-8?B?Y0RraGZKY3JURzNkSlJ6aWd6WTNvdGRoMk1LcUQ0MWx5NHU4eG1iR0R6dHFy?=
 =?utf-8?B?aCtLTG1TZ2s0MlVmUDY4WDUyNFNsZmVlY2VOVW85T0JMWkZ3YXF1NS9nYzQy?=
 =?utf-8?B?eC9GenhqSkNhdGpFN3R4YitmVVZCR1g4QnBSbkRISEVYWGU2bm96QUxEamRL?=
 =?utf-8?B?eUxkajdFb0tscHFvVWlSTnRyalRYMDhxNXFCd1NvWm1RUnJrbUpWejBQNTBN?=
 =?utf-8?B?S3NwM3E0VWtRRy9MNjVSZTNGWER3OVRxcndrZjY4MXloL3ZYdlA3VWZkNEcy?=
 =?utf-8?B?RWc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <3AE6B1321F668E4895D9AB56739F785F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3207.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3189d37e-1da4-442e-ee2f-08dacc7302d8
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Nov 2022 10:19:16.7110 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bb4u7YbTA1G7VReRPDOPiiUpbrQtNd37ZO3lOYs2lLeCZG4EMY+Xu4VQQaFwoHAJOlR7abi5MwqpAA7bQY40kn9XXY5gaLbgRdO2y1lPZxw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7692
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915/mtl: Limit scaler input to
 4k in plane scaling
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
Cc: "Syrjala, Ville" <ville.syrjala@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDIyLTExLTIxIGF0IDEzOjUwICswMjAwLCBMdWNhIENvZWxobyB3cm90ZToNCj4g
RnJvbTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQo+IA0KPiBBcyBw
YXJ0IG9mIGRpZSBhcmVhIHJlZHVjdGlvbiBtYXggaW5wdXQgc291cmNlIG1vZGlmaWVkIHRvIDQw
OTYNCj4gZm9yIE1UTCBzbyBtb2RpZmllZCByYW5nZSBjaGVjayBsb2dpYyBvZiBzY2FsZXIuDQo+
IA0KPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGlu
dGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBp
bnRlbC5jb20+DQo+IFJldmlld2VkLWJ5OiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVA
aW50ZWwuY29tPg0KDQpPb3BzLCB0aGlzIGlzIGFuIGludGVybmFsIHJldmlld2VkLWJ5IHRhZyB0
aGF0IHNob3VsZCBub3QgYmUgaGVyZS4NCg0KSSdsbCBzZW5kIGEgbmV3IHZlcnNpb24uDQoNCi0t
DQpDaGVlcnMsDQpMdWNhLg0K
