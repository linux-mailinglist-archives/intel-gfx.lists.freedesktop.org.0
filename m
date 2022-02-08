Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F092B4AE25C
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 20:38:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09C4E10E125;
	Tue,  8 Feb 2022 19:38:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBFFB10E125
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Feb 2022 19:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644349096; x=1675885096;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=bdJ14HuF6dw0R7cd5aIaEFXOxjgWXV+9o1JWk1ytwL4=;
 b=jCF5oLdX0gCts/WCK5E/4zd9GIIfacwGw+xWKlFa7tlzx+MubkKXyvZU
 z2Z6zUhNAcalagQvV9hKJDS3KwVWFc3pMQy+RZ/85DJtF21U32YJ+wMQE
 9Bg+oNSgH1FkTybBCN1OpeZD0Xza2k+2JZxDDlmlanZzfIRW1mz2tKpRH
 AQZ+S9RPR5/w7u7rngbTAvt5PHsrgEXNytapwUrVyXv3s3rzVqvlYJwZH
 NpVoRaBXql01N2ZESnp9/rTMqjtXuAPpXjNVPqVDxF5nBq+iXoKFarWcR
 c0iaI84TuEqfHChSoOAq1IU+ME9UdUJbazrAtMmhEhwNhiLSN6/qn2uvj A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10252"; a="248982477"
X-IronPort-AV: E=Sophos;i="5.88,353,1635231600"; d="scan'208";a="248982477"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 11:38:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,353,1635231600"; d="scan'208";a="567968384"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga001.jf.intel.com with ESMTP; 08 Feb 2022 11:38:16 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 8 Feb 2022 11:38:15 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 8 Feb 2022 11:38:15 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 8 Feb 2022 11:38:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CZlMQyOodKQwMnzSlP1nrSDuoUBFc4NlxidVpqCMCYJbeIVe39La0FwUSmSq0BbNjN/zoVSc1scYoEbLZLaFBBE76jomUJzsy13PvMJqV0qvvEJQk2I2Z13/kDzOaFB9SK1cE/KmuqoP3ToYOuI794s1qRZMF41M890jRUDvBHM/8s26Uq+31IYKdyuzLysSx6YrlDuxvAml7BlnaFiNksEitltkbuuf96+7VGcD6rkpUNHoIwex+WdxxGWXZouxmWcJ/TtoSm88iuPzLrlZKVt0H96BBTGxB/0KgFx47B9miNaVP9dNxytJY5GmlxGbbc+l5MhNVikDPZ4rCC5vEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bdJ14HuF6dw0R7cd5aIaEFXOxjgWXV+9o1JWk1ytwL4=;
 b=LhEdJVJ82EbWuPL5tL7HPAGasYjcSq14gTqSLKRgczJetziA2tACLC/f5W/HPFBaPZD+ttlVIPynqfJWgIXn5+1oxFsJtKLqWpJOGQKPmeR5w7WPlhIss/Zf6fHc/kw/kzB3AjIA8LRbTGmNEkCVQtLgZKYx7DcxraV3HCqIWPKwkgErmqzhyRPMiUVDWxqEQA4tgZbGPqwsE6p70WMn5a9OQ80+/oDhJ0upBjvirDFY34M20WS4sq/O1A5R2cPZO+edn9/c10ZEi60kPpcVCX4gSNhNGOqW8nfyZW6FfSQ3s5q41eYxB9VndhePx+0aJgcZboqYqWJsxoeQqjiqDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from BYAPR11MB3784.namprd11.prod.outlook.com (2603:10b6:a03:fe::10)
 by BN0PR11MB5727.namprd11.prod.outlook.com (2603:10b6:408:162::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4975.11; Tue, 8 Feb
 2022 19:38:13 +0000
Received: from BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::a048:b2cb:5446:6b13]) by BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::a048:b2cb:5446:6b13%7]) with mapi id 15.20.4951.019; Tue, 8 Feb 2022
 19:38:13 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Brost, Matthew" <matthew.brost@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v5 06/10] drm/i915/guc: Update GuC's
 log-buffer-state access for error capture.
