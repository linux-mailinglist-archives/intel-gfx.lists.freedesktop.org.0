Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 32C2663D7CC
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Nov 2022 15:10:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B29C10E46A;
	Wed, 30 Nov 2022 14:10:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9117B10E46A
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Nov 2022 14:10:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669817438; x=1701353438;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=mCl9oO2+JfHTzChGGjbDddl8WcXHNUA8IOPvb+PQaFE=;
 b=I9VtI+CzeeoICBrxmSnJT4uukop9IT6dspb/OV14z5dQ+UAOXblUrTOM
 uGVzfcVHnLLNsQGGBxw89BnkaEGB4PBbji8vXzrI7FVPD4joSG1WjlER4
 g/9u6jMKcwtFLKTLpIVHE/7hINqMeHRhUvWELieJVG2vEMkW3EF3opOI2
 wa+G+zJWaub1Naw4msELDBRnP6LZ0TD/kQ6XpNRj/Shhm2eYYTIymkIzG
 haCSjAS6k3aj42kOcCFsTTnMoL93TcneH5iMUT3JGWLwW0xyWIxTEwsa2
 ycvLzs1metaDd8MOWebQH6wzdOymL9Kb4pFehQ/nz6fkN7v2oOotBZNLr A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="315430871"
X-IronPort-AV: E=Sophos;i="5.96,206,1665471600"; d="scan'208";a="315430871"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 06:09:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="818639849"
X-IronPort-AV: E=Sophos;i="5.96,206,1665471600"; d="scan'208";a="818639849"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 30 Nov 2022 06:09:56 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 30 Nov 2022 06:09:55 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 30 Nov 2022 06:09:55 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 30 Nov 2022 06:09:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h2zvxfNGUz73Fjq8mMDH0V5eOcFCy41U12JhJmSkGWBnlm1UlEseHyWGsR0Vzf49w4R/F90+bauOlPPclHRVTposByLTB5VBszCdsgaEOnlLmt5u8OoxREdD6K1KahxSegz/9GqQb9lymcQpDtlOJ3eAyMskb+DmTPs5dAgvBC8RnoAuYXj3as2re+mYEzwP4BvrimdQO7RTkXv0Wku18xKyvMQerdIUH6o8VLQREosdTV+Xuh3dsuU7Dl++7SS2glDb7+TSRg5O8gp5YMgCX0pRmS3Jij3UvT6EAQGM+9soEyWLaAW6xjtNPng5MRicVigF3cKv3s1/uurgIA+a0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mCl9oO2+JfHTzChGGjbDddl8WcXHNUA8IOPvb+PQaFE=;
 b=HUS2Oacva0cHPrsw8HmBEZeAVq1KPSX0IMu6acm/gKuH+l3gTW9FGAkbu5rZoc4j9T2hY+H6LWlgAfPG9t1B0nEp1ExZwqBUqeUBG9b2jI0eP2chNYFw7wepLxrzjX1Pw9u6QLLO5BFuKRWLMpeY9mDJflUiCWUX2uo5Mr49KVMLvExijXiwZDUrdbUt+sLbZvWMaDLZgoRO5i9KkZXoh215PSWgNUPq1WpJmP895cRsKPy9vJMCGLmTig+53dUiY29qKu0WfPSfbMp4ikOhEnj6MlvXnVRCmN5ZvwEXs2qIjwAe/ZrhAzOVXBEbzgS0WWhnazJD3TGa0HhnWN/ODQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CH0PR11MB5476.namprd11.prod.outlook.com (2603:10b6:610:d7::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Wed, 30 Nov
 2022 14:09:54 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::f4b9:901c:6882:c286]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::f4b9:901c:6882:c286%4]) with mapi id 15.20.5857.023; Wed, 30 Nov 2022
 14:09:53 +0000
From: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3] drm/i915/dmc: Update DG2 DMC version to
 v2.08
Thread-Index: AQHZACDk2sV9hD3pgEKU87k/SMU+Dq5OQxUAgAk/yQCAAAe0AA==
Date: Wed, 30 Nov 2022 14:09:53 +0000
Message-ID: <18fe7c7b04c38a5462f31af4a513812c398ec11d.camel@intel.com>
References: <20221124162123.16870-1-gustavo.sousa@intel.com>
 <20221124162740.ee2yu4asowpzfgpl@gjsousa-mobl2>
 <20221130134218.eyp4ax2iwbv65prv@gjsousa-mobl2>
