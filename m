Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 95F955F715D
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Oct 2022 00:47:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 670D210E0DA;
	Thu,  6 Oct 2022 22:47:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A125310E0DA
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Oct 2022 22:47:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665096431; x=1696632431;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=1n/CScdJEyyYaaA+QsGPSo/TsfplWheskmKVr6jmeKE=;
 b=U+JOe0pfGw6zHzJ5j2Pcs3c8XFdXQDsTk5r2zoRIl27rA6hlDEoxzN4c
 nNbmJnfo/rBshWT2m3yJpxHrR7lLbVWSooJZdejLKZVFgEZH+qBJYNj7u
 LBWo113huhMKU/knI8JKZcfCY/Jr2vmPbLWCLgJiyHCyjdYvZ6qeRca66
 bk8cOlfc7aRIBYDBXuLUJyUpxVzKEtxe/y7aHfNHAtCHbgvMKHubjh/aM
 KBe7vBNNMlW2LzNgG2katzf+q0zf9SS6iYOXksvX29u+NMmpNZB6WVlB3
 90+UanuOX+BS6bkDIkTf/U/PmGW/Z3DGoEdUug/Je8Pelr3KVwaYQmeyg A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10492"; a="305174349"
X-IronPort-AV: E=Sophos;i="5.95,164,1661842800"; d="scan'208";a="305174349"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2022 15:47:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10492"; a="870037293"
X-IronPort-AV: E=Sophos;i="5.95,164,1661842800"; d="scan'208";a="870037293"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP; 06 Oct 2022 15:47:10 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 6 Oct 2022 15:47:09 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 6 Oct 2022 15:47:09 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 6 Oct 2022 15:47:09 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.48) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 6 Oct 2022 15:47:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MQtUIOFH5SlSaEHZD8GKnjY/cUkg/IJLGJHQTA4BKrZFPcG2OMkJPF9F2Atk27HzJDX2Kma1mqJd8JBCbeKGbcCxzgmdtt6/BsJUW3UJY5jOQXJnvxiAIei/4hQWZduNSmygzjacp/d+22zqWPGdol4dq3gkqivJSipspbO2zQ9nPPdI0WFRgHhy5IwCXAVMslnu5snRZKOAmQhE4JD0zrZsVCx58V/iovEW768AQ87jlzjxuc6jze2JEDShNX7iO7gEWhpKBu6TM1nNMi05MqPUft9+Q7pW5OUCtPDTD02IIMJQHoq1Nfsg3L+9KhY2RTbsILoIVKb1i3vBtexA9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1n/CScdJEyyYaaA+QsGPSo/TsfplWheskmKVr6jmeKE=;
 b=dWndXkp684PfaGgKVABqsXiopM1DW9YvoPsBRkx9iu+Gr18FR7jp/u5A4CRNHcG2kP032YBQMsXKpNhPKKLi5MBS2llB1p269vTuapMiEmyIHln2U0Y+PWLjWtMgZMFvZAgSeR6Ah1th3feMQDEgB2NrugIp1Ht06qtvMxGTH1fmK+zBnoUwSsKm1tf5NwCzB1rndRAk8P9wJ4WhY29OyC5dWE3gJqzbNT8RwtPWJb8R8iX3+z3DD3EOaM9NlVXn0bahbbXO426jYFgTikP5GvLm6/DeHN+UYMjwU0dC31EpPlM5RZA5sTm5Mr8+dsr171idshFM2KGjUu8XBxRhog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 CO1PR11MB4836.namprd11.prod.outlook.com (2603:10b6:303:9d::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5676.24; Thu, 6 Oct 2022 22:47:07 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6f3a:c6aa:731c:d1fd]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6f3a:c6aa:731c:d1fd%7]) with mapi id 15.20.5676.034; Thu, 6 Oct 2022
 22:47:07 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v4 1/1] drm/i915/guc: Delay disabling guc_id
 scheduling for better hysteresis
