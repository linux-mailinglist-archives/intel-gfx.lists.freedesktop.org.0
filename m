Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D270C4571FC
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Nov 2021 16:45:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C231B6EB92;
	Fri, 19 Nov 2021 15:45:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98A746EB91
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Nov 2021 15:45:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10172"; a="297849956"
X-IronPort-AV: E=Sophos;i="5.87,248,1631602800"; d="scan'208";a="297849956"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2021 07:45:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,248,1631602800"; d="scan'208";a="551106047"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 19 Nov 2021 07:45:55 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 19 Nov 2021 07:45:55 -0800
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 19 Nov 2021 07:45:55 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 19 Nov 2021 07:45:55 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Fri, 19 Nov 2021 07:45:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YdNrc9Wl4xmeFf8a5er/f/tjtmAqj3Ij6mbqZFLc92mRt2x/5i790hnF3qF6wBEaEY3I6sdrhW/j4KGRpfVsmNHvLAAb2VanVTaPYBi5ZRQ/3orcJRgkFhMVT6mwMXfJ1zAaARRyn+e+80drsFvk8YlHDuOK1kX+Ocp2ME2QJhVln4heVoEeLjWJlr2jFezf5Ye3BP0MwdG6m8Tv9Vz2p86IvIJiZaTKSuTKOZbpjaFUQM2+zMlfM9hlqFjVyOFfYB8rEaHnenn3qHw3k4mOnE+Wq1yRzu/nYCXvFZvUABGzC/Qs6e/GLlFFdDjN1itrzYwg1Sonr7Pjwwuox96Hkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C7LNQTbWLLOZWfbWjgbBkhs+AR6dTEpyxaHR4Eie07Q=;
 b=gAcH+GbNK4n8c2MxR17Zl6HurH+l/dg8Cu3BdFfrlbAZeORFfTbUHE/7binnh0R+S14fmNv7XQLnIem+Gjq3paDZSk2zBPIaX1uaLaXk7t5zpbPB+HMMVU9UrerQnakprp9Ktmr8KsyH4m2N6ani2S9m6zQ9dEnAiySWVwJpGqE1REm61+COLxDfwx5RoYEPFoksve0GqaxwuSTmcGi985+5d0PEJjBK5mVt2haGZ3t5q5p+DgB4vFKHU+RM6Lp7I8fOJ0+Zrc8PLGWxWwGN5UkGiPg4r298nvS6Ws4jLwmu98rBEV7mGf94bHC+oLZa6ntefmQ6zVZx8Bat3mo63A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C7LNQTbWLLOZWfbWjgbBkhs+AR6dTEpyxaHR4Eie07Q=;
 b=YPgxsQRPdezVvt5GMIYHW+hw6WWrytB+s/wuUtxxBNfOqmOYIyN67cap2KTP+qlS5GV3ejj0lBuJlVZDwAOXenk4RzhvIkq3+z1+6Ox/pmmenaaNcIfAndMZgdhE05W7akCJG2XTyM5MPO+ZnCo/qtq8MFYE77OozettV1+n+4U=
Received: from CO1PR11MB5169.namprd11.prod.outlook.com (2603:10b6:303:95::19)
 by MWHPR1101MB2142.namprd11.prod.outlook.com (2603:10b6:301:56::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4713.22; Fri, 19 Nov
 2021 15:45:51 +0000
Received: from CO1PR11MB5169.namprd11.prod.outlook.com
 ([fe80::fd14:4e67:a33d:c0ad]) by CO1PR11MB5169.namprd11.prod.outlook.com
 ([fe80::fd14:4e67:a33d:c0ad%7]) with mapi id 15.20.4690.027; Fri, 19 Nov 2021
 15:45:51 +0000
From: "Tolakanahalli Pradeep, Madhumitha"
 <madhumitha.tolakanahalli.pradeep@intel.com>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>, "Deak, Imre"
 <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 1/1] drm/i915/dmc: Update DMC to v2.14 on
 ADL-P
