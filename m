Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D46A6F2129
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Apr 2023 01:21:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F3F410E03A;
	Fri, 28 Apr 2023 23:21:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F60910E03A
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Apr 2023 23:21:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682724108; x=1714260108;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=e2j3U2aTqK3VTlXWQtKQPk1avB4+bJbLcvqIBaerJiE=;
 b=C3/Y/qGKip50Iu+av4F7cnNY/GShP2zlEbS40PfndvpLCPr9VyVSvFfA
 PL7f6wAJ+thivsKeNfIadTes3mPOuNPbBh/WgebDxtwnktAZlvg63dk6y
 QQaWMS16sXNFBCfKzpBH1x5URsHIvnvMRH86EDZPBewlz6ZEtx6CHpefy
 RMnXCr4Ix7deOrcCP+ALltwpw6odtzLMrTdZqd7AuVebHP01RIoXmQ22q
 bPOXefZCcS6lWqG11qYVkQBxFwl9pGM1v7LurjL0BjASmekpoDaTef7Yz
 RVajzStGXMY7XQTgj5QpxBwfqWFvm7sdSaDgntypppqux+59xoSqqSojy Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10694"; a="410993943"
X-IronPort-AV: E=Sophos;i="5.99,235,1677571200"; d="scan'208";a="410993943"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2023 16:21:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10694"; a="694980854"
X-IronPort-AV: E=Sophos;i="5.99,235,1677571200"; d="scan'208";a="694980854"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP; 28 Apr 2023 16:21:46 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 28 Apr 2023 16:21:46 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 28 Apr 2023 16:21:46 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.109)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 28 Apr 2023 16:21:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f7zO738uvenu3KQ5/BN4edD9u5RbzgmjGhgcVb8vWnU45WzyDTfBU8buzKG3Cq5rUxeaNdtR0vXDnCROjmcwDXYeJrJGty9hGPFK+/kxf/Ye3c4PAtzjPBTvifZga49nVruZebDQ6vZNqX2spuuTvPAiDH58ertFEhNgOwmj8zXrJsMowGZ5AkE7XcU/kfaGzqbeMH6zDmfm8XcvqC305uN9PT5AoLZmPPDPq3BgNcHa+P7eXCtIxInkOQ/MNDPqkK+ouu4p3IAUJ0p8rX9mMN9003jwG6njPFmfXdi0TA1ffSC25dR4gQsPZAgXwjVBdGZ2NnWU+JO7z52VIweI/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e2j3U2aTqK3VTlXWQtKQPk1avB4+bJbLcvqIBaerJiE=;
 b=fjFQNIxNtOxcfYOct4WjL3OpRbT6pUMJu+NhH8n6+4LwzqEQfOlgG5n53YaWk283ZyuK1mmQuMWTv2zq1vit8yog2g6HkAkMRG53wAMtrZsMA5KPmI7jVVvWxXoEETxTOwcd4GAcydqPxwHRaPlPvIUWCQCmR2Qc8PUVYkYc3q57t/rqYX4deLelR7D91WyHIVaRG+czdN2gRQ7Q5t9EG7es4PAyorjl6eufQQO1B1oWYAgJM3A//+OQPUoFZPdeHdDDjt8MwsuboEVZEJs8dqMwR7dxTXUYe/5WZBhha+UfO+JW+vAUwEXbykb0dVU01p0K5kfLKHYERZiW4XvPHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4962.namprd11.prod.outlook.com (2603:10b6:303:99::23)
 by SJ0PR11MB4989.namprd11.prod.outlook.com (2603:10b6:a03:2d9::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6340.22; Fri, 28 Apr
 2023 23:21:36 +0000
Received: from CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::16ef:78fa:40dc:31bc]) by CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::16ef:78fa:40dc:31bc%5]) with mapi id 15.20.6340.024; Fri, 28 Apr 2023
 23:21:36 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v3 2/8] drm/i915: update the QGV point
 frequency calculations
Thread-Index: AQHZeRk3jAEtIzA3gU2a+yiE1n8pg68/QM4AgAIdWIA=
Date: Fri, 28 Apr 2023 23:21:36 +0000
Message-ID: <4b531301f35e856b0a44f7a002686406a6d8672f.camel@intel.com>
References: <20230427150016.1566833-1-vinod.govindapillai@intel.com>
 <20230427150016.1566833-3-vinod.govindapillai@intel.com>
 <ZEqO4oTlYATzgnqd@intel.com>