Thread-Index: AQHY2UkKktiKWTXhUUOHT0Bos3M+q64B+R0A
Date: Thu, 6 Oct 2022 22:47:07 +0000
Message-ID: <e7a6b40a8b546e960cabbe69f0802b62f0bf563d.camel@intel.com>
References: <20221006060224.691844-1-alan.previn.teres.alexis@intel.com>
 <20221006060224.691844-2-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20221006060224.691844-2-alan.previn.teres.alexis@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.1-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|CO1PR11MB4836:EE_
x-ms-office365-filtering-correlation-id: 0e7b7465-9d2e-4825-f75b-08daa7ecb266
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xFdtXL/zlHJyG4CZbm+h++IpOolfAhzF7r7rdNEr6WhbwB6AH8dMXModt4ZUQR/AgIWiSKjuJ5snQn+QSz0xGvUlQtxX4ksRkDyyzO+WDfnaICgOIGA60fCoaprmTjv/wJXw9WI3BLEhjyG3W2cOm1zAdttQTx0WNaqxQKiBxeuZ1dz0WAiiS29a0jht4oINLM5TzJNB2mrvKZjAt1AqCHqMxa08x5niwF/ePNjIVk6YHiygh82u7D79ESLJ86Kyrp+VFMbDsaL2ckU8FZWS9MdAByG2NauHmF/+w1QmXfdKO78rgQKiapfn6JoOuSiaf3ZPN4IaE1FCItxMpEWskyymc6PZNcucG4CtVqAVHS7Gg1MEAl6P6eAiNPioPjpb1K76gdMFykQn3U35oAtSfA70wGWUZg1cEI1JGiIjp211h6DCXOifKzenVlXLVHJE4+EcFTVcmEl++NMsJdGsJbLWyJ6rTXX+bqQgAHqtYw+8vW1GNvHj7s87N7daSkhrYlQzERJjwwNd8d6GZo1vvYPO4KEmCyA27eLkyIr5KwnZdE7w+wO3hJoXgcyCIesPqrDyKj0tdObAwky0h2cXdsF9n9IGuU1UMOMXg5qitp3+I16cOG74konWJDWrbd8A1YhN/KXMnLFazTkU48YvHKusvU1q8TZqj2S6ko4auFfL/NjkX86PytkX6AoKY7RemF9mpUv9Ur68vA+T5TmB/Op8UfaFNKvMy24qJmK3lY+Bi6ULTlpeEkKhNBtAh25Fb6HyFkJBea9ywzMoOi1VYif1iVh3WYkOXsoTAwR8apA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(366004)(346002)(396003)(136003)(376002)(451199015)(66446008)(2906002)(6506007)(66556008)(66946007)(83380400001)(26005)(36756003)(76116006)(64756008)(6486002)(82960400001)(6512007)(91956017)(41300700001)(38070700005)(478600001)(186003)(66476007)(8676002)(4744005)(71200400001)(122000001)(86362001)(6916009)(38100700002)(2616005)(316002)(8936002)(5660300002)(309714004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bjRQeUM4bzdVNlFlR1l3emFnQ1pWUitacStuWjVad2Z6eVJoVEhwRnowb3RG?=
 =?utf-8?B?cVRsdUEzdk1GY1dVZXE1bnZxT2JRRVZmS0YvVkhBQ3g4TVMzN0tjMkZWYW9P?=
 =?utf-8?B?VzJyMGhWMUdRMVJyOWNvUmd5RXlXQ1R1YWJqNld1Umt2MFJ0UDNTQlM3dmxT?=
 =?utf-8?B?ZmFDUmE0ZGZkNzBnVFh1YXQyVGRCdXZFTHZNU3hYeXdnbUM4a2MvUW1DaHRx?=
 =?utf-8?B?WkNwT3NaemFWZkxtbDgwL25SbGNnNUoxdWpXS2NxZm1EQ1JpOHJXL3ZNeTJU?=
 =?utf-8?B?ZlJOZTUxY2FmOGJhdjhvdVdiak80a0g0RVN3d1QwQVo4RzBwSUhqMWZveGtt?=
 =?utf-8?B?cGR5TWFLQ2w3RjZZU3NrVTRYVnRqdVM5RUl3SXFHYVdCZmZRYWNFcEx3clhE?=
 =?utf-8?B?SjFVOEFrWjkyZFVWRlNGMlRCVHFqUVdHZTVSNmVoVFZETmtHWi9yUW5GQUo4?=
 =?utf-8?B?Q3F1clVkR2UwY1ZPSHVNNEJKS2E5c3Zpb1M3T1dPOUtNOUVUc3A3ZzZnbThS?=
 =?utf-8?B?V2U5RVQxQkpyNFJORVY3N05GUHVGL05SRy9PeUtGa0lMc1dTa2U4Szk2enJz?=
 =?utf-8?B?VXJCQkhiMkR6N1B2cU83TVhwWCtGQlBMMkZQa1JpcDBUcUN2TXZxUW82Skdh?=
 =?utf-8?B?ckdCQzJaRW9mZnZOQnB3RlpCUFJrU3pCWERnUEVRQ0xydmc1MzZaMGhlVC90?=
 =?utf-8?B?RUVBVmhMTUtwdEprOXBmbDVYcjB4ZnpOMEdWM2VXRmxsQ0thNEdlc0pIdnZP?=
 =?utf-8?B?clBQRktGL1lzWGtNRExadUxBWlBoZ2wvWVZRV3dTRGw1aWM5V1JsdStGR1Bu?=
 =?utf-8?B?SGZ6QkdFNHNNd3JscEZadEcxZFZNZnY2YmhLMVFSZDN0QzFVVGdMTnM1eTdL?=
 =?utf-8?B?OExGaEt6cDZFSkp6bGRSSTBmRjB2b2Vrb2xXTlkxVGNRT2pKOXYzdzlaUkt3?=
 =?utf-8?B?RHpRalQ0cTVUNTI0MGpXemR5VlVRSWt5TVNzaEs2MUxaaXB2NUdiV1dBdnpZ?=
 =?utf-8?B?RGhpek8zbUpGcnk3RFZYMnRGcEFCRU9RQ3hUaEE4TEhuRWxhZ0hFR3NyN3hs?=
 =?utf-8?B?cEdKcm96Q2MrQ2Z2aWdhV1E1Z3BwZHpGb2YxSkJCczJNNkQvODZZRUNYZzdh?=
 =?utf-8?B?TDQ2b1J5VitrYS9lSFpBVzdaajI2Q2NiWWl5WFk0QzNtNWFCMWZKOU5SSjM3?=
 =?utf-8?B?WkFwbXV6Yyt5VXNoclo3Z2VUWlNtRWpqZ0ZHVVMvR1ZkV3BhMW1SNU8yL3l6?=
 =?utf-8?B?cU9wbTZHV1VXU2hvaDdpNnRQVFJmNmZ3V0NVbno2eHg5S1ZBZmpVcFF5Ynhr?=
 =?utf-8?B?UU4rSXpSUm1XY2lBMUFwVENGL0lZUm5uZUxpSVM0Zm5EVmlkUHhFT1dRZU5R?=
 =?utf-8?B?bG5QUDVzQU4xN3dnZTladktyeVN4Ly9VVE1xZ0JSSys5QUNBZnVJa2FMd0FI?=
 =?utf-8?B?OFhCRG9WZEJHN0FhVXFtclNUNEVTZlVxTHBBN09mVDdZR2t1NmhjTWE0SHBy?=
 =?utf-8?B?cUFycFZWeGNnREZtM1ozSk5UYTRlQWlCWkdrTmthNEpCWXpsaGd6aHZ4TjFX?=
 =?utf-8?B?K3hHUnhHYkcwS2lFajl5RlZlR1FLWHp0cms2VmZuUUdhYmtHKzNCZVRkejFh?=
 =?utf-8?B?VjdOV2NBVHZ5Q2NUOEVwakVyZGlicWY0d0orcEtZTWVPd1MwVVp2Q3JZalhY?=
 =?utf-8?B?TUV3LzRUK2d5VzIwMmxTR25ma3JBMXA2SUwyalVXZzU5NWlPK3VMWEUrSkxL?=
 =?utf-8?B?dVFub0Q0clJ3R0NRWGx2WG16UXB6QjhaUUdCTVFCNmRWRmExNFBNemxaMjg5?=
 =?utf-8?B?Z2IvZm1BY2NSVlpJRlFTc1N2VHM2bDlzeitNSG81WVV0ek5UUnJZN05VZGpy?=
 =?utf-8?B?WndTTmQ2R2QwYXNCMVpQK3ZiRFh4ODQ5RCtEMGZhL3JPc1JuUVRBLzVYUjZM?=
 =?utf-8?B?VVpOaW5uclZ6S09lc0tDVEtKajQ0T0JnUzc3Vm55KzRaM0NTV3pKS2FOalpL?=
 =?utf-8?B?a1BnMzBjTkNrRVJuRFZ3Q0NXbTdrVnhGVVhnUmh6MlhKRlhpQ2xEdDI3bUEz?=
 =?utf-8?B?VzF5Z1lXTGRKbTFsV1VMWDlHamREVkdMd2FVZEorcEtuZ2g1UU9pdlJSSGli?=
 =?utf-8?B?WCtGNXRQSHVBL0xqamtaM2YxS1k0My9KbnE4RmZzcEptNE9CNkF0alZuS0tW?=
 =?utf-8?Q?qLQc4BiWTeUpOUmIZFBSRfE=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <FB39DF633346AA4495FD1FE62F73A81C@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e7b7465-9d2e-4825-f75b-08daa7ecb266
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Oct 2022 22:47:07.2934 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JMgMt9tj9VW+LeEhHlNaLxOv5TM4tHfzW29zx9IyfEtBXXq5g7xwDFL+oYXixApdmfIcUjqnoo3FsIG0ey0FzgfLubvBnIQZZEzjY2Rluk6mQjMJE86SrvzBuNJKRQ1n
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4836
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 1/1] drm/i915/guc: Delay disabling guc_id
 scheduling for better hysteresis
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

