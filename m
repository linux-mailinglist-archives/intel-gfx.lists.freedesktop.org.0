Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C4C56B75EB
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Mar 2023 12:24:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80B0310E0D8;
	Mon, 13 Mar 2023 11:24:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA3EF10E0D4
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Mar 2023 11:24:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678706661; x=1710242661;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=sOZf36zLD2NZDRS/uf4Q0YFvyG2hiKvZC/tANlq/VR0=;
 b=J1MMRbF44k3FgrIQTJ2s0LxQi/vAkSWo3T9CMlfUUqDpaydGjPASQBQd
 yBSaTEHnPF8CiUdgaMXmpEWOYHwEklChiKfuN8f1d0Hl3mLAqXRTj8s10
 oAkTwcTpm396mHmLiuJeOZhG/zZZSAsPVJkwyn9MmDFTQZ2fyoQpiR3YY
 NHBW754sq/xqOFHoH8Hj3JOUVlpxb97VW3SHNC2Wx9/CN0Xh7I0UhjPyQ
 j0KbLzxtZ1exMDtF67PKJYVwZPfnrhtVY8QTzy5l+IGQmJgKMJxUENw73
 04qRUf/yogx534OCXS1gO1vQ65QlixnwpEHnpRKbSZsGKzoiFMDP1XC1R w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10647"; a="337142210"