Thread-Index: AQHYEqH5/+h2jkBMckGW0JGoCGdjO6yDwjUAgAZf6IA=
Date: Tue, 8 Feb 2022 19:38:13 +0000
Message-ID: <86faa4f1dd88a52b0ddf13a1e6804d01732b14ea.camel@intel.com>
References: <20220126104822.3653079-1-alan.previn.teres.alexis@intel.com>
 <20220126104822.3653079-7-alan.previn.teres.alexis@intel.com>
 <20220204181924.GA18242@jons-linux-dev-box>
In-Reply-To: <20220204181924.GA18242@jons-linux-dev-box>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8bd1ed49-8d4f-4483-8bbc-08d9eb3a8bcc
x-ms-traffictypediagnostic: BN0PR11MB5727:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BN0PR11MB572774DE3F9E16909EB1F0178A2D9@BN0PR11MB5727.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 66YMkeEPn0UazxmabRia8p4qZR51IOP0z3aEvMI/VMFVAmDvLgELeYTJogFU2xMe5MZFaodT9xA/BJ9qzo/oUj5Zf9zOsaQ+ASbb7Kf/ZGhf4BWtDVnxsxCf3qw3izdpE3yWfr30Aiaa/tWBNK8/OwxFNcBKBjR+TcbWgr4Nn3bQg7EtE0VsUKRQ6FPySaLgCCerFK9iDaHLSMCs8Uam7RWX7DzyBFp0tOnTflKgiroYUlYxd5xW8CLb5/bhJwHfS3inqB5rZqmYNgbansguE4VFaTWfA+Jqrn8wUIJXq3WYN5Xh3EHpsf7bcNRf0nmHVKL//Ux4Vd629VSzNGbabT4lVSAvc/Tp5o+NYXlqcL/v8NweOI5MDOwCGjLEAvNpZzRirwiv5lsvcHVFjv6QNvaRpYYh7W2IG5cOKajj2++M0No7pSd4oa648pkKt1MhfSDVwd0XByN8fV2HE0xz9CfBVEz1QJ5sZLd+Teaz5reQLPSJaBZySnT3qHP9vE8GrBrEvUXH3kr3ka8DiJ+Vsd3vpGwfALvbFEMRXVQOh4qRNdpeHA9SCskqsIwZck4jV6n3fF5F/UNVSWuk9+xSj+/KoSctao67LNGghkK2zc3BEFcxa69JMVmxo0umClo/aZYaGQ2Y1qim8mQjArFNTJt1CzRAAqVfRnpMixfQ2fNeRBYdxHMh0vJLxE0cm8ehHnl8wDxII/3/EygpJjgmzQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3784.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(38070700005)(316002)(36756003)(6636002)(37006003)(86362001)(83380400001)(2906002)(71200400001)(6512007)(15650500001)(6506007)(66476007)(66556008)(6486002)(66446008)(64756008)(8676002)(6862004)(4326008)(8936002)(66946007)(122000001)(76116006)(186003)(26005)(508600001)(2616005)(38100700002)(5660300002)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VmhhWkhMK1J3QXNVSm1UU1pJZWdFaHNGQVBKYm5RUlhyY2VLTVQ5cDliUURa?=
 =?utf-8?B?NjgwRDNJVTZ6WEZLMnBKS3FRdXFjRy81S0VwWCtrS0JkM08vZVI0VUExNmlB?=
 =?utf-8?B?RWthOG9LMytFaDRtT0tyR2ZnMG5xQWJtbTc3Rlp1ZUY5QW1OMWhRNExmd3Ix?=
 =?utf-8?B?TzQxdCtQV2llbWpuOTRGdklhR3l6VDVVNnJBM1V4M0dKQlBaN05iNnpXNDJm?=
 =?utf-8?B?Nm9CTzBEWlpDdis3L2N4OVFxVlkwZEJZYmdPNzRGcjdRdW43OGpGam91cFNI?=
 =?utf-8?B?OEFiYWtoWVN5WUovSGVOa3BqL0c1MUlZckxPTXNxendiL3FEUEV5WWdqUmlt?=
 =?utf-8?B?NW9wN0dmZVc4L2p1WGswbmo2QTRaZmRhbTZBM0hxTWs4QzFyVEhnYldrMG41?=
 =?utf-8?B?SDMwQ0JwbXpURXVHVXVDYWFpMDc5WmZvQ3VqNENBVmllZG51bi9nZm83ajhN?=
 =?utf-8?B?Y2c1K3ZKazJlWS82Q0dmcGNEMmp0K3JLdnlIcEsvZk1yc21pR0ViS1lzZjhn?=
 =?utf-8?B?MStDaitEVDhYZVd0VmN0ZnJUK2gvRGJubVg0SjkrcDJiZS9PZFlXYnU4ZHBN?=
 =?utf-8?B?d3VWRHF0Qkl5TXhFNTZqRDZCNVJzWEdDTXBUWWV2NEF0TUYxS2Jic2gzWFRk?=
 =?utf-8?B?aTkzc2pyd2hoMTZTcTBwTFN0S1dwNnI5WkR3K0ErZHJkN3JXTGt0TTNESmtn?=
 =?utf-8?B?YitTdGF3bXRqamJNRk9IK0dVaitHUlJnRUZaR1haUVRQSlBiMlgzS0F4T1g5?=
 =?utf-8?B?eCtJRmN6VEZneDVCZGVkQXpiQ2x6Z3Z1QWxWS0ppSXJyNWJMYy93c0JNVjFH?=
 =?utf-8?B?ZGJyVnBtRi9CS05KaFdQL3c3RzZrT25VaDNGYjd5RmtuQU16ZS9YQ2YwcnNS?=
 =?utf-8?B?SGMzRlZ4RGFVOWNHZnRUemx1UHZrUFNYZWFCSGtOU1ByME9FTGx4T0ovWnE2?=
 =?utf-8?B?K0JaRkNWa01yWkxET2l1amFXQmR2T2pRWGNDQUY3TERDRHFQME5uSm5rMjRK?=
 =?utf-8?B?T3Qxd3JlRXJJLytzTVkzYXlkczc2ODdFbllTU0U1VW5OaXNwN0xlVUp3T0F0?=
 =?utf-8?B?UFZOSC9ORzFFdU5mUENyZ213UmlqSFJFTkE3MXFQaWJiOU1rRk0rUFh0Z3h3?=
 =?utf-8?B?QWFEcGF6bXdwb0JyWFJvM2d1cmZBUmhZbjdRMDN6QzAwVGtkZEJ2c1E3Tk5n?=
 =?utf-8?B?dVM2a2xtTDZSZGpYU2VNMUhubmY2M1NSWVVyRFExZlFvVmhMenpMOG8xMytZ?=
 =?utf-8?B?ZS9GREc4UFpaZURLQ1VheHpMeXNaNU1ocXJWMkxKTFVhbGdoTzZQMDk4OWww?=
 =?utf-8?B?MkNydXV6N0U5NVVKVjhhbzdGMktxNTg0WnBiWURQeGlFTVVmZmhLRUpDeHNp?=
 =?utf-8?B?dzFMaThQWGNDVlBSOTdPcG9EbEZRcndhV3FYNTUxYmh0MUhGNkRXdHgzZ3NE?=
 =?utf-8?B?dmpzbmtLWkI4VExBUUVwdWpoUTF0ZjRlVGUrZGM1WHQzR3g2dmJyOVVmeE5X?=
 =?utf-8?B?cDhQYkF1QmRZdmdZS1RxVkpoWG83QmJlUEgrN21JZUZxVWY2OWhHczNGdkR6?=
 =?utf-8?B?amhwc2NHS2lYSzVnNjBYSnk2WXd3RFM0NjRJbWluUlEzN1ZGUG5NbjRBZEtx?=
 =?utf-8?B?WEZ6SmYzaDdEOVY1RUxTTXhWQ0Z1akQwTmZxcFhCSkhTTSs4aVZhc01pMDVY?=
 =?utf-8?B?NG1Pb2ZPeGVoeGtBUThBYmRVNmFRcFJjZUVFZU9aMUNpNm5WVWxNS3dmak5T?=
 =?utf-8?B?aWJOQS9ldUk2UU9JUURpazdGVzVKcmhZUjhiQjNDb1dPTStGMjUyeUVPS1FU?=
 =?utf-8?B?R2dYTHhyblVSZXh4MXJGUklVVUN3d01pWXJuSzBTV1ZJaGE1NzdZUzlmanFK?=
 =?utf-8?B?VTVpYnA0NW9uejNUNXlwSjVQM20xZjhNcVlHSzVTZWx4SWN6OUZqckJoeG41?=
 =?utf-8?B?OU1FTTNaVnM3cEFBQUFuSkMvSjlPdTNVRmR5TjRVQ3BDVUVWdjAzY1AzR09x?=
 =?utf-8?B?YmFsK0xJZVVRYW9LeHdIR29DRWhreG5mK1QzRHpJLzE3Zzltdlh5YjRDN2pv?=
 =?utf-8?B?bHM2MGpDRnlscmo3T1hxZ3lJR0h4NWlRUWttWkhkK3E4THV4ZXdieWhQamlp?=
 =?utf-8?B?V3IrOGN1N2JtSnNvU3RyM095b2h3WWtnbWRHazdISjArcXpMa0F0ZG5HREFX?=
 =?utf-8?B?YUxYcHpPR3pYSW9IVE50a3diVDFjUnNEcGdpcmxBS1BEOHlvWWlxMGEyT1ZR?=
 =?utf-8?B?ZXcveEUvUVlKbisxZlJGTkJIZkNCS2lGd3Q2TWdSM2UzNVJDdU4yTGJXczc4?=
 =?utf-8?B?KzRRLy9kL044NlNuRmRHTmdLbHQxKzEwTGVPWGZiRkxlNWV6N3Q1QT09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <6524C9A76690AB4AAA567A0A7DB40C02@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3784.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8bd1ed49-8d4f-4483-8bbc-08d9eb3a8bcc
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Feb 2022 19:38:13.4767 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FVe3FDXHTY3KDYcXnMSnENfxEmLkxS7q6tGwP+eLvlzXeuUbTiVcgI97PuP4DoQAJIpaU64mBDjymwb7Qt5MVScsuzveNl5PaxJpvhMbcJ+iNOep6xUX9+MAhkEq6IkT
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0PR11MB5727
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 06/10] drm/i915/guc: Update GuC's
 log-buffer-state access for error capture.
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