In-Reply-To: <20221130134218.eyp4ax2iwbv65prv@gjsousa-mobl2>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4 (3.44.4-2.fc36) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN0PR11MB6059:EE_|CH0PR11MB5476:EE_
x-ms-office365-filtering-correlation-id: b04aeb6e-d841-48d5-e544-08dad2dc8dbf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vHKKdwMLCdUtLtEFSZRsfaY5sOUQGd2UBrv3ASI4hGWVibjF4dvrJhAdfm+4g2dlVfkuO23wNGKMg9JrunrJ96JInXk/rOsGj9o+COS0gIPi/UpKf4RadaerqxpI7IHVmLP5KhoBA8kKZksEDY143fbxhlP2ud3HthnPTNXOGwVUauqF3KmTowYdYbSINxGILxU0nbfC8V+LJCMY232/Szphm7FufE7guXGeQz4PXCxrt5LFTMpP5FKFsoLPeK2E/Z3ugQZjwFA99aPjjabdqox5qeuaCeE2DKeBo1u2rccGKxxH/KOVqj4TxwiUaKKJg9YIkfHJHXooB6m/2ncRxwZPMy6D4uYKXPe1ThOEcDVeoNvUgalND767kkSEWbce+2pkAJpobNnEHDy/5jnWMupBjTVXyMQSUAFt/NsApS21+5UFvUN6bdZUk28H2dGqE/ECMXoI06khEiToALVqICd1EFckQQAe39ubKEU1O+o5Oft4NPhz9xqyPLx5uDSeZhvCDWZY12+Er+HR5Md33O1BUwu6pnzmMLuPW9S2g3ob07jy5WZNDjJ7snhEVa5PhcIbjYFXc1dLSm1Ni264wo41zZdcU42k4342yLMf/I7iZm2p9GowI07CeRJAIisiKp83JpABXHGkOnhFdF2YgwGHlwdvQr2jEIfYQrctYgrgR0GgKcIB6Qf1efRG1VM09t1qqZNOLdH9QSN2y/AuSA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(39860400002)(346002)(136003)(396003)(366004)(451199015)(316002)(4001150100001)(478600001)(2906002)(91956017)(110136005)(6486002)(66946007)(36756003)(71200400001)(76116006)(26005)(122000001)(38100700002)(82960400001)(6506007)(2616005)(6512007)(38070700005)(86362001)(186003)(4744005)(5660300002)(41300700001)(8936002)(66556008)(66476007)(66446008)(64756008)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MDhBVGdwOEZzVk02UUVZT3dMSzhGUDR5V3JLYmRVOE9xR1Vmay9aYXlQaTVQ?=
 =?utf-8?B?WlBXaTBMd1FoWHpvbkpLOFVCUFMyTEtGMEhtaVBiTytTU3BiMmdyNG5nMHhu?=
 =?utf-8?B?cFpva0p4NDYyaWhLRWt5Uml6cTJ4c1JBcjZRM0pSbWZHWlBNY0EycFBjNmkw?=
 =?utf-8?B?OHMvenJEY28xT2ZNU0dMOEpOdHdWcno1V2pkT2N0SlhmUUVWdzJGN3pEVngz?=
 =?utf-8?B?V29tNWdWV0VmZVptTkhqN0VGWmJ4R29tbFNmc0FWRnFGQnRQdkRXSm5BMTQr?=
 =?utf-8?B?VVBPd2ZvUS8rWXJmSk9sVXR1dkhneHVibUdXN0MvOEV1bllnZUtDbW9kVnBj?=
 =?utf-8?B?dDZGWS9sYllEZ1JFbk9lbG43WjV5MENTYU52eUp2b2EvTmEyMFdGZGpleHor?=
 =?utf-8?B?MXp3V0JCTjllbzRaeTBTV1Jvd1c0YnBZUFFTRmkrV00zYkFpYlBVM0o0RWQz?=
 =?utf-8?B?SEMyazhpNFZGZGZCZzBCenZNUEpBS3JEQUJNT3MxWktQamQyVXdQSHE4aTYv?=
 =?utf-8?B?OW5MdWtaV2JsQTd0Q2NVSEllSTRKWXM2OTNzNkhWYjJaZm5TNTcyOC92bldr?=
 =?utf-8?B?Q1E0NktpODRKTzVybldYZEZtcWZpaHl3cHpoWDE0alhSamE1azRmbGtOVm1p?=
 =?utf-8?B?MnVqd3B4TGRVMGc4RFFmNDdUdURNcmN5ZzlKOXNpY0lFcVQ1WHh0Zy9Fa0dI?=
 =?utf-8?B?aU92Rmk1dWdZMzhMM1RZRjdSSnJJWUF1bHA2K05DYkFxRnJNTzhvazdKOVFN?=
 =?utf-8?B?WlJjZmtSck4wb21XZWhhMng2dzdoTmN1azZEeUJUTmcwdngxcmM5RzJTZFB2?=
 =?utf-8?B?OXVUVWRUQThFK2pyWkRSKzlFaEQ3ZXdpRGdrblJTNWRRNmMwZ2FlKzVRc0JY?=
 =?utf-8?B?bWpxOVFRckxlNGJFZ3hHUUdySGJCTVRuMUtDTFhzaHFFcHh6dmVyM0VQck0y?=
 =?utf-8?B?UTUxOU1LMDlMK01nZjcza1lpeUM3Njd5TERDWUtwWWU3eW9TeWpSTXZIeUJw?=
 =?utf-8?B?eEdWVnhCS25kYzRueTFMWE9mYkRpSHJJekg0emZiTVI2UTl3SFhwcWtvM2NZ?=
 =?utf-8?B?bnNNaHA0RGtURVorWWJXWXJVTjloOW5JY0JhOC9ocHdUa3cyUXNaRGp3K2N2?=
 =?utf-8?B?TE1KRXBvdjNaR3Yva0ZlL1pVUitNMDdMMEp2SXVvZjlESEtHN25wMzNnZG9B?=
 =?utf-8?B?Mk1Jays3dWlsN3pRQmROcEJnOEpySW1KcU42ckFJQTlVUk9UVVdDNnVxNlhG?=
 =?utf-8?B?OGpGazJQSjVSeEtTVmlFTkVlNlgwcXF5ZDAvRHp1Vkc0djYwZG0xeFhHck1y?=
 =?utf-8?B?L0VTTlVQNTFQKzlpZ2ZPOTdwRHR6S1A4NU5zTU5rRUh6UUE0eXFEcnRDbWpj?=
 =?utf-8?B?R0x2bDlqYlZIUGNUcUpjUU1vTzlmZ2VjWGR1VzRCWHpxUy8rMC9hc1R1RUpH?=
 =?utf-8?B?TVNOMVZWNmRaNjBYMFMydThMdVJuelo3VzJNNXk0b2k0a3RQRXl1Zmt6VmF2?=
 =?utf-8?B?R2RYcjFwWlpGZU56bGFKU0NUZitDOXN6bklEamFjbHp1aUdEalNBOTRoczg1?=
 =?utf-8?B?Z3VKTW1tMkdZUC91Q3p3V2M3UzFka0c5OFIxQkVOTmJSbms1SGFBQ1RDRVMw?=
 =?utf-8?B?MEJaYnd4L0FoNmxVRStxRWlldnpPUS9uMGtwSzVtM0pta3pEUkVxZzJFK3dP?=
 =?utf-8?B?RktwLzNQNnJqT21NODdNdDdMdnh3ZkxBSmM3LzNFOENsNUxndFliY080bzdU?=
 =?utf-8?B?UWNZWWtjMjFEQWdkRWdJWGE4emFpOVVlNHpHeGR0S1lXaDZXd2xCRjR6OUZN?=
 =?utf-8?B?b3NBdDl0TFJaVTVwc0R1WExNdEhadnh4SStPOUFPT1crcWVhcDROUXRBbk11?=
 =?utf-8?B?ZXhQeUtmREFYVG9VZXdIN0M0MEFaL0FBM1JEZDhyZHZmbE9tcit4VEJaUWEv?=
 =?utf-8?B?aEYzT0lJMTNCbEJ5RDU4Z2lTdnF0eGpabWoyRlJMVmpuMWhHVzRQT2RYazVN?=
 =?utf-8?B?YXUrMlM5OHNMVTBISUowbXVhMXNhem1JSWI4dnZMbC9nS2tTQlFpc1BPQ3g4?=
 =?utf-8?B?eHpSUUhQTk5CZFlGRUQzQTR5eFp0OGM4R3d5Mm9VWlpLbTk2NlNFVVozNEJu?=
 =?utf-8?B?eVN1TUsyVERjblBKazJSK1FRK25oUXVwSXNxa2MrVlBJazRYN2N6VUdMOEJ6?=
 =?utf-8?B?d2c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <C97AD2A2EC76A04C9C28B97F9CFF26A5@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b04aeb6e-d841-48d5-e544-08dad2dc8dbf
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Nov 2022 14:09:53.8522 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7eHk+BP96fghPomqfVQyMrk2EkbRpr//zKpEk+/hEzprylsC/soOBj7myfaUwHaG5c0GbMVAZMT01BvCWtsdZQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5476
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/dmc: Update DG2 DMC version to
 v2.08
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