X-IronPort-AV: E=Sophos;i="5.98,256,1673942400"; d="scan'208";a="337142210"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 04:24:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10647"; a="681003042"
X-IronPort-AV: E=Sophos;i="5.98,256,1673942400"; d="scan'208";a="681003042"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 13 Mar 2023 04:24:21 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 13 Mar 2023 04:24:21 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 13 Mar 2023 04:24:20 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 13 Mar 2023 04:24:20 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 13 Mar 2023 04:24:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d+AW5vLWjgiXqpi/0ECjl6OatcaCQ/PEh2Jrl0/jPio0V7wVf0nACrk+SJyyugdQX40N3hR87I64gQXmDXzgVVIw6zlekAUg4uRdSxuoIVt6/Z1KVRcIt+xa0hJmnK84rUD+jB0t3tRLfIazPEtF2ln9bu9CQJUJNVn3vEXhMFjbUzKLVL2J0bnOzMldmSxA+B4OcLHfo6N0riBTg0OkJIB0dYyHDt0T1PBBlhXXm1HTVRORKf5X6t0Yv7EN1lyNR76Oo7A0um6L/SfjK7evPKvnWPIsVPpiKG+HqXbMaA7jHDx74rRPFoQT91JSOMIqKo3zhFs9YBZQfip1hKiUrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sOZf36zLD2NZDRS/uf4Q0YFvyG2hiKvZC/tANlq/VR0=;
 b=BcVvY0qoUGsXVGrb8MHjn5ltxbb2xn9A1uR2X6HgnZXsMSX97Lm/+Kee6RK4EuAPkCWkuvZdFn830nTiblCEMYwErUWdF19ywCK7nfvKbMSPDMb30M/L1LHPrSbuaAWEa4zn8e55yOSfa0ZQloE3JWGngm0Kx+JQNV+qjn+itSkaCb6dKAGxq7kPM8nOr5gbIInpDpNBLFDLzimXJXowUG7+LnJxW35MaQKDYAcKIoDfVTJEVeNyXwAbH1HodI4QZ+J3hbLBNhWkhQEzR2rHpuZeeKlHE4rDdjCKMRVtLrunnc1GC+cU5rQluDzBwws8QrQdmYagqX1wi5tkxdlxOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB7073.namprd11.prod.outlook.com (2603:10b6:510:20c::5)
 by DM4PR11MB7328.namprd11.prod.outlook.com (2603:10b6:8:104::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.24; Mon, 13 Mar
 2023 11:24:18 +0000
Received: from PH7PR11MB7073.namprd11.prod.outlook.com
 ([fe80::3c0b:5984:e173:730]) by PH7PR11MB7073.namprd11.prod.outlook.com
 ([fe80::3c0b:5984:e173:730%9]) with mapi id 15.20.6178.019; Mon, 13 Mar 2023
 11:24:18 +0000
From: "Musial, Ewelina" <ewelina.musial@intel.com>
To: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "SCG
 SCSS CI" <scg.scss.ci@intel.com>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBkcm0vaTkxNTogRml4IGJ1?=
 =?utf-8?Q?ild_with_WERROR=3Dy?=
Thread-Index: AQHZVZw7vyWSjHgKCUe/tScIdbSlN674kV2w
Date: Mon, 13 Mar 2023 11:24:18 +0000
Message-ID: <PH7PR11MB707332CE4DA4941D25B9F1A693B99@PH7PR11MB7073.namprd11.prod.outlook.com>
References: <20230313093913.30198-1-ville.syrjala@linux.intel.com>
 <167870533713.1029.7537039656477322671@emeril.freedesktop.org>
 <ZA8EM6TXxenI38Gg@intel.com>
In-Reply-To: <ZA8EM6TXxenI38Gg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: scg.scss.ci@intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB7073:EE_|DM4PR11MB7328:EE_
x-ms-office365-filtering-correlation-id: bdae6561-4226-460f-f57f-08db23b57c2e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ug/PNbiMSUaFxg0TYSBcHm9BDYxSdDkfO3ZYxogsayEMYOaB04vPOgeBZBvzWLfeLhie0NUO1iBJXWx6yklGBrtO/Fn9sUVPR5+/wrZn45wr5kl3zWDamkum2kXk8aQjfk5c4YGbJAv3EdUV3tGP9gZ777Jkw4Mrfr8/XJyEwTOCeNO6O2PmwnMqaYCiZ9ST3lHYbaxHKCS1iHh3MJjzEPhifGnu/T8P5d8a1wzPvcmdK9PN+0vznMJJYrNNgoEFYZk2IJa634bMXvfV8YiFnnh1pG733YUtQ67u4WgJrw7j9Ndgr7fpGTYEqh6N/LqXKnpt6Crv1Z8Lowm7597AuQ9vSmvZ24Rg4kVwSd+DlgGmeVF1aXzBlWG2Tgk9HXt+vsfjCbKvl+P4eJ4VZNMk7whBePxkyof2zkhbJEb8G4lNhhtRlkh0/ziug1xRYdKQBBdkmaBVz/IXoB6RA2HXLDo31WmzL3TQl9+GherNydyVvqEVfo8r8idvFsd6MK7t0oou1gxSP1sk03cyuD7F5G21q1bzigmgrhCvWCoFDR/XL/zcjn4tavtq0TZHXCyPH2XVQVvS/bTWcqWcgbCe5uE0ZZj/0Cwr5YLgVMu8aZe5zEStGCnvbZPYZ3Rt/4TDobkHuF/RCjrZ51f0F0WJsQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB7073.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(136003)(376002)(346002)(396003)(39860400002)(451199018)(7696005)(5660300002)(82960400001)(83380400001)(110136005)(38100700002)(316002)(478600001)(122000001)(6636002)(66574015)(8936002)(52536014)(33656002)(55016003)(186003)(9686003)(71200400001)(6506007)(26005)(53546011)(66476007)(66556008)(66446008)(64756008)(66946007)(76116006)(41300700001)(86362001)(38070700005)(966005)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UUZaUEtaei9ZeDM3aTQyUFhHcStINXMxMEdXRE4vRFUyN1AvU0htTGFKaE85?=
 =?utf-8?B?dHl2emZObit5Y29jRFFGMWZjYmJ0MzQ0ekdQRkEwazJnUlBDQTcvbHFGaVh3?=
 =?utf-8?B?WVdZNlFLVE5pTjlWdmhDbGxLbHdxWUFjL1MzakNlWXlUZVc5cEw1YnZpcHBn?=
 =?utf-8?B?MHhzaUxtY1BMVE5QaXFUNklXUzVoRUMreGNOeWlwTzFpMVo5VnBXQVVPZjNh?=
 =?utf-8?B?Mm9DcXliK2dwcmQ4ZmtQUXVkTCswMkVZSmVPQVdNc2ZsS3oyWm44d0cyeDJi?=
 =?utf-8?B?OEFhcXFUQ0FxVFJkaFBsMWRXUnlxRi9mczlyOS9tQStiV0JiUU92RWduNzcx?=
 =?utf-8?B?ZnplRXhudjQvRktJT3JBWDJzNnZZQ2hjRjVrdU9Qb2xxTy9UeTRCNkRXeU0x?=
 =?utf-8?B?WGtjQ1hvc01uWUFzd0tDYjFGNnpkN0xHK0dCc0dZclV5bmdBRFYwNC9KK1Q0?=
 =?utf-8?B?UkFTU2c3eHVGaCtFc25PYW8yaEFBT1U3cms0amZ5cHcrcmQ5cXZHS25oUk43?=
 =?utf-8?B?c2NrMzF1VHc1elVDOW5VTDRJeGYyckl2YWNiMGM5SmRsQ3lPRVhKQnNNbjd0?=
 =?utf-8?B?bnh2cFFJMXdYUW8zckdyQ29RSkhDblp0TUJiQ3FTSUlvdkp0bnZ5eWNMVXZX?=
 =?utf-8?B?OTFuMno5SmVHQXBBOEtiYWMxM1FHYWRMcXdjd3BLbzUycnZUeFowaXV2ek9J?=
 =?utf-8?B?MWUzNUx1S1hyV05LcU1ubXFZeUptWEV0cXBtZ1VlTEp0ZWt3MjUwQ0ZmTjBK?=
 =?utf-8?B?VkdHcHpWQXk1Q04yRnlMM0dEWDJJTkJOZnI1Y0FIRk5XclF2ZEtOVXdCV3F3?=
 =?utf-8?B?ekxsZitjZ1g2aE1MeGsyWWtCTjU2aXMyR0dqc0hxL0RCY1RzVlJSRWV5eDB6?=
 =?utf-8?B?Q1E2ZElWdlVHMFVKVVpkQTg5VjFUYUw0VjM1SEE0eUU0ZGRDcFNlOU5aTng4?=
 =?utf-8?B?cHNZelpGZ0ZSR3lxWjRZVlJHeUJJYnc0dU1KU2FoMmhUOXBucFBLVllWSlUr?=
 =?utf-8?B?bk9SeW5WNjFNTlZiWFlHVUpQMWNlZXJYc2V1TENjTEJuVERzWUtrSk5pVEdk?=
 =?utf-8?B?SmJHVk9jZWNnK0lYN0pWdDJwN1RZRUpmM3NkVDhXd3FVRENiQytxTWNrek5r?=
 =?utf-8?B?N2VuTnhqZjVBOHpoVlZ5OVoxczlhTEtXSXlSTUZWalJua1JEQm9uNGwyTVVw?=
 =?utf-8?B?a3VGK0pULzd5Y2svZzV3R3o3YUpLK3prSk5VdmtEcHNXQUduMEdMUXd2QXNI?=
 =?utf-8?B?dTFiZkdDRHBTTTRQT2NpeG4vcVRhY0RMQXdIWXZBTnRkeWFmejd1MlhFZHBQ?=
 =?utf-8?B?T3cxMHlkeDdyNmNFYUtidmhkdEZ0dk10bVdLeXR3YmxXSTNaOWJlVWpmaXFp?=
 =?utf-8?B?c1B1SFlaeUlGTk9hQUJUQ2F2c0F2VGJRZWEwSTR4WEdXbFZGUFFMSUpaQXN0?=
 =?utf-8?B?SkM5MXg5eFlGcytzN1VlM1k2aGNhTUZXenRjYm5DdG1GVGd3a2FEYlQ1Yk45?=
 =?utf-8?B?bGlGUnUyRHpBdlVMNVVvOHN6TTNxUlRDRTdZTlNidTY5VXlyT0ZaQ3JzUFZr?=
 =?utf-8?B?SjZxc3VMRHRsVVp2RWFxRDI5aXprWWl1enRzU01oKzRMQ0MrbVJNR2hSQlJa?=
 =?utf-8?B?RWNpYml5dnp4RXpheWIxRXpzZnRTVnJSM2lNVngwTE1LVkFDTXloZ1g3enRq?=
 =?utf-8?B?Nmx4cEVFa3JJQ21aT1NxT3JVblhlTSt3MWJJbHpqMVZoLzVjWWhrVHV1WXha?=
 =?utf-8?B?bkpncTJKVFp5Zy9ueVUrWTZ5OHFJSjRsSE1QVThmZ1VhSVNxQm8wM1g5d2Qz?=
 =?utf-8?B?Y2R1cDN1ZnRvek5UT1JQYXJxc1JsVENMelcwR2lQTVJDQUprTVk5L1FGaytE?=
 =?utf-8?B?aExyNEpPUHBDZ1VIaTBOZ2ZzWjdXMGJaS2M0OGthcWRqSHdPWHAwcWd4YkJH?=
 =?utf-8?B?UEZkaFV0TlFTM3ZoN2QxT1JVaHJmSDQxaTUrSW96VG5pT00vMWxQMmF5OThJ?=
 =?utf-8?B?QVdFV3kyWW5vdkJ5NlZNUmtwd0czYXRyS3hUVlQxcmp2ZmZmV1lsVHZkYmYy?=
 =?utf-8?B?ZmcrZFZtQUZnWFNiR29lSjNOdmFMb3M5R3E4cWxFdUl4ZmFLbmhHOWZndmVN?=
 =?utf-8?Q?HBSM5sX3xZW34gIbgTbkiJprA?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB7073.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bdae6561-4226-460f-f57f-08db23b57c2e
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2023 11:24:18.2249 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rz4AfNcK2ZWadpzZWfyYRHXodv18AkORtYefEYz471pXz2Q9JHiC8IdhWPQBcFEjXHN0Brmkl0g+Z3VIMqr/CTyQFEZBawDs7nb3kJ0WJrE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7328
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915=3A_Fix_build_with_WERROR=3Dy?=
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

QFNDRyBTQ1NTIENJIC0gcGxlYXNlIHRha2UgYSBsb29rDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2Fn
ZS0tLS0tDQpGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPiANClNlbnQ6IHBvbmllZHppYcWCZWssIDEzIG1hcmNhIDIwMjMgMTI6MDkNClRvOiBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQpDYzogTXVzaWFsLCBFd2VsaW5hIDxld2VsaW5h
Lm11c2lhbEBpbnRlbC5jb20+DQpTdWJqZWN0OiBSZTog4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJl
IGZvciBkcm0vaTkxNTogRml4IGJ1aWxkIHdpdGggV0VSUk9SPXkNCg0KT24gTW9uLCBNYXIgMTMs
IDIwMjMgYXQgMTE6MDI6MTdBTSAtMDAwMCwgUGF0Y2h3b3JrIHdyb3RlOg0KPiA9PSBTZXJpZXMg
RGV0YWlscyA9PQ0KPiANCj4gU2VyaWVzOiBkcm0vaTkxNTogRml4IGJ1aWxkIHdpdGggV0VSUk9S
PXkNCj4gVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzEx
NTA0Ni8NCj4gU3RhdGUgOiBmYWlsdXJlDQo+IA0KPiA9PSBTdW1tYXJ5ID09DQo+IA0KPiBFcnJv
cjogbWFrZSBmYWlsZWQNCj4gICBDQUxMICAgIHNjcmlwdHMvY2hlY2tzeXNjYWxscy5zaA0KPiAg
IERFU0NFTkQgb2JqdG9vbA0KPiAgIElOU1RBTEwgbGlic3ViY21kX2hlYWRlcnMNCj4gICBDQyBb
TV0gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLm8NCj4gSW4gZmls
ZSBpbmNsdWRlZCBmcm9tIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRz
LmM6NjoNCj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYzogSW4g
ZnVuY3Rpb24g4oCYZGcxX2d0X3dvcmthcm91bmRzX2luaXTigJk6DQo+IGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmM6MTQ4MjoxMzogZXJyb3I6IOKAmGk5MTXigJkg
dW5kZWNsYXJlZCAoZmlyc3QgdXNlIGluIHRoaXMgZnVuY3Rpb24pOyBkaWQgeW91IG1lYW4g4oCY
dG9faTkxNeKAmT8NCg0KSHVoLiBJIGd1ZXNzIENJIGtlZXBzIG9uIHRyeWluZyB0byBidWlsZCBh
Z2FpbnN0IHRoZSBsYXN0IHN1Y2Nlc2Z1bGx5IGJ1aWx0IGRybS10aXAgdGFnPyBCdXQgdGhlcmUg
aXMgbm8gaGludCBoZXJlIGFib3V0IHRoYXQuLi4NCg0KRXdlbGluYSwgdGhpcyBzZWVtcyB0byBi
ZSBhbm90aGVyIHBsYWNlIHdoZXJlIENJIG5lZWRzIGltcHJvdmVtZW50czoNCi0gcmVwb3J0IHRo
ZSBiYXNlbGluZSBhZ2FpbnN0IHdoaWNoIHRoZSBwYXRjaCB3YXMgYXBwbGllZA0KLSByZXBvcnQg
ZHJtLXRpcCBidWlsZCBmYWlsdXJlcw0KDQo+ICAxNDgyIHwgIGlmIChJU19ERzEoaTkxNSkpDQo+
ICAgICAgIHwgICAgICAgICAgICAgXn5+fg0KPiAuL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZHJ2Lmg6NTU5OjQ1OiBub3RlOiBpbiBkZWZpbml0aW9uIG9mIG1hY3JvIOKAmElTX0RHMeKAmQ0K
PiAgIDU1OSB8ICNkZWZpbmUgSVNfREcxKGRldl9wcml2KSAgICAgICAgSVNfUExBVEZPUk0oZGV2
X3ByaXYsIElOVEVMX0RHMSkNCj4gICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIF5+fn5+fn5+DQo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X3dvcmthcm91bmRzLmM6MTQ4MjoxMzogbm90ZTogZWFjaCANCj4gdW5kZWNsYXJlZCBpZGVudGlm
aWVyIGlzIHJlcG9ydGVkIG9ubHkgb25jZSBmb3IgZWFjaCBmdW5jdGlvbiBpdCANCj4gYXBwZWFy
cyBpbg0KPiAgMTQ4MiB8ICBpZiAoSVNfREcxKGk5MTUpKQ0KPiAgICAgICB8ICAgICAgICAgICAg
IF5+fn4NCj4gLi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oOjU1OTo0NTogbm90ZTog
aW4gZGVmaW5pdGlvbiBvZiBtYWNybyDigJhJU19ERzHigJkNCj4gICA1NTkgfCAjZGVmaW5lIElT
X0RHMShkZXZfcHJpdikgICAgICAgIElTX1BMQVRGT1JNKGRldl9wcml2LCBJTlRFTF9ERzEpDQo+
ICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBefn5+
fn5+fg0KPiBtYWtlWzVdOiAqKiogW3NjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6MjUyOiANCj4gZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMub10gRXJyb3IgMQ0KPiBtYWtl
WzRdOiAqKiogW3NjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6NDk0OiBkcml2ZXJzL2dwdS9kcm0vaTkx
NV0gRXJyb3IgDQo+IDINCj4gbWFrZVszXTogKioqIFtzY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjQ5
NDogZHJpdmVycy9ncHUvZHJtXSBFcnJvciAyDQo+IG1ha2VbMl06ICoqKiBbc2NyaXB0cy9NYWtl
ZmlsZS5idWlsZDo0OTQ6IGRyaXZlcnMvZ3B1XSBFcnJvciAyDQo+IG1ha2VbMV06ICoqKiBbc2Ny
aXB0cy9NYWtlZmlsZS5idWlsZDo0OTQ6IGRyaXZlcnNdIEVycm9yIDINCj4gbWFrZTogKioqIFtN
YWtlZmlsZToyMDI4OiAuXSBFcnJvciAyDQo+IA0KDQotLQ0KVmlsbGUgU3lyasOkbMOkDQpJbnRl
bA0K