Thread-Index: AQHX3Q8sLsLKWw8QqUKJmIcGmieHlqwK0CGAgAAj0QCAAAr+gA==
Date: Fri, 19 Nov 2021 15:45:51 +0000
Message-ID: <ed14fbdf5079f3637f4f957c507405aca9ee3cf7.camel@intel.com>
References: <20211119063128.67366-1-madhumitha.tolakanahalli.pradeep@intel.com>
 <20211119063128.67366-2-madhumitha.tolakanahalli.pradeep@intel.com>
 <20211119125819.GB387086@ideak-desk.fi.intel.com>
 <dcb5383612264caaaec8243099ca691f@intel.com>
In-Reply-To: <dcb5383612264caaaec8243099ca691f@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.42.1 (3.42.1-1.fc35) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 382251eb-02bf-4b14-2822-08d9ab73aa51
x-ms-traffictypediagnostic: MWHPR1101MB2142:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <MWHPR1101MB214230B436A6DFD7D12E0C3BC79C9@MWHPR1101MB2142.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lVOhEtQCaLEZ1+i2iPBI37t+W05DfAcnZG1Sa9Vdj1Iftj+3v2GFucNIHcR1RdAld80wsxU3nLDiXl0Pi1i3UW0Q+mLOo7Zu0qMwNS2x2Zu+EnwHi/x9eYAYcpON9Kca8loyeUzMjjuqZJcGDKPpXSaeeHbKQ6Bx4LH09F+GAzFaAz+v2l2bP3/5yX0SSKNMbZnyMWmSMpxqjrVU/bVhnGvZIstFE575QGRl5/x2/rSDWxr5rZt123WLi9ee9kaKooejOsVBCQ1NVAZN61Bv/6taWhFlyVe/BbAKmmVSj0k84FP1AE1Gnm+AbiwiUnWWtctaZyhaeE8LbC1uISvrjZETk8kU+4R8F/FHvQA/jhCanHkwwSQHSDMjt5HLgc0oOB7cy86iwlzMWmiFXTsfV8LVx4+oevERMXHKkxV7OLx9NwJCfrREmrjt9XbVFO272Z8mi/e11upSDqA7J6+c9tbqcBCFc+CrKlhjPWDgC26pflFZJW5506BWcpLYwnPTHYdznzO6VfwEI3k0Lpj0Pw/oHhWVUnDE/lPJYni/+DtkMXp3N5s93wTiKZu9P9Q1z+niUGLZ9PQBhu1bwDvzMjjYQW5IuHELjUWo5n6eCKff8chgMhrR5aP/hsgKNvLvovQ0jTkDfvk2V5UL5UYtLWcl2sjZ9g2l0a1BguYb75G5Wcm+oO6LF/bTRrEujOgWyjGS0OktYH5oUIjfYSV0ig==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5169.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(6512007)(71200400001)(2616005)(8936002)(508600001)(53546011)(6506007)(186003)(8676002)(36756003)(4326008)(38100700002)(86362001)(122000001)(82960400001)(66476007)(66556008)(64756008)(66446008)(83380400001)(5660300002)(66946007)(6636002)(15650500001)(38070700005)(316002)(76116006)(110136005)(6486002)(4001150100001)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?N3VESXEwSUZjdXYxR0srR09SZjY5dzB1MnlLa3pqTnJxSXRmWmg0dVZVc2Na?=
 =?utf-8?B?bTFUQjBGdThYcVZuQ0pIM3VoZzdHaWk4eTdqS0szNUtuckxsenZYejdxS1BF?=
 =?utf-8?B?Q1pZYUExRmN3bW8wTlZhRHlPRklibnRKN0FZYkJScWVTK041UG82L0lxMGZy?=
 =?utf-8?B?aXVCdnhZSzJvTUpaTHRIRXUxTllaMk9vNkJuY0xxVlhrS1pCN1NqSkJWeFdE?=
 =?utf-8?B?TlFQdE5tZm1EbEIzWEZGamwvNGR3dFRjREJRY09pdFFhc1hRR2RIelhmckhn?=
 =?utf-8?B?SWZmbkZjMjFROEk2Nm05ME5OOGR1RzF0dHRqM1h2WkZQcVNNK0t4MjBXMDZr?=
 =?utf-8?B?bnR5UnFBVEFMMTJvdGY2bUEyWENheFhyc0FOMCtJRGN4cERZcHFzdTJJMTVz?=
 =?utf-8?B?TlVuN3hwd1RIRWtxL3c5RVdmSG81WitCellzRE9kK1grQkVqV0Fxa3FxMzRB?=
 =?utf-8?B?Z1JpdlJVazZYc1NiZS9ESHl4MllEaStXd2tpY1FwRXZDRFVCdHdsV3VXYlAw?=
 =?utf-8?B?Tjc4Ukd5eXBuUDBOYk5SQzZCcTJDUlJoVHBpK1p4eTN5YTVVMGp2b2t4N3pP?=
 =?utf-8?B?YkhpY0swSW5SV0YwemNtcDUyMFlJUmFWUjgxNnczamRJM1pTYTBPSVpscVBr?=
 =?utf-8?B?S3NPUWp6b3FPTXlUVmpqOEhad2l0ZTZlSDdzaU8xNkU5akxFOUF0UnU4Nzk4?=
 =?utf-8?B?TGFkcDg4YVJRbi9hSCs1NUR1QVlMVEpsT3kxV0VSRjRZZ1FIcHJoNzdieUlP?=
 =?utf-8?B?cDlsZWpxb1hWSFBiVU5HRit5OXNZdnl4RjlHdGFGUEoxZW9QWUpUMm82Nzcv?=
 =?utf-8?B?VDNPUG1kaVpWNW1ZRzhvYW5GUVZZTi9VVWxaakxwd3FlaXhNcjVJS21IT1VN?=
 =?utf-8?B?d3Fsdi9nNTFsZ1pVUms5U1FxRVpsZXBieEl2cklMaVR4ejVWcGt1MFQ2angr?=
 =?utf-8?B?U0ozVG9GV1N5VHgrYWZYUFlVRVRxL0xUczhSd3dUK0UwMDVHSExYRml3Q3ZB?=
 =?utf-8?B?a2tmbGNXWUhnVmJlaExJWmVFMmlvS09tN21MaVl5QWxnc2ZJU3VGdkNCcVNt?=
 =?utf-8?B?OFpFdzlYdzV5Qk1KRDVVdS9SZGxUYktFRVVDNmZUaER5Mm9ERkwxMzJCdld4?=
 =?utf-8?B?V21nMng1TTE0cmJ6ZG9HTUEwWnlUelhhd09qL0MyK1Z2Q2tKemc0RG1nSnds?=
 =?utf-8?B?YVJzTldnb2s3bXlwa0M0ZzloQ1loYnFGbWZCRXRGWjN4b1diK2ZYcDZyUzF6?=
 =?utf-8?B?azJoSTBLcnFka2lsMkpmUDlOMnZrU3ZpODBGczIwSjIxUlZYWUtyWUZiTFR3?=
 =?utf-8?B?NFFnRzVrNmlya3J2KzhxM1ZQRWdYcmNHZ0Vtd3pmSHJVQVRzK2JvTjBwdTls?=
 =?utf-8?B?U0h3RnBzQ0lkdkd6d2dsTkluYzRiNFFQTS9QS3Y0ZTEvUTNxYVdZZTlUVUhM?=
 =?utf-8?B?R01QYVhoRHNTWDRaOVR5SHhwdThLNUJLaG9BM2grdmhHTEhoWG5oUGE4NE9P?=
 =?utf-8?B?MzhHSlcvTlR0SGx6NHl6ZjNweUxiOVNEOGVTcmJiUklYSDBNNWpKM2trQ0JU?=
 =?utf-8?B?MUdVb2RzSEJ1VDhlMjRuRloxVlZVNTVkcWtyZFQvMW9rY2RuSzFodk5wNFBR?=
 =?utf-8?B?MTkyUjFja205dU5pODFWQWtrNi9zVlZNWkVCdlpQR2o1UEM4YjJlT0hEbVNZ?=
 =?utf-8?B?Z2oxZGJTWVdxNXFrWDhFbk5jMkNXYmcwUHUzOVFYMWdzTTdZdjJQL1VSZk04?=
 =?utf-8?B?Sm9MOUxWVTdGNlBCckhROFJPdGJodzY0Y1BmNkh1QTl0Y3dqUzk1a1p2QnNy?=
 =?utf-8?B?eVc4WWhoSnowZkdnM3VSUEtpcC9mVmkzZ0t2S3NRME1wZEdjTUhOdUd6V1dm?=
 =?utf-8?B?UWd4b0dXdURNbHYvcmFEbE1Nd01TOWxrRjBvUWhSeDZTMTAvVkpTS3pPekc0?=
 =?utf-8?B?UzIvVXkrU1lBOVUxOS9ZZStlWHRMekw4ZzlLQTE5OXZJSTM3QWRKeVRvYTVn?=
 =?utf-8?B?WEIrQ3dodXhvRXlUMEVvYTBkM1Erc1c0Y0FTUnhjVGo1MHdaVU1jdXZ3ZXo0?=
 =?utf-8?B?djA3MDNJaEFxTTF2S3Vua1djdUFFbXBpVmFNMjRvWlNvbE4vS2dtOWNSdTBR?=
 =?utf-8?B?aXA5eWlHZjFKdCtRWTJEdDlkcXpDZ0VTRW1jZVBpK292dGk0NXF1SzdzcnZI?=
 =?utf-8?B?RHVhWHR0QzI3eGNEa2Nzd2lDQlljeGNWV0JpenR0SFhEdHd4UTEyNWdjYXln?=
 =?utf-8?B?dDBubGtlYldyZEFJSkkzdVFXMTNqTGtORlZHbkJiZUswS0RGYVA3SzRaZ0Fm?=
 =?utf-8?B?TlBOMCtDOE0rdDBuY3N5WmhmaldOM1U5aTczb3NyVG9sWWo1UXcwbDhCUjlW?=
 =?utf-8?Q?9IpEi8G/e228ag90Hr8pYlAgxAE6wgLMXXySesMans9Nj?=