T24gV2VkLCAyMDIyLTExLTMwIGF0IDEwOjQyIC0wMzAwLCBHdXN0YXZvIFNvdXNhIHdyb3RlOg0K
PiBPbiBUaHUsIE5vdiAyNCwgMjAyMiBhdCAwMToyNzo0MFBNIC0wMzAwLCBHdXN0YXZvIFNvdXNh
IHdyb3RlOg0KPiA+IEp1c3QgYSBxdWljayBub3RlOiBmaXJtd2FyZSBQUiBoYXNuJ3QgYmVlbiBh
cHBsaWVkIHlldC4gV2FpdGluZy4uLg0KPiANCj4gRmlybXdhcmUgUFIgbWVyZ2VkIGludG8gbGlu
dXgtZmlybXdhcmUhDQoNClRoYW5rcyBmb3IgdGhlIHBhdGNoIGFuZCB0aGUgaGVhZHMgdXAuDQoN
ClBhdGNoIGlzIG5vdyBwdXNoZWQgdG8gZHJtLWludGVsLW5leHQgYW5kIGFscmVhZHkgY2hlcnJ5
LXBpY2tlZCB0bw0KZHJtLWludGVsLW5leHQtZml4ZXMuDQoNCj4gDQo+IC0tDQo+IEd1c3Rhdm8g
U291c2ENCg0K
