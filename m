Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D4CE6C785F
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Mar 2023 08:03:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2F5410E504;
	Fri, 24 Mar 2023 07:03:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D9AE10E504
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Mar 2023 07:03:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679641417; x=1711177417;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=u06lwNhntvlXOeRazkVXgGDyBSAMUCAkKEp6yme2bjY=;
 b=jIaiNBrpRQtVcUojkXohQcbS++xEHdTJGRG/9fYZmADHBBG9nlWSYuvX
 kTavBOf3QIFNPYvJKoExavxgINRn0L3Pw1mRNzvEGFEfRQks4FKSPLBCO
 eFG1h0IqK0QO3+SJYg97EP98Ga9eie4Rap1xGfIr9a22AhUaPeauTwPMU
 9NPhl7NuXc4C5OHkH4Hmopbu4GvGyHCQ0Azkav1q2ay82AYf52JoitcNE
 RnfAWYnvY1+LYaKHWOvTIMeg3YYxf0v2U7mA3ESbDMZkLSGc/xJdVNgoR
 rI9BfyzDZAxOn6GHX/o9ErQ1bzJc5IFqYfAMOhHWkgTd3kUQT+/Xahocc w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10658"; a="367450293"
X-IronPort-AV: E=Sophos;i="5.98,287,1673942400"; d="scan'208";a="367450293"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2023 00:03:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10658"; a="685051483"
X-IronPort-AV: E=Sophos;i="5.98,287,1673942400"; d="scan'208";a="685051483"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 24 Mar 2023 00:03:36 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 24 Mar 2023 00:03:36 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 24 Mar 2023 00:03:36 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 24 Mar 2023 00:03:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cvd7M6HYN2NUMRCESU25y8b1Sux4LiEeDpA0QKNRPfTx5RYIXEGgxhjaKehwExCIU27Z5BAvaxUX1epPiAWk/qYpqvpfc53lnZACrFNvw5KV7Axu/6oreHEjmQd0Gh3EBIIOltc8nXfowWU5k4+yjdtq2is1qh0aQRQmF7+hYT2zZFNnrLKPmyZ3nT+g4eYf3Pt6b6U3XZizyocHGf6zpfTlj3IogRQD3fQE8/C01rtOhdNaRQHcWLVwNHDrKWAy2L6aG1QeMWqmPqUEBkGfKC/2WSTCN2GafPIME7kuEvvYDRtMwu2vjNAEcqRE/xVHrx7YmJZjV+kOHM459fQLAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u06lwNhntvlXOeRazkVXgGDyBSAMUCAkKEp6yme2bjY=;
 b=ZqCzNSACSdWMYhhpLSk+OtRZ6HoL2gBtO0/wcibTE7w+6CDz2AiVh4t2ml3kl3QDIcSIdxpfJRJajmVPFSIBxTVLvZ4YVNFGZ0r88MsOatMCydy2tm48Fj0U3Vr+vQVR3GHzoVjbivmOEWlw42BKcoXCbeiW27QLrlCSKV3Z97+hiOk6/ZK0BuY4NwVbWF3dpfRMZk64a6jwzjrZcMw9sd1PozU+mAUpHRhebB3Bx2yl5OP6K4zqpU5xfSPWzIeqmsCwVFLL5JU/hNzeR3m2cBaCHKqxpiCoJR1iXbR/lsEtoaz33riwU/afy2VtT3FHrM5yVHVlGwp09wODCtSk3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by MN2PR11MB4536.namprd11.prod.outlook.com (2603:10b6:208:26a::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.38; Fri, 24 Mar
 2023 07:03:33 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::3910:8188:6548:993b]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::3910:8188:6548:993b%7]) with mapi id 15.20.6178.038; Fri, 24 Mar 2023
 07:03:33 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 02/14] drm/i915/tc: Fix TC port link ref init
 for DP MST during HW readout
Thread-Index: AQHZWA9VmKNOlkLVNE+T4Jz4oHXpE68FKdlwgAAg4gCABEJIoA==
Date: Fri, 24 Mar 2023 07:03:32 +0000
Message-ID: <MW4PR11MB70545D3A90E134DCA42DF7ACEF849@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20230316131724.359612-1-imre.deak@intel.com>
 <20230316131724.359612-3-imre.deak@intel.com>
 <MW4PR11MB7054FE3F9F2904F694633EEEEF819@MW4PR11MB7054.namprd11.prod.outlook.com>
 <ZBm4YInDZnvtx1ix@ideak-desk.fi.intel.com>