x-ms-exchange-antispam-messagedata-1: Vmeybv+PgPQXtryKFxX58iR0wtSff3nDrJE=
Content-Type: text/plain; charset="utf-8"
Content-ID: <91A41EE8567B1544A027375D6031610D@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5169.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 382251eb-02bf-4b14-2822-08d9ab73aa51
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Nov 2021 15:45:51.5694 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hPtgsRk7OIHj+8aeiOhu4AFSLlvNGyafzHgAJhLc+qNL8C656snFhvfxRTJmVuNrq0QFEmZ+9Zm/s7ApawsFbaIuo/ZG8d8sBQumXZs9IIKp0PohiAcxM6yCT6IQlRaCgNrL6f4lLxueTDp8IYnTMA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2142
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/dmc: Update DMC to v2.14 on
 ADL-P
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

T24gRnJpLCAyMDIxLTExLTE5IGF0IDE1OjA2ICswMDAwLCBTcml2YXRzYSwgQW51c2hhIHdyb3Rl
Og0KPiANCj4gDQo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiBGcm9tOiBJbnRl
bC1nZnggPGludGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxm
DQo+ID4gT2YgSW1yZQ0KPiA+IERlYWsNCj4gPiBTZW50OiBGcmlkYXksIE5vdmVtYmVyIDE5LCAy
MDIxIDQ6NTggQU0NCj4gPiBUbzogVG9sYWthbmFoYWxsaSBQcmFkZWVwLCBNYWRodW1pdGhhDQo+
ID4gPG1hZGh1bWl0aGEudG9sYWthbmFoYWxsaS5wcmFkZWVwQGludGVsLmNvbT4NCj4gPiBDYzog
aW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+IFN1YmplY3Q6IFJlOiBbSW50ZWwt
Z2Z4XSBbUEFUQ0ggMS8xXSBkcm0vaTkxNS9kbWM6IFVwZGF0ZSBETUMgdG8NCj4gPiB2Mi4xNCBv
bg0KPiA+IEFETC1QDQo+ID4gDQo+ID4gT24gVGh1LCBOb3YgMTgsIDIwMjEgYXQgMTA6MzE6MjhQ
TSAtMDgwMCwgTWFkaHVtaXRoYSBUb2xha2FuYWhhbGxpDQo+ID4gUHJhZGVlcCB3cm90ZToNCj4g
PiA+IFRoZSByZWxlYXNlIG5vdGVzIG1lbnRpb24gdGhhdCBETUMgdjIuMTQgcHJvdmlkZXMgLcKg
IDEuIEZpeCBmb3INCj4gPiA+IEZsaXANCj4gPiA+IHF1ZXVlIHJvbGwgb3ZlciBjYXNlcyB3aXRo
IERDNnbCoCAyLiBFbmhhbmNlbWVudCBmb3IgcmVzaWRlbmN5wqAgMy4NCj4gPiA+IFdvcmthcm91
bmQgZm9yIDNEbHV0IHJlc3RvcmUgaXNzdWUNCj4gPiANCj4gPiBDb3VsZCB5b3UgYWxzbyBhZGQg
dGhlIDIuMTIgLT4gMi4xMyByZWxlYXNlIG5vdGVzPw0KPiANCj4gT29wcyBzYXcgSW1yZSdzIGNv
bW1lbnQgbm93Lg0KPiBAVG9sYWthbmFoYWxsaSBQcmFkZWVwLCBNYWRodW1pdGhhIFBsZWFzZSBk
byB0aGUgbmVlZGZ1bC4NCj4gDQo+IEFudXNoYQ0KDQpUaGFua3MgSW1yZSBhbmQgQW51c2hhISBJ
J2xsIHVwZGF0ZSB0aGUgcmVsZWFzZSBub3RlcyBhbmQgc2VuZCBvdXQgDQp0aGUgbmV4dCB2ZXJz
aW9uLg0KDQotIE1hZGh1bWl0aGENCg0KPiA+ID4gU2lnbmVkLW9mZi1ieTogTWFkaHVtaXRoYSBU
b2xha2FuYWhhbGxpIFByYWRlZXANCj4gPiA+IDxtYWRodW1pdGhhLnRvbGFrYW5haGFsbGkucHJh
ZGVlcEBpbnRlbC5jb20+DQo+ID4gPiAtLS0NCj4gPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kbWMuYyB8IDQgKystLQ0KPiA+ID4gwqAxIGZpbGUgY2hhbmdlZCwgMiBp
bnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiA+ID4gDQo+ID4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWMuYw0KPiA+ID4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RtYy5jDQo+ID4gPiBpbmRleCAyZGM5ZDYzMjk2
OWQuLjg2MTdjZDFlYzliMiAxMDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZG1jLmMNCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZG1jLmMNCj4gPiA+IEBAIC00NSw4ICs0NSw4IEBADQo+ID4gPiANCj4gPiA+
IMKgI2RlZmluZSBHRU4xMl9ETUNfTUFYX0ZXX1NJWkVJQ0xfRE1DX01BWF9GV19TSVpFDQo+ID4g
PiANCj4gPiA+IC0jZGVmaW5lIEFETFBfRE1DX1BBVEhETUNfUEFUSChhZGxwLCAyLCAxMikNCj4g
PiA+IC0jZGVmaW5lIEFETFBfRE1DX1ZFUlNJT05fUkVRVUlSRURETUNfVkVSU0lPTigyLCAxMikN
Cj4gPiA+ICsjZGVmaW5lIEFETFBfRE1DX1BBVEhETUNfUEFUSChhZGxwLCAyLCAxNCkNCj4gPiA+
ICsjZGVmaW5lIEFETFBfRE1DX1ZFUlNJT05fUkVRVUlSRURETUNfVkVSU0lPTigyLCAxNCkNCj4g
PiA+IMKgTU9EVUxFX0ZJUk1XQVJFKEFETFBfRE1DX1BBVEgpOw0KPiA+ID4gDQo+ID4gPiDCoCNk
ZWZpbmUgQURMU19ETUNfUEFUSERNQ19QQVRIKGFkbHMsIDIsIDAxKQ0KPiA+ID4gLS0NCj4gPiA+
IDIuMzMuMQ0KPiA+ID4gDQoNCg==