SGkgTWF0dCwgdGhhbmsgeW91IGZvciB0YWtpbmcgdGhlIHRpbWUgdG8gcmV2aWV3IHRoZSBjb2Rl
cy4NCkFuc3dlcmluZyB5b3VyIHF1ZXN0aW9uIGlubGluZSBiZWxvdy4NCg0KDQpPbiBGcmksIDIw
MjItMDItMDQgYXQgMTA6MTkgLTA4MDAsIE1hdHRoZXcgQnJvc3Qgd3JvdGU6DQo+IE9uIFdlZCwg
SmFuIDI2LCAyMDIyIGF0IDAyOjQ4OjE4QU0gLTA4MDAsIEFsYW4gUHJldmluIHdyb3RlOg0KPiA+
IEd1QyBsb2cgYnVmZmVyIHJlZ2lvbnMgZm9yIGRlYnVnLWxvZy1ldmVudHMsIGNyYXNoLWR1bXBz
IGFuZA0KPiA+IGVycm9yLXN0YXRlLWNhcHR1cmUgYXJlIGFsbCBhIHNpbmdsZSBibyBhbGxvY2F0
aW9uIHRoYXQgaW5jbHVkZXMNCj4gPiB0aGUgZ3VjX2xvZ19idWZmZXJfc3RhdGUgc3RydWN0dXJl
cy4NCj4gPiANCj4gPiBTaW5jZSB0aGUgZXJyb3ItY2FwdHVyZSByZWdpb24gaXMgYWNjZXNzZWQg
d2l0aCBoaWdoIHByaW9yaXR5IGF0IG5vbi0NCj4gPiBkZXRlcm1pbmlzdGljIHRpbWVzIChhcyBw
YXJ0IG9mIGdwdSBjb3JlZHVtcCkgd2hpbGUgdGhlIGRlYnVnLWxvZy1ldmVudA0KPiA+IHJlZ2lv
biBpcyBwb3B1bGF0ZWQgYW5kIGFjY2Vzc2VkIHdpdGggZGlmZmVyZW50IHByaW9yaXRpZXMsIHRp
bWluZ3MgYW5kDQo+ID4gY29uc3VtZXJzLCBsZXQncyBzcGxpdCBvdXQgc2VwYXJhdGUgbG9ja3Mg
Zm9yIGJ1ZmZlci1zdGF0ZSBhY2Nlc3Nlcw0KPiA+IG9mIGVhY2ggcmVnaW9uLg0KPiA+IA0KPiA+
IEFsc28sIGVuc3VyZSBhIGdsb2JhbCBtYXBwaW5nIGlzIG1hZGUgdXAgZnJvbnQgZm9yIHRoZSBl
bnRpcmUgYm8NCj4gPiB0aHJvdWdob3V0IEd1QyBvcGVyYXRpb24gc28gdGhhdCBkeW5hbWljIG1h
cHBpbmcgYW5kIHVubWFwcGluZyBpc24ndA0KPiA+IHJlcXVpcmVkIGZvciBlcnJvciBjYXB0dXJl
IGxvZyBhY2Nlc3MgaWYgcmVsYXktbG9nZ2luZyBpc24ndCBydW5uaW5nLg0KPiA+IA0KPiA+IEFk
ZGl0aW9uYWxseSwgd2hpbGUgaGVyZSwgbWFrZSBzb21lIHJlYWRpYmlsaXR5IGltcHJvdmVtZW50
czoNCj4gPiAxLiBjaGFuZ2UgcHJldmlvdXMgZnVuY3Rpb24gbmFtZXMgd2l0aCAiY2FwdHVyZV9s
b2dzIiB0bw0KPiA+ICAgICJjb3B5X2RlYnVnX2xvZ3MiIHRvIGhlbHAgbWFrZSB0aGUgZGlzdGlu
Y3Rpb24gY2xlYXJlci4NCj4gPiAyLiBVcGRhdGUgdGhlIGd1YyBsb2cgcmVnaW9uIG1hcHBpbmcg
Y29tbWVudHMgdG8gb3JkZXIgdGhlbQ0KPiA+ICAgIGFjY29yZGluZyB0byB0aGUgZW51bSBkZWZp
bml0aW9uIGFzIHBlciB0aGUgR3VDIGludGVyZmFjZS4NCj4gPiANCj4gPiBTaWduZWQtb2ZmLWJ5
OiBBbGFuIFByZXZpbiA8YWxhbi5wcmV2aW4udGVyZXMuYWxleGlzQGludGVsLmNvbT4NCj4gPiAt
LS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmggICAgICAgIHwg
ICAyICsNCj4gPiAgLi4uL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfY2FwdHVyZS5jICAg
IHwgIDQ3ICsrKysrKw0KPiA+ICAuLi4vZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19jYXB0
dXJlLmggICAgfCAgIDEgKw0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9n
dWNfbG9nLmMgICAgfCAxMzUgKysrKysrKysrKystLS0tLS0tDQo+ID4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L3VjL2ludGVsX2d1Y19sb2cuaCAgICB8ICAxNiArKy0NCj4gPiAgNSBmaWxlcyBj
aGFuZ2VkLCAxNDEgaW5zZXJ0aW9ucygrKSwgNjAgZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Yy5oIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmgNCj4gPiBpbmRleCA0ZTgxOTg1M2VjMmUu
LmJlMWFkN2ZhMmJmOCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91
Yy9pbnRlbF9ndWMuaA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVs
X2d1Yy5oDQo+ID4gQEAgLTM0LDYgKzM0LDggQEAgc3RydWN0IGludGVsX2d1YyB7DQo+ID4gIAlz
dHJ1Y3QgaW50ZWxfdWNfZncgZnc7DQo+ID4gIAkvKiogQGxvZzogc3ViLXN0cnVjdHVyZSBjb250
YWluaW5nIEd1QyBsb2cgcmVsYXRlZCBkYXRhIGFuZCBvYmplY3RzICovDQo+ID4gIAlzdHJ1Y3Qg
aW50ZWxfZ3VjX2xvZyBsb2c7DQo+ID4gKwkvKiogQGxvZ19zdGF0ZTogc3RhdGVzIGFuZCBsb2Nr
cyBmb3IgZWFjaCBzdWJyZWdpb24gb2YgR3VDJ3MgbG9nIGJ1ZmZlciAqLw0KPiA+ICsJc3RydWN0
IGludGVsX2d1Y19sb2dfc3RhdHMgbG9nX3N0YXRlW0dVQ19NQVhfTE9HX0JVRkZFUl07DQo+IA0K
PiBXaHkgbW92ZSB0aGlzPyBUaGlzIHN0aWxsIHByb2JhYmx5IHNob3VsZCBiZSBzdWItc3RydWN0
dXJlIG9mDQo+IGludGVsX2d1Y19sb2cuIE1vc3Qgb2YgdGhlIGFjY2VzcyBpcyBmcm9tIGZ1bmN0
aW9ucyB0aGF0IHBhc3MgaW4NCj4gaW50ZWxfZ3VjX2xvZywgdGhlbiByZXRyaWV2ZSB0aGUgR3VD
IG9iamVjdCwgb25seSB0byBhY2Nlc3MgdGhpcyBuZXcNCj4gaW50ZWxfZ3VjX2xvZ19zdGF0cyBv
YmplY3QuIFRoYXQgbGF5ZXJpbmcgc2VlbXMgd3JvbmcsIGlmIHRoZSBhcmd1bWVudA0KPiB0byBh
IGZ1bmN0aW9uIGlzIGludGVsX2d1Y19sb2cgaXQgc2hvdWxkIHJlYWxseSB0cnkgdG8gYWNjZXNz
IG1lbWJlcnMNCj4gd2l0aGluIHRoYXQgb2JqZWN0IG9yIGJlbG93LiBPYnYgc29tZSBleGNlcHRp
b25zIGV4aXN0IGJ1dCBoZXJlIGl0IHNlZW1zDQo+IGNsZWFyIHRvIG1lIHRoaXMgaXMgaW4gdGhl
IHdyb25nIHBsYWNlLg0KPiANClNvIHRoZSByZWFzb25pbmcgaSBoYWQgd2FzIGJlY2F1c2UgYmVj
YXVzZSBpbnRlbF9ndWNfbG9nIG1vZHVsZSBvbmx5IG1hbmFnZWQNCmd1Yy1yZWxheS1sb2dnaW5n
IGFuZCBndWMtbG9nLWR1bXBpbmcgZm9yIGxvZy1ldmVudHMgYnV0IGFsbG9jYXRlcyB0aGUgYnVm
ZmVyDQpmb3IgMyBzZXBhcmF0ZSBzdWJyZWdpb24vdXNhZ2VzIChpLmUuIGxvZy1ldmVudHMsIGNy
YXNoLWR1bXAgYW5kIGVycm9yLWNhcHR1cmUpLg0KVGhhdCBzYWlkLCBJIGRpZCBub3Qgd2FudCBp
bnRlbF9ndWNfY2FwdHVyZSBhbmQgcmVsYXktbG9nZ2luZyAob3IgbG9nLWR1bXBpbmcpDQp0byBo
YXZlIHRvIGNvbnRlbmQgd2l0aCB0aGUgc2FtZSBsb2NrIGJlY2F1c2UgdGhlc2UgdHdvIHN1YnJl
Z2lvbnMgYXJlIGNvbXBsZXRlbHkNCmluZGVwZW5kYW50IG9mIGVhY2ggb3RoZXIgaW4gdGVybXMg
b2Ygd2hlbiB0aGV5IGFyZSBiZWluZyBhY2Nlc3NlZCBhbmQgd2h5Lg0KDQpIb3dldmVyLCBhZnRl
ciB0aGUgcmVkZXNpZ24gb2YgcmV2NSAodGhpcyByZXYpLCBJIG5vdyBiZWxpZXZlIHRoZSBpbnRl
bF9ndWNfY2FwdHVyZQ0KbW9kdWxlIGRvZXMgbm90IHJlcXVpcmUgYSBsb2NrIGJlY2F1c2UgaXRz
IG9ubHkgZXZlciBhY2Nlc3NpbmcgaXRzIGxvZw0Kc3VicmVnaW9uIGluIHJlc3BvbnNlIHRvIHRo
ZSBjdGIgaGFuZGxlciBmdW5jdGlvbnMgdGhhdCBydW4gb3V0IG9mIHRoZSBzYW1lIHF1ZXVlLg0K
QXMgd2Uga25vdyBpbnRlbF9ndWNfY2FwdHVyZSByZWFjdHMgdG8gRzJILWVycm9yLWNhcHR1cmUt
bm90aWZpY2F0aW9uIGFuZCBHMkgtY29udGV4dC1yZXNldA0KKHRoYXQgdHJpY2tsZXMgaW50byBp
OTE1X2dwdV9jb3JlZHVtcCkuIEF0IHRoZSBwb2ludCBvZiBpOTE1X2Vycm9yX3N0YXRlIGR1bXAs
DQppbnRlbF9ndWNfY2FwdHVyZSBtb2R1bGUgZG9lcyBub3QgYWNjZXNzIHRoZSBidWZmZXIgLSBp
dCBtZXJlbHkgZHVtcHMgdGhlIGFscmVhZHktcGFyc2VkDQphbmQgZW5naW5lLWR1bXAtbm9kZSAo
dGhhdCB3YXMgZGV0YWNoZWQgZnJvbSBlcnJvci1jYXB0dXJlJ3MgaW50ZXJuYWwgbGlua2VkLWxp
c3QNCmFuZCBhdHRhY2hlZCB0byB0aGUgZ3B1X2NvcmVkdW1wIHN0cnVjdHVyZSBpbiB0aGUgc2Vj
b25kIEcySCBhYm92ZSkuDQoNCkFuZCBvZiBjb3Vyc2UsIGludGVsX2d1Y19sb2cgb25seSBldmVy
IGFjY2Vzc2VzIHRoZSBsb2ctZXZlbnRzIHN1YnJlZ2lvbg0KYW5kIG5ldmVyIHRoZSBlcnJvci1j
YXB0dXJlIHJlZ2lvbnMuDQoNClRoYXQgc2FpZCwgaSBjb3VsZCByZXZlcnQgdGhlIGxvY2sgc3Ry
dWN0dXJlIHRvIHRoZSBvcmlnaW5hbCBhbmQgbm90IGhhdmUNCmludGVsX2d1Y19jYXB0dXJlIHVz
aW5nIGxvY2tzLiBXaGF0IGRvIHlvdSB0aGluaz8NCg0KLi4uYWxhbg0KDQo+IEFub3RoZXIgbml0
LCBJJ2QgcGVyc29uYWxseSBicmVhayB0aGlzIG91dCBpbnRvIG11bHRpcGxlIHBhdGNoZXMuDQo+
IA0KPiBlLmcuIDEgdG8gcmVuYW1lIHJlbGF5IGxvZyBmdW5jdGlvbnMsIDEgaW50cm9kdWNpbmcg
aW50ZWxfZ3VjX2xvZ19zdGF0cw0KPiArIGxvY2ssIGFuZCAxIGFkZGluZyBpbnRlbF9ndWNfY2Fw
dHVyZV9vdXRwdXRfbWluX3NpemVfZXN0LiBNYXliZSBJJ20NCj4gbWlzc2luZyBhbm90aGVyIHBh
dGNoIG9yIHR3byBpbiB0aGVyZS4NCj4gDQo+IE5vdCBhIGJsb2NrZXIgYnV0IGl0IGRvZXMgbWFr
ZSByZXZpZXdzIGVhc2llci4NCj4gDQpXaWxsIGRvLg0KDQo+IE1hdHQNCj4gDQo+ID4gIAkvKiog
QGN0OiB0aGUgY29tbWFuZCB0cmFuc3BvcnQgY29tbXVuaWNhdGlvbiBjaGFubmVsICovDQo+ID4g
IAlzdHJ1Y3QgaW50ZWxfZ3VjX2N0IGN0Ow0KPiA+ICAJLyoqIEBzbHBjOiBzdWItc3RydWN0dXJl
IGNvbnRhaW5pbmcgU0xQQyByZWxhdGVkIGRhdGEgYW5kIG9iamVjdHMgKi8NCj4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX2NhcHR1cmUuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19jYXB0dXJlLmMNCj4gPiBpbmRleCA3
MGQyZWU4NDEyODkuLmU3Zjk5ZDA1MTYzNiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfY2FwdHVyZS5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX2NhcHR1cmUuYw0KPiA+IEBAIC02NTEsNiArNjUxLDUz
IEBAIGludCBpbnRlbF9ndWNfY2FwdHVyZV9wcmVwX2xpc3RzKHN0cnVjdCBpbnRlbF9ndWMgKmd1
Yywgc3RydWN0IGd1Y19hZHMgKmJsb2IsIHUzDQo+ID4gIAlyZXR1cm4gUEFHRV9BTElHTihhbGxv
Y19zaXplKTsNCj4gPiAgfQ0KPiA+ICANCj4gPiAyLjI1LjENCj4gPiANCg0K