In-Reply-To: <ZBm4YInDZnvtx1ix@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|MN2PR11MB4536:EE_
x-ms-office365-filtering-correlation-id: 870edab2-2ae8-441e-dd80-08db2c35e163
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4JV8T2ogaO0HhR5AcGTcpNIuQFjzAVDaB0xeEy0/HE+g/WbT1XV6GJxhilzM9FYpHekuD08fFaWvDY10pHlBcErSF3qsMJtGDi23sH8UZ/7MOPGQNTd3RdeEUoJZxFpugLqo5e3lstQ8BLRst12fzsk7wPUsdExNqEOAIv5f8zERZzW819ZZq3g7J7mNN1OpX2kNqBt0OVVH6+EWJjDubg+O9L4IiU5rJI2PvZtl34VHRIhnCZlNxa4bXdGJehoeijPaWPWWmVb44ea0KFEZZD6FFX+bKq/gEaT3ZImz61qemqdwseo/O0R7nv2mpVig4AytxOIyjrvcAx2sdm5rqJkvB0N0dVimBrOED35juJra6cPTukOBo4qbqGG8GzeuCpWiq/NtQNRo/Am7GkSQuBvVK6xxh+hGMpdXfdqH+epg+Ptz7f1A3WwcdOTP69cpRUujiS3HRTnInw+TybCDtgnv9Npp/cv959lMufxVYq1vLWEQ8el+AoRPz50THNLmddlo88fYLWMYL9YZ7nb6OwqmMI2QldDn4ceUMoiMTKMBB8YG8sFJb+tQvF8J/M+kWS4oJZCEk85Vk2+uiMjjuEWLSNoZEhsrdDSGH/+AP5Y7AVg68xnqKCDpX0tozJ8cYrPRohhmcezVyp1FEOHay8XYuUiAvtqBM9Naol0Q4vN3gF1aTZH8oN50nN0Z4d79UkyoZSITVj6I07McQgG+/A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(136003)(376002)(39860400002)(346002)(366004)(451199018)(66556008)(52536014)(5660300002)(64756008)(4326008)(66476007)(66446008)(41300700001)(2906002)(8676002)(38070700005)(33656002)(86362001)(82960400001)(38100700002)(122000001)(71200400001)(7696005)(26005)(76116006)(316002)(478600001)(8936002)(55016003)(6862004)(6506007)(6636002)(66946007)(186003)(83380400001)(53546011)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QVVXTS96ZGYyZkxVUkZRQ1VWV1YrQjJOeHhDL3U5bkVxYytqMm9sZGF1dVNR?=
 =?utf-8?B?eGVVMFhSb0ZSUUlhWS92ajJ0b2ZzMmozeDA4T1VYeG93c2VLYUJUa20wSG1S?=
 =?utf-8?B?WTJMT1RDbllCZ1dlc0dFcVV2ZjVkSFRjNUtLZjlHbE5OdHlLWXJHV1FISC9G?=
 =?utf-8?B?VzhEV1FkNFhDcnY1Yk53N2g0WkxaUTYxbk9HOHNPR2k1WHNlVGtBcUk3aWhp?=
 =?utf-8?B?OStLc0RxeXM3NHJjU3NwQmpLMDBpRk9mN3ZVQTAyQXozZ0YrVzVhMmN1Y2tt?=
 =?utf-8?B?OXpGbVdkZFZaQkQyZzhMZXRSUFpPZUc2UHBReWU1aUNpR1lTbndjSnJzWFBZ?=
 =?utf-8?B?Nk1NOTF4QzUvOC9RKzFXK2ZtTFp0eStkRDBDSGF4M2ZkQkhDb2lrOUdVUXlS?=
 =?utf-8?B?em9hWUZ0ckhnMW05T2RZTmJldHBtSk4vRzJtM0kxY01UQXFYclczZ1dUc0hC?=
 =?utf-8?B?MW5RampuZkZMTlh4T3JlWDQ0dG5FdDhhRkN0cDZzSTNMN29QMDNJOUdFZWFs?=
 =?utf-8?B?M2NUblc3WHE3TkpidW5JREtrbW9yY3NyWEd6KzFpZExwRUlFT3dhUEZXNXNU?=
 =?utf-8?B?YTIzYnJBVEluZmJkbW9hY1RpVWkrc3hvS1pEZ2hvSmRtaFU3ZUYwakdPYkFM?=
 =?utf-8?B?N3V0YllxNE45bjBTWFFsTld4WHZSaUVQMlhjVmRaRFUyd1Z3RFJZYURTK3VZ?=
 =?utf-8?B?bWZ5bGM2SmVBUndvbjRMb2JGazhKMitJU0JYSENkRG5SYmJ6alN3WGE4ek9M?=
 =?utf-8?B?cWtFNzZRQ0Qxblg5MVdkVmlSNTRlaHkzbzU4R09QN1YzMkVjLzRMZktQZjJs?=
 =?utf-8?B?MnYwMTZjaFh3RjFycDRCNThMU3g3c1pTQ0VTa2g5RHI5L0ZHVjlxVURzS2dP?=
 =?utf-8?B?dTY4anBCT2EweTNDWFFMUHhpSHdyTlU5MGxGZE5GYUdjQTJDSms0YW9mV0M3?=
 =?utf-8?B?aHRtOExLc2paR2dEbUxDbUFlYmF3T3M1aStjQ3lUR1Z3Y25nZlZLeS9JblFT?=
 =?utf-8?B?M2xxV0xRVWw0QnV2YXU4REh1Y1NHd3FTVURLS1ovR1Qxa29CenJhV0I2N2Fz?=
 =?utf-8?B?ZHdRbk16V2NoSisxSHJRMDFrK0lyOFVsTDRtdzFxUnJqNHJFbzhuNlExY2lz?=
 =?utf-8?B?NlFyc2lSc2ZMZzYxdG4yeGlMU0hmOWRONkZtMmcyOGhUdnBRMVgzejlvWlFR?=
 =?utf-8?B?RFdmTTJlRTRIaWtJR25iQlI1eko4WWJYekpBVnBKeHBXOUxIR25TSXp1bFJB?=
 =?utf-8?B?ZStGMG5FQWhuZXlrTlppdlN6Uy95UTVDbTIvRDJTekN1VzhSRm80Wjk2ZlYr?=
 =?utf-8?B?am9HVDF6YkcyTitsYUU0clFYM2FBS0h1K1lkUXNZbjlqQm5iQ1dNcUo5dURz?=
 =?utf-8?B?YjM4RG0rdHBDVDhOdnN3SVRhWW9UOXEzVFFnekVTNCtsVUpSdUtMVEM3K2dH?=
 =?utf-8?B?TTNjM1B2RGE1TTBNclNXbkFtSTJ0VStJUWxYUFNTZ2xJalVSUmQ4V2x0KzVL?=
 =?utf-8?B?dThNUDloOGovZXN0K2pmdENoejFPTjU2ZGtndUJscThYRDQxVDJoZkpzYi9K?=
 =?utf-8?B?OElvNGM3djFVVTB4TVRrUlF0U0ViQnlDOFAvYkt0YkNaMU5OSGcwVGxIcTBv?=
 =?utf-8?B?Z1lhWVFrRk1VZDM0ODBIa3BoTmJBTkM2d0RFdEhIU0N0Uk1iMjJSZmgraVp5?=
 =?utf-8?B?TlVYL2RnUFRPdjA3RTVzRnRha0RsSUtsUjhwZS8yZ2ZkK2NUeDBGcm01c09P?=
 =?utf-8?B?S3NSWWZlcjZhQWRtQ2M3QmhYMzlFQ1k0V0Y5L1VyaU04YjBYZWFqNDJ1TGJq?=
 =?utf-8?B?SkQvQ1ptVS9lOCtiVHlFMEEyWHZqMjVja2tpWGdFTUx0bmZhWlJsVEFZYmtZ?=
 =?utf-8?B?em0xRUg4QWdBRXJqTU91ZkRCOFFTMDIyTm11WkJuczB1ZThONUZkTUszUytU?=
 =?utf-8?B?Z1ZTeGVPdFp3WkRNb0VDWlV4MTNnbkI1VHlwcmV4ckN6REUva0VyNDdCWE1t?=
 =?utf-8?B?TkVwSFA4Y1RxaXZDeXoxSnRkVHpZUi85Zi93bVpHVW9neG9vYTBuRHlYQTdM?=
 =?utf-8?B?bDV4Qkx3ejk3WWVtcUNHV0hibGcvaGdVb1JMaEhNWXhES2I2djdsdlczbTlD?=
 =?utf-8?Q?P/g95xQmZo7rNj76K8I0qt02s?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 870edab2-2ae8-441e-dd80-08db2c35e163
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Mar 2023 07:03:32.9208 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FSNxCELqPzLiJM2YurzeH4py3v4zhJmwgqoYIpBeJBwf10eWWMyXkbORg6ONp+Bn3S86yJBJhr+vpT/7M5W1rQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4536
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 02/14] drm/i915/tc: Fix TC port link ref
 init for DP MST during HW readout
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBEZWFrLCBJbXJlIDxpbXJlLmRl
YWtAaW50ZWwuY29tPg0KPiBTZW50OiBUdWVzZGF5LCBNYXJjaCAyMSwgMjAyMyA0OjAwIFBNDQo+
IFRvOiBLYWhvbGEsIE1pa2EgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCj4gQ2M6IGludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogUmU6IFtJbnRlbC1nZnhdIFtQQVRD
SCAwMi8xNF0gZHJtL2k5MTUvdGM6IEZpeCBUQyBwb3J0IGxpbmsgcmVmIGluaXQgZm9yIERQDQo+
IE1TVCBkdXJpbmcgSFcgcmVhZG91dA0KPiANCj4gT24gVHVlLCBNYXIgMjEsIDIwMjMgYXQgMDI6
MDY6MzhQTSArMDIwMCwgS2Fob2xhLCBNaWthIHdyb3RlOg0KPiA+ID4gLS0tLS1PcmlnaW5hbCBN
ZXNzYWdlLS0tLS0NCj4gPiA+IEZyb206IEludGVsLWdmeCA8aW50ZWwtZ2Z4LWJvdW5jZXNAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYNCj4gPiA+IE9mIEltcmUgRGVhaw0KPiA+ID4g
U2VudDogVGh1cnNkYXksIE1hcmNoIDE2LCAyMDIzIDM6MTcgUE0NCj4gPiA+IFRvOiBpbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBbUEFU
Q0ggMDIvMTRdIGRybS9pOTE1L3RjOiBGaXggVEMgcG9ydCBsaW5rIHJlZg0KPiA+ID4gaW5pdCBm
b3IgRFAgTVNUIGR1cmluZyBIVyByZWFkb3V0DQo+ID4gPg0KPiA+ID4gQW4gZW5hYmxlZCBUQyBN
U1QgcG9ydCBob2xkcyBvbmUgVEMgcG9ydCBsaW5rIHJlZmVyZW5jZSwgcmVnYXJkbGVzcw0KPiA+
ID4gb2YgdGhlIG51bWJlciBvZiBlbmFibGVkIHN0cmVhbXMgb24gaXQsIGJ1dCB0aGUgVEMgcG9y
dCBIVyByZWFkb3V0DQo+ID4gPiB0YWtlcyBvbmUgcmVmZXJlbmNlIGZvciBlYWNoIGFjdGl2ZSBN
U1Qgc3RyZWFtLg0KPiA+ID4NCj4gPiA+IEZpeCB0aGUgSFcgcmVhZG91dCwgdGFraW5nIG9ubHkg
b25lIHJlZmVyZW5jZSBmb3IgTVNUIHBvcnRzLg0KPiA+ID4NCj4gPiA+IFRoaXMgZGlkbid0IGNh
dXNlIGFuIGFjdHVhbCBwcm9ibGVtLCBzaW5jZSB0aGUgZW5jb2RlciBIVyByZWFkb3V0DQo+ID4g
PiBkb2Vzbid0IHlldCBzdXBwb3J0IHJlYWRpbmcgb3V0IHRoZSBNU1QgSFcgc3RhdGUuDQo+ID4g
Pg0KPiA+ID4gU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0K
PiA+ID4gLS0tDQo+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5j
IHwgMjAgKysrKysrKysrKystLS0tLS0tLS0NCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMTEgaW5z
ZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkNCj4gPiA+DQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jDQo+ID4gPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiA+ID4gaW5kZXggMDUwZjk5ODI4NDU5Mi4u
MGI2ZmU5NmFiNDc1OSAxMDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfdGMuYw0KPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF90Yy5jDQo+ID4gPiBAQCAtNjYwLDExICs2NjAsMTQgQEAgc3RhdGljIHZvaWQgaW50
ZWxfdGNfcG9ydF91cGRhdGVfbW9kZShzdHJ1Y3QNCj4gPiA+IGludGVsX2RpZ2l0YWxfcG9ydCAq
ZGlnX3BvcnQsDQo+ID4gPiAgICAgICB0Y19jb2xkX3VuYmxvY2soZGlnX3BvcnQsIGRvbWFpbiwg
d3JlZik7ICB9DQo+ID4gPg0KPiA+ID4gLXN0YXRpYyB2b2lkDQo+ID4gPiAtaW50ZWxfdGNfcG9y
dF9saW5rX2luaXRfcmVmY291bnQoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQs
DQo+ID4gPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaW50IHJlZmNvdW50KQ0KPiA+
ID4gK3N0YXRpYyB2b2lkIF9faW50ZWxfdGNfcG9ydF9nZXRfbGluayhzdHJ1Y3QgaW50ZWxfZGln
aXRhbF9wb3J0DQo+ID4gPiArKmRpZ19wb3J0KQ0KPiA+ID4gIHsNCj4gPiA+IC0gICAgIGRpZ19w
b3J0LT50Y19saW5rX3JlZmNvdW50ID0gcmVmY291bnQ7DQo+ID4gPiArICAgICBkaWdfcG9ydC0+
dGNfbGlua19yZWZjb3VudCsrOw0KPiA+ID4gK30NCj4gPiA+ICsNCj4gPiA+ICtzdGF0aWMgdm9p
ZCBfX2ludGVsX3RjX3BvcnRfcHV0X2xpbmsoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydA0KPiA+
ID4gKypkaWdfcG9ydCkgew0KPiA+ID4gKyAgICAgZGlnX3BvcnQtPnRjX2xpbmtfcmVmY291bnQt
LTsNCj4gPiA+ICB9DQo+ID4NCj4gPiBXaGVuIEkgcmVhZCB0aGlzIGZpcnN0IHRpbWUsIEkgaGFk
IGFuIGltcHJlc3Npb24gdGhhdCAqX3B1dF9saW5rKCkgYW5kDQo+ID4gKl9nZXRfbGluaygpIHdv
dWxkIGRvIHNvbWV0aGluZyBmb3IgdGhlIG1zdCBzdHJlYW1zLiBIb3dldmVyLCB0aGVzZQ0KPiA+
IGdldC9wdXQganVzdCBpbmNyZWFzZXMgb3IgZGVjcmVhc2VzIHRoZSBsaW5rIHJlZmNvdW50LiBT
aG91bGQgd2UNCj4gPiByZW5hbWUgdGhlc2UgZnVuY3Rpb25zIHRvIHJlc3RvcmUgdGhlICJyZWZj
b3VudCIgdG8gdGhlIGZ1bmN0aW9uIG5hbWUNCj4gPiBhcyB0aGUgcmVwbGFjZWQgZnVuY3Rpb24g
aGFkPw0KPiANCj4gQSBsaW5rIHJlZiBpcyB0YWtlbiB3aGVuZXZlciB0aGUgcG9ydCdzIFRDIG1v
ZGUgc2hvdWxkIHN0YXkgdW5jaGFuZ2VkLg0KPiBUaGlzIG1heSBiZSBiZWNhdXNlIHRoZSBwb3J0
IGlzIGVuYWJsZWQgaW4gYW55IG1vZGUgKERQLVNTVCwgLU1TVCBvciBIRE1JKSBvcg0KPiBhcyBo
ZXJlIG5vdCBuZWNlc3NhcmlsdHkgZW5hYmxlZCwgYnV0IG5vdCBmdWxseSBpbml0aWFsaXplZCB5
ZXQgKHdoaWNoIGlzIGRvbmUgb25seQ0KPiBvbmNlIGludGVsX3RjX3BvcnRfc2FuaXRpemVfbW9k
ZSgpIGlzIGNhbGxlZCkuDQpPaywgdGhpcyBkb2VzIG1ha2Ugc2Vuc2UuDQoNClJldmlld2VkLWJ5
OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KDQo+IA0KPiBCYXNlZCBvbiB0
aGUgYWJvdmUgZ2V0L3B1dF9saW5rIGhlcmUgbWVhbnMgdGhlIHNhbWUgdGhpbmcgYXMgbGF0ZXIg
d2hlbg0KPiBlbmFibGluZy9kaXNhYmxpbmcgb3V0cHV0czsgaGVuY2UgSSBhZGRlZCB0aGUgYWJv
dmUgZnVuY3Rpb25zIHVzZWQgaW4gYm90aA0KPiBjYXNlcy4NCj4gDQo+ID4gT3RoZXJ3aXNlLCB0
aGUgcGF0Y2ggZG9lcyB3aGF0IGlzIHN1cHBvc2VkIHRvIGRvIGhlcmUgYW5kIGxvb2tzIG9rLg0K
PiA+DQo+ID4gLU1pa2EtDQo+ID4NCj4gPiA+DQo+ID4gPiAgLyoqDQo+ID4gPiBAQCAtNjkwLDcg
KzY5Myw3IEBAIHZvaWQgaW50ZWxfdGNfcG9ydF9pbml0X21vZGUoc3RydWN0DQo+ID4gPiBpbnRl
bF9kaWdpdGFsX3BvcnQNCj4gPiA+ICpkaWdfcG9ydCkNCj4gPiA+DQo+ID4gPiAgICAgICBkaWdf
cG9ydC0+dGNfbW9kZSA9IGludGVsX3RjX3BvcnRfZ2V0X2N1cnJlbnRfbW9kZShkaWdfcG9ydCk7
DQo+ID4gPiAgICAgICAvKiBQcmV2ZW50IGNoYW5naW5nIGRpZ19wb3J0LT50Y19tb2RlIHVudGls
DQo+ID4gPiBpbnRlbF90Y19wb3J0X3Nhbml0aXplX21vZGUoKSBpcyBjYWxsZWQuICovDQo+ID4g
PiAtICAgICBpbnRlbF90Y19wb3J0X2xpbmtfaW5pdF9yZWZjb3VudChkaWdfcG9ydCwgMSk7DQo+
ID4gPiArICAgICBfX2ludGVsX3RjX3BvcnRfZ2V0X2xpbmsoZGlnX3BvcnQpOw0KPiA+ID4gICAg
ICAgZGlnX3BvcnQtPnRjX2xvY2tfd2FrZXJlZiA9IHRjX2NvbGRfYmxvY2soZGlnX3BvcnQsICZk
aWdfcG9ydC0NCj4gPiA+ID50Y19sb2NrX3Bvd2VyX2RvbWFpbik7DQo+ID4gPg0KPiA+ID4gICAg
ICAgdGNfY29sZF91bmJsb2NrKGRpZ19wb3J0LCBkb21haW4sIHRjX2NvbGRfd3JlZik7IEBAIC03
MjYsOA0KPiA+ID4gKzcyOSw2IEBAIHZvaWQgaW50ZWxfdGNfcG9ydF9zYW5pdGl6ZV9tb2RlKHN0
cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQNCj4gKmRpZ19wb3J0KQ0KPiA+ID4gICAgICAgICAgICAg
ICBhY3RpdmVfbGlua3MgPQ0KPiA+ID4gdG9faW50ZWxfY3J0YyhlbmNvZGVyLT5iYXNlLmNydGMp
LT5hY3RpdmU7DQo+ID4gPg0KPiA+ID4gICAgICAgZHJtX1dBUk5fT04oJmk5MTUtPmRybSwgZGln
X3BvcnQtPnRjX2xpbmtfcmVmY291bnQgIT0gMSk7DQo+ID4gPiAtICAgICBpbnRlbF90Y19wb3J0
X2xpbmtfaW5pdF9yZWZjb3VudChkaWdfcG9ydCwgYWN0aXZlX2xpbmtzKTsNCj4gPiA+IC0NCj4g
PiA+ICAgICAgIGlmIChhY3RpdmVfbGlua3MpIHsNCj4gPiA+ICAgICAgICAgICAgICAgaWYgKCFp
Y2xfdGNfcGh5X2lzX2Nvbm5lY3RlZChkaWdfcG9ydCkpDQo+ID4gPiAgICAgICAgICAgICAgICAg
ICAgICAgZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwgQEAgLTc0Niw2ICs3NDcsNyBAQA0KPiA+ID4g
dm9pZCBpbnRlbF90Y19wb3J0X3Nhbml0aXplX21vZGUoc3RydWN0DQo+ID4gPiBpbnRlbF9kaWdp
dGFsX3BvcnQgKmRpZ19wb3J0KQ0KPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIGRpZ19wb3J0LT50Y19wb3J0X25hbWUsDQo+ID4gPiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgdGNfcG9ydF9tb2RlX25hbWUoZGlnX3BvcnQtPnRjX21vZGUpKTsNCj4gPiA+
ICAgICAgICAgICAgICAgaWNsX3RjX3BoeV9kaXNjb25uZWN0KGRpZ19wb3J0KTsNCj4gPiA+ICsg
ICAgICAgICAgICAgX19pbnRlbF90Y19wb3J0X3B1dF9saW5rKGRpZ19wb3J0KTsNCj4gPiA+DQo+
ID4gPiAgICAgICAgICAgICAgIHRjX2NvbGRfdW5ibG9jayhkaWdfcG9ydCwgZGlnX3BvcnQtPnRj
X2xvY2tfcG93ZXJfZG9tYWluLA0KPiA+ID4NCj4gPiA+IGZldGNoX2FuZF96ZXJvKCZkaWdfcG9y
dC0+dGNfbG9ja193YWtlcmVmKSk7DQo+ID4gPiBAQCAtODY0LDE0ICs4NjYsMTQgQEAgdm9pZCBp
bnRlbF90Y19wb3J0X2dldF9saW5rKHN0cnVjdA0KPiA+ID4gaW50ZWxfZGlnaXRhbF9wb3J0ICpk
aWdfcG9ydCwNCj4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgaW50IHJlcXVpcmVkX2xh
bmVzKSAgew0KPiA+ID4gICAgICAgX19pbnRlbF90Y19wb3J0X2xvY2soZGlnX3BvcnQsIHJlcXVp
cmVkX2xhbmVzKTsNCj4gPiA+IC0gICAgIGRpZ19wb3J0LT50Y19saW5rX3JlZmNvdW50Kys7DQo+
ID4gPiArICAgICBfX2ludGVsX3RjX3BvcnRfZ2V0X2xpbmsoZGlnX3BvcnQpOw0KPiA+ID4gICAg
ICAgaW50ZWxfdGNfcG9ydF91bmxvY2soZGlnX3BvcnQpOyAgfQ0KPiA+ID4NCj4gPiA+ICB2b2lk
IGludGVsX3RjX3BvcnRfcHV0X2xpbmsoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3Bv
cnQpICB7DQo+ID4gPiAgICAgICBpbnRlbF90Y19wb3J0X2xvY2soZGlnX3BvcnQpOw0KPiA+ID4g
LSAgICAgLS1kaWdfcG9ydC0+dGNfbGlua19yZWZjb3VudDsNCj4gPiA+ICsgICAgIF9faW50ZWxf
dGNfcG9ydF9wdXRfbGluayhkaWdfcG9ydCk7DQo+ID4gPiAgICAgICBpbnRlbF90Y19wb3J0X3Vu
bG9jayhkaWdfcG9ydCk7DQo+ID4gPg0KPiA+ID4gICAgICAgLyoNCj4gPiA+IC0tDQo+ID4gPiAy
LjM3LjENCj4gPg0K