In-Reply-To: <ZEqO4oTlYATzgnqd@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB4962:EE_|SJ0PR11MB4989:EE_
x-ms-office365-filtering-correlation-id: 9875ea42-f277-4357-2726-08db483f4fb9
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: aocEguSbmIxt3aSpRbP6nk0kZpcV5Jy0YfmNQOmqGNn1ODiLLb+lT/5mhu/v/2ugdDIsVcnvYUjoxzEGUiTs5tsyw02QqkeFcWI2DbH1Touka9FF+IWeA1bRd+5/LrAZsald/7CasdhyZ2EA5GwIirbv5PLC7i36bnuQoznilQPEctNNxJoWjOTn6g+Co0sElruvqoIx60Lvle9e9b1oZX5E1G7on89xT51AFVMNngeyHqaDGLTHM70BXgq/ISh7WuZAxWE5CHeItyWxJ6xM1iKepi9CXhNp8Dm/Q/bvOl2gbLQrNNn8G+AuX6btTPM+6biE22cRv+WRvfXJhL2oCWWB+zcw6QcY99LC71pMpzJKOPkdesskCuSgDwMoqmkOlAuW4QD0aeoSNSa3+5vCmfpsZNqhOgJX+3giBiEhQm/StJGnHV5h8chjX8mOz1dgdmyxwngThAY5fdCb/FpIlPHMlBWQYu/NQgeYOUF0k0fzW1jyVCv9ztWWO3yIIPp9RWcyU7hqMy4pXwlB1FoZ3EkgbU4+HqzIkUUL9xvwcOJQB2uyCwu0B7ydsz19DWC5i6HtrHsKMUgLRJZ0b3Yye3KrCJyTKKc3NUtQl+26d2rNGlD433sIB+P9v2k/0Blb
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4962.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(366004)(39860400002)(396003)(376002)(136003)(451199021)(316002)(54906003)(76116006)(4326008)(91956017)(66476007)(6916009)(66446008)(64756008)(66556008)(66946007)(36756003)(2616005)(186003)(26005)(6506007)(38100700002)(122000001)(83380400001)(66574015)(478600001)(8676002)(15650500001)(86362001)(5660300002)(8936002)(6486002)(6512007)(41300700001)(71200400001)(38070700005)(82960400001)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NlU0T1E3c3ZjV29lRk0wOEdicHROSnd5NzVpVUZDdXJ0a0pyWjJVV0NQRkx5?=
 =?utf-8?B?YUsyYUFUQzgyYnNxZUVFTVl2OUFqbFhEL1pIRDNNRThkRjJuelROSmd2NWJy?=
 =?utf-8?B?MWYrQVRKeDUxT2NGaHh6THk1TG9YNUxFYmJZVGlSZEIwM1o1dXJCeDBVdDg0?=
 =?utf-8?B?NXNxcUNJMmxlUlZLa2FERUt4ckZKN3FoWi9RY25Jd1VxUm1ZMHBidzNRVEd3?=
 =?utf-8?B?cGJrZG5oVzVNTVlUTGZuQitneTAwaGdzeENvZ3NZVWdoNUx5OEZwQTVscFpI?=
 =?utf-8?B?NDNleVh4bE1wZURGRmhkVjRFNXhiYTV1eCtBaDhVbWU4M0RyNHpoZFEwekNS?=
 =?utf-8?B?UHNjV0RpWVZEeEhCb3RDWHBrc01qN0xCb3habmdpUEhtb0owMUZlQXF1cjQ4?=
 =?utf-8?B?QVN5T3B5c2lFY05vdDdDL1BZcUtTVEpzbDBPbFkzNlhKY3RhYWhQeW81L2pm?=
 =?utf-8?B?RlNDR2JibU5DZ0xwN3U1UjF0TUJCUmk0Z3FSZnJmQ1JaTklNVitRbEFRTlBZ?=
 =?utf-8?B?YUVCUFh1aGFnQXo3VXFsR2VPYTF6K1k1U2RXWWhvYmdEKzJrZ0haM2RENW1L?=
 =?utf-8?B?U09uNkFwbG45aE9neGNmNW1sdUdlQ0gySm5TbGZXd0FNajV5SEFIUlh2R2dw?=
 =?utf-8?B?MHZZK3QwMzhHUmljeW81OHYzbGxpUWNwNjBzSmt2N3BOL0hMSGlON09hd3Zx?=
 =?utf-8?B?djRmV3h3aGFXZlZPNndRNEhtdHNSSzJpZUdibll0cGI3SjhBVlJZT1FPUXpl?=
 =?utf-8?B?ZDBickhkU0RjRmJwNzBUaE1nb1BnUk9RaWVhS09lL0VGclJ2T205S3ExYmV3?=
 =?utf-8?B?Ukk1ZmtmY1NLTStCVlBIdGlhYTI4cHBhV09wdXdVT1NtbTVXeklaRmdLcDcw?=
 =?utf-8?B?Yi9kRTRBWVZKSnVlbGRHOXVVdnNsY25EVGxGNVRTazlweERWbDhyRXB0M096?=
 =?utf-8?B?VzlvVlNWSy9HUHVrWVFQVXNWUC9QdnR6SEZkdWttNStzeFBPcjNSb0tZRGNj?=
 =?utf-8?B?ZWtnY0pDdWdkV1EvdFY5V2NuWjRJQ3VLck1nbEZ6TmtxRDNXaWN5dFdqNlo0?=
 =?utf-8?B?S2FmRWR4ZUpXckVFOUZwaUJLNERWdXV3dEttMFNZcnJhdmcxdU95dldwWm1O?=
 =?utf-8?B?eDhaU1B4TTI1M0ZaaGdZVEs1dzdIc2doM3lJa0N1U1g5Rzd4Rjluam9lR1ZH?=
 =?utf-8?B?dnVDMHdoWTF5Y0trY1NFVmRScERwTjUrU3dmeTRzemg4MERUN3NLcEI3cHVv?=
 =?utf-8?B?cXg4SldEWEFRZlhjTmV6Z3hpcjVJTy9wS3l5cTdJbjFrTUYvdEpmeDJmRGo5?=
 =?utf-8?B?NUFPUmM5ZEVJUldnZUdrdWxxUXpIanpXay9LNkYwMUJCMzZCRit5NXBMRE54?=
 =?utf-8?B?dTJ5NEtVV2UyNEJxSnhzM0hhZlZFLyttSjA0VzZBZUxUTHI3Tk53Vm9aVDNL?=
 =?utf-8?B?SUcvMWFZSUhDV29RT0RZcDRBZnhiVzNsUUxScjduTUFmYmVPd1RmWUQzSFZ1?=
 =?utf-8?B?bG1ROVhWQVZxMzczZUdRemR0YTRRa2w5OHVwQlhOOGphZTAzbW9Pb2RESERo?=
 =?utf-8?B?T2w0eTB6Uy9nQ2tKRDFzLzlpZXN0dkk1eC9uemVXTWJRTTRyQ0ZOTVExZzVR?=
 =?utf-8?B?d3RpS1ZLd0JMaEI1djgwV3JMblFzNmcvTHpuaDUycnhHaUt4RWhCWWJmQ0NK?=
 =?utf-8?B?dG05dXN2VWhJeHJYY0ZHR09hNW9NSWUvanJXM3ZRNmR2ZDlZNTh1WkNQcG1t?=
 =?utf-8?B?VERZR0FlaHZiZGxQQjhIUCsrc1RhNmpwOGxaVjVlZUdoY0cxSDNoUUxXQnNO?=
 =?utf-8?B?NTUzSU5tNFo4WWhjeGczMUZ3akpCMHYvRURRVEt0d0F6RWZTa2xHWC9iL09U?=
 =?utf-8?B?aXVweWtQUmhrWW4weGIrVHd5cUVONm52OVJJN1gzSFNUbFRUV2xEUGovVEg2?=
 =?utf-8?B?NkxVVjhxQXN5dWVoYlZtQkFHKzhQS0c4eTZsdjZXRTAxWFU2NmNzVnB4MDB5?=
 =?utf-8?B?enUxdklxVzNLcVZtdTE4UUZMK05GczA4YzRWRmJuT3ZSdFBZZWFBK2J1eUVo?=
 =?utf-8?B?Z1ltTHl4ODY4NGNYc0VpY1dWQStpcC96Nzl0YnFUTXJKc3RmdXAvVkpLbzFo?=
 =?utf-8?B?ek1GbFJPNXBHZ2c0alVaQmpvajZoYW5jSkZLd3RIUXNnMnpVMzZ4cnp0Zi9N?=
 =?utf-8?Q?i5tBXcygS7AyXTDWU65942I=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <AD14417EA32D0E4B8AFD195E72867B10@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4962.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9875ea42-f277-4357-2726-08db483f4fb9
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2023 23:21:36.0657 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CStkIvq/adkp81xqQBkbPz/9y+qm9VeHbV+8B/SMn41p1g1hdQyzQt858DAQAMZs+hm9kg2K8itxGc7TM3QpAJg9u3tjEOVDWYuT+jqvz/8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4989
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 2/8] drm/i915: update the QGV point
 frequency calculations
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Syrjala, Ville" <ville.syrjala@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDIzLTA0LTI3IGF0IDE4OjA0ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFRodSwgQXByIDI3LCAyMDIzIGF0IDA2OjAwOjEwUE0gKzAzMDAsIFZpbm9kIEdvdmlu
ZGFwaWxsYWkgd3JvdGU6DQo+ID4gPiBGcm9tIE1UTCBvbnd3YXJkcywgcGNvZGUgbG9ja3MgdGhl
IFFHViBwb2ludCBiYXNlZCBvbiBwZWFrIEJXIG9mDQo+ID4gdGhlIGludGVuZGVkIFFHViBwb2lu
dCBwYXNzZWQgYnkgdGhlIGRyaXZlci4gU28gdGhlIHBlYWsgQlcNCj4gPiBjYWxjdWxhdGlvbiBt
dXN0IG1hdGNoIHRoZSB2YWx1ZSBleHBlY3RlZCBieSB0aGUgcGNvZGUuIFVwZGF0ZQ0KPiA+IHRo
ZSBjYWxjdWxhdGlvbnMgYXMgcGVyIHRoZSBCc3BlYy4NCj4gPiANCj4gPiBCc3BlYzogNjQ2MzYN
Cj4gPiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBWaW5vZCBHb3ZpbmRhcGlsbGFpIDx2aW5vZC5nb3Zp
bmRhcGlsbGFpQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfYncuYyB8IDIgKy0NCj4gPiDCoDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKSwgMSBkZWxldGlvbigtKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2J3LmMNCj4gPiBpbmRleCBhYjQwNWM0OGNhM2EuLjI1YWU0ZTU4MzRkMyAxMDA2
NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMNCj4g
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMNCj4gPiBAQCAt
MTgyLDcgKzE4Miw3IEBAIHN0YXRpYyBpbnQgbXRsX3JlYWRfcWd2X3BvaW50X2luZm8oc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LA0KPiA+IMKgwqDCoMKgwqDCoMKgwqB2YWwyID0g
aW50ZWxfdW5jb3JlX3JlYWQoJmRldl9wcml2LT51bmNvcmUsDQo+ID4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBNVExfTUVN
X1NTX0lORk9fUUdWX1BPSU5UX0hJR0gocG9pbnQpKTsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgZGNs
ayA9IFJFR19GSUVMRF9HRVQoTVRMX0RDTEtfTUFTSywgdmFsKTsNCj4gPiAtwqDCoMKgwqDCoMKg
wqBzcC0+ZGNsayA9IERJVl9ST1VORF9VUCgoMTY2NjcgKiBkY2xrKSwgMTAwMCk7DQo+ID4gK8Kg
wqDCoMKgwqDCoMKgc3AtPmRjbGsgPSAoMTY2NjcgKiBkY2xrICsgNTAwKSAvIDEwMDA7DQo+IA0K
PiBEb24ndCBoYW5kIHJvbGwgcm91bmRpbmcuDQoNCkhpIFZpbGxlLA0KDQpJIGRpZCBub3QgdW5k
ZXJzdGFuZCB3aGF0IHlvdSBtZWFudCBieSB0aGlzLg0KDQpUaGlzIGlzIGFzIHBlciB0aGUgQnNw
ZWMgNjQ2MzYuIEkgYW0gYXNzdW1pbmcsIHByb2JhYmx5IHRoaXMgaXMgd2hhdCBwY29kZSBleHBl
Y3RzIHRvIGdldCBpdA0KY29tcGFyZWQgd2l0aCBpdHMgaW50ZXJuYWwgcmVmZXJlbmNlIHFjbGsg
cGVhayBCdy4gSSB3aWxsIGNsYXJpZnkgd2l0aCBBcnQuDQoNCkFuZCB0aGVyZSBpcyBhbm90aGVy
IHJlcXVpcmVtZW50IHRvIGdldCByaWQgb2YgZGl2X3JvdW5kX3VwKCkgb2YgdGhlc2UgQlcgY2Fs
Y3VsYXRpb25zLiBXaWxsIGFkZHJlc3MNCnRoZW0gc2VwYXJhdGVseS4NCg0KQlINClZpbm9kDQo+
IA0KPiA+IMKgwqDCoMKgwqDCoMKgwqBzcC0+dF9ycCA9IFJFR19GSUVMRF9HRVQoTVRMX1RSUF9N
QVNLLCB2YWwpOw0KPiA+IMKgwqDCoMKgwqDCoMKgwqBzcC0+dF9yY2QgPSBSRUdfRklFTERfR0VU
KE1UTF9UUkNEX01BU0ssIHZhbCk7DQo+ID4gwqANCj4gPiAtLSANCj4gPiAyLjM0LjENCj4gDQoN
Cg==