DQoNCk9uIFdlZCwgMjAyMi0xMC0wNSBhdCAyMzowMiAtMDcwMCwgQWxhbiBQcmV2aW4gd3JvdGU6
DQo+IC1zdGF0aWMgaW5saW5lIGJvb2wgY29udGV4dF9oYXNfY29tbWl0dGVkX3JlcXVlc3RzKHN0
cnVjdCBpbnRlbF9jb250ZXh0ICpjZSkNCj4gLXsNCj4gLQlyZXR1cm4gISFjZS0+Z3VjX3N0YXRl
Lm51bWJlcl9jb21taXR0ZWRfcmVxdWVzdHM7DQo+IC19DQo+IC0NCk9mZmxpbmUgY29udmVyc2F0
aW9uIHdpdGggSm9obiBIYXJyaXNvbiBhbmQgdGVhbSBtYXRlc3QgY29uY2x1ZGVkIHdlIGRvbnQg
ZXZlbiBuZWVkDQp0aGUgImNlLT5ndWNfc3RhdGUubnVtYmVyX2NvbW1pdHRlZF9yZXF1ZXN0cyIg
Y291bnRlciBhbnltb3JlLg0KDQpXaWxsIHJlLXJldiBhZ2FpbiBhbmQgcmVtb3ZlIHRoYXQgdG9v
Lg0KDQouLi5hbGFuDQo=
