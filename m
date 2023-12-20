Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 66251819DB7
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Dec 2023 12:11:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A377110E33F;
	Wed, 20 Dec 2023 11:11:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E28B310E33F
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Dec 2023 11:11:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703070708; x=1734606708;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=tEWvPolbOQI960O8b9NjT7WieDsdysDuDQK11mfMU+c=;
 b=Tpk4MBcDyhkS8zihkMJdStBY2KPsDxbyn7Rmk+iTt5/SzEPadrFZ+/mX
 UZ6mUH2RfxO9/GYAEhZ++uqay5S2X7h6nItaPKQalb0TcJem8UXruoEPb
 OOVDYZZTcdyuNISYheqtRZVp6zdRVqdmYhmwIdCz75L3YEc12UMzdpcWw
 /+DLsxVZqLTfVIZ3mPLitHFq3Z1be/b6Zzo+u+/ka6LsPBOehmtEJSpFK
 KNs/SpR5cdXJWaRP1muuz9cl9BjdYsADPij/m5ehhntf2/OeKoD8jh7bk
 y6eDhFYGZ1/CAguqytysXKzu5IWuQ/lxwcX51t25LqOxgAZQoZK0+OVUF Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="386220288"
X-IronPort-AV: E=Sophos;i="6.04,291,1695711600"; d="scan'208";a="386220288"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2023 03:11:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="805230199"
X-IronPort-AV: E=Sophos;i="6.04,291,1695711600"; d="scan'208";a="805230199"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Dec 2023 03:11:48 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 20 Dec 2023 03:11:47 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 20 Dec 2023 03:11:47 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 20 Dec 2023 03:11:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JOOVg4ThBLKLHzjVe9vYqBWklfFOzLPLaTeS77qxzlqZAtj7d2nE/hWq2Y7IlIZ3ASqUpHuIRB2GK0Gvw2VxlmblRSinNve3aYZXr2byWja1Rebq2kCs3eU2wfBTbMOlLXcLIPNjkjxrjAqFip3XI7ru7pjbZ0IGg2JucwJhsScSzxeEkVyNaVG6vKhYox4FFGZloWOP/Yp+9AmQDPOnUnDFXECMmoLQ7CtRN52OXv+tkPrZ8wgOMBvrAwmFNXfV3xGrwIktNgzh0Ddkn0MUKtPUZdLw908trPc0d4Hekg/D9gaEY2TljVwOZdZMTlpvITLfSb1Ae1upgcrYtPGSiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tEWvPolbOQI960O8b9NjT7WieDsdysDuDQK11mfMU+c=;
 b=mJZB3u76as0tIXO5cyDh7w61T9MP9nzpmi2/AIADJfs4K9Jc//AYBHozFM6cwkff21iiZFWyNrPlpq1344lP2VKP+ckTkKjLKQT0KAHCiTp5Mp5ckdmH1frG+XsKnNGes13ckDxjhP20fenGWCRJwePpk00PJCI0zteFEk3qHD38qZbqopFTZe8wnQFm8C1ACrpA7Aw7oFzV5dQ/F5pzkC5KUz+QqX8Fqp3UaxUltsp/RBgKeNSI3vsYoSppazLrL1xokiiPDOEas7zcEZS4JciiC0VXVYTkndg/ToksiLD/WbbXA7avhn6Oo5S8TaW3anYqLcaBlXT2AhuBU6OPFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6344.namprd11.prod.outlook.com (2603:10b6:930:3b::6)
 by DM6PR11MB4659.namprd11.prod.outlook.com (2603:10b6:5:2a5::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7113.19; Wed, 20 Dec
 2023 11:11:45 +0000
Received: from CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::d720:57b4:c6ef:ddd8]) by CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::d720:57b4:c6ef:ddd8%4]) with mapi id 15.20.7113.016; Wed, 20 Dec 2023
 11:11:45 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 1/9] drm/i915: Decouple
 intel_crtc_vblank_evade_scanlines() from atomic commits
Thread-Topic: [PATCH 1/9] drm/i915: Decouple
 intel_crtc_vblank_evade_scanlines() from atomic commits
Thread-Index: AQHaLa65DRsWRRX8qkeoqVjxkTVB7rCyDw3w
Date: Wed, 20 Dec 2023 11:11:45 +0000
Message-ID: <CY5PR11MB6344680FFF0DC81B36C91FB9F496A@CY5PR11MB6344.namprd11.prod.outlook.com>
References: <20231213102519.13500-1-ville.syrjala@linux.intel.com>
 <20231213102519.13500-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20231213102519.13500-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6344:EE_|DM6PR11MB4659:EE_
x-ms-office365-filtering-correlation-id: b0db7b31-193e-4204-c786-08dc014c7404
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TQgRsO5k2WPh0p2KsqFxYE+qWCiXi8isKJLpBzAeDIJd6cmaS/VqHalh5s+G4m6f6wH07L28m8AVpo9aiSy5QlSo4Oc/mq3CqRlKCt13XMPdRGFlD2y+9kpkRk1nTRdbF5vAo/bqij45OQY/s6v4OGRMGYOVZ2CN3KbRASEbcCDDZLSN1LKnbsl8OogPm3I9IjixFig/bj0ghUwBYYmvKG4yI2SpAUbF0qauMoPzGPzY+6KA3vKFySa1eU718clo5IRFCsTzNnDfUiG0GomubUluPa4We+yuhRY0Whagao33VwDCoDapXM7X4Nv1YzH46AfPKIM5gvZfCi8eK0hmOneWbxad7Bt+OEbAfgLBaYqmEosiQGsuRURvnDOTKcl4KhJTS3CIGRybuo2LdOtLZqcKvGCx8qC+Yz4YhYehX8s7Vnzx67I/Dq0B+4gos+5GuK4nPGsjIhFj3V5xr2hk85lLm6KObi9PeTvwJPfrRcYvBntHgfxSHV+nqmGnEcNO0g4eAwBRvylGJPGgl7rZF6AEPmDr4bJ5V3YIybzkzAFqjSjx9RBpWW4APBqw/QrHqRUgtR9FeG+uqdZ0mv4i6hIYaLhF08e9kPDt4G/VZAAEvbBgkNfgDjQ0Ds6NX3kJ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6344.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(39860400002)(396003)(376002)(346002)(136003)(230922051799003)(1800799012)(186009)(64100799003)(451199024)(5660300002)(2906002)(41300700001)(38100700002)(33656002)(122000001)(110136005)(86362001)(82960400001)(26005)(71200400001)(66574015)(9686003)(6506007)(478600001)(53546011)(83380400001)(52536014)(7696005)(8936002)(66556008)(66476007)(66446008)(8676002)(66946007)(38070700009)(64756008)(76116006)(316002)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?M3FaNjUxcHp4dW9EcStjS3Y0ckt0TDNvaHhuU2lRZEsycTFpNXZUbjJvT1oy?=
 =?utf-8?B?Nk5KNHk4RWI5WS9VTkI1a29ETWN6elFqS2laengxWUhUa1FzRE55RW13UE15?=
 =?utf-8?B?dlRESWlZQ1k1SnNCMkJWZDlxNG1tQmt3b2gwR1Bsa3ZDelBadWZhTmVTckpS?=
 =?utf-8?B?YVIyRktpOWd6VWFGNW9MSVdBUmpoVXc4cTVxcVpZbFgyZTkyd0gvcDZHNms3?=
 =?utf-8?B?VFZhTGlFNGJDTEFxSU4rejFKZkJoSzJmNEJUM25iQktoRFNxR3VRV0NNVGc3?=
 =?utf-8?B?SXdBcTZDZW0yT0xvd2hhNTg4Y3pvb2xXbEtzWjdOOHJ4Umd4Z2Y5MGVSaUdU?=
 =?utf-8?B?TVJaWmM5TlgwVFZwWjhib0R5WlYzNEhWZDdYdlNPODl5bU1xUXZSNDl1QUpy?=
 =?utf-8?B?dkppTDdiajAzUVpWZmM5UFlLQnkvditEMnljZDl5RlpFR3l4NmEwRE5XM1Jy?=
 =?utf-8?B?U2k1a3NyVWVjWkZoR04waGp1SytDNFByYUx1SVVsa3JucXk0K2lTQ2FXVVpy?=
 =?utf-8?B?dmlodUlaK3p2eTdKOUx0M2tMcWNvZHI1c2VFV2d5T2kwUnJvQUttVU9QbnFp?=
 =?utf-8?B?WXhDSFhsa3ByaXJZUXloeWFSa0NUSTF6bUtFaXFacTQ0SVIrOENXQXpZdkpV?=
 =?utf-8?B?dXhwN3ZSZTZWYWdRUFYwdHlOQjJWQldocTlkbW41WXBrZHV5NFBZTU5Genla?=
 =?utf-8?B?QldPcWlnUEY3NmtKOVVVSFM1TjZrVkx6RE5YRGdWV2F5eWt2aSsvaXJ3OXdH?=
 =?utf-8?B?YXBtOTFRUlhwd3JVTG5xMGhqVWZLUm5ISmtBZXp3Ynd6ZTl4T0pKTVlmSXlS?=
 =?utf-8?B?dVJjaDhUQ0NzNjRUOFUvdXBFRXk3aXlybWlQemtKeFR1YVpaMWRMNW9leEZW?=
 =?utf-8?B?NnBIUjFjTjJ0Yy9KSDB1NGhjZ1ErTm5qanNqMlFGWGMrVFF4eFVhUzh0YmlH?=
 =?utf-8?B?RTROY2lFRS9BT2F3UUJ6NDhZMC8zaHhMbWt5UU83VlBsWCs4UHdxeSs0c2wy?=
 =?utf-8?B?NjBFbk9FWjFpOFV6K29oNStqbExkRWh5MFlyYlk1bnNJQ1c4R0wwQ3lRdHgx?=
 =?utf-8?B?aHc3OW9zUHQ2c1dKQWV6K1BGcm5iK1FlVXFNaThGUDRyL29PTUJvbkdBOHVN?=
 =?utf-8?B?emNmNjBISE1PZ0lNQ05BUG1LYkd5bUNCNHRYQmVDaFBBalpNOFdwMTljcE1W?=
 =?utf-8?B?QnAwNnkvLyt4amZFSk1iNDF5ZDA1L3U3RkFlOTB0aFRLN0kxc2Z6RWlhRS9N?=
 =?utf-8?B?S3M3d2Q5ZWFpVGp0cU4wRzhSNERDTGhyRmk3eTA2VmxxdFlJSHJOSStmMVQ3?=
 =?utf-8?B?bDJCdFdBTjdBN2ZrZzR2L2IrcVMwWllDZUVSNzhTM0JOZlFyT04xdFhiVlVO?=
 =?utf-8?B?Rk1iM1N6dG1yRDBuL2JuV2RTN3Q4RDNmcEJ4UC9KUTV2bU5paW5KckNHZHNt?=
 =?utf-8?B?M3NBQXBMRlVBMTNFZllSMEhvV0RvRmNRdFNtaEwrSXZUM1ptQmtVU3NWQkhM?=
 =?utf-8?B?VXJ0U29wUDY0VlV0TFBtRGJxYmtUNTI2Uyt6TXFaaFN0Z1hWcjN4dDhkcEp4?=
 =?utf-8?B?bEkvRFVnSzBkbTB3aW5LTDFROGxUNDZTZytmY21vOWk3WTdmd2lqVGs2ODhk?=
 =?utf-8?B?eU5zR1hwdlBsWUlkVnovVjJpZlR0SzJoMi9uZXFJUjl0Lzl0ekNGZ1dFb0Q4?=
 =?utf-8?B?SExwRmJLc3MwaUgxcW1wM3VHUERSSkhTeG5DNSttQldpODVDeVJTQmlvdW1Y?=
 =?utf-8?B?OXhoblRhWDhMVzFMbXREY3p1akQwWllWdlNMaUtRREp1SUZETllyYTFmUTBY?=
 =?utf-8?B?ZFpkQ0cyT0VqcFRCdzl3OTVOeHVwOGJReGNqSzNhOVlIQVlGVjVhbGVRcmxG?=
 =?utf-8?B?bDIweHVDeGxvRVNXQUV6c1RIY2wzZTgrMjhqVGFyUS8rblFoOWVOWmVuQUVy?=
 =?utf-8?B?OFdpbHN4WndIR2VxOFRWa2U0b1pyaDF5NTVaNFlCY2xvV0FMTit0dG0vb3FI?=
 =?utf-8?B?aVlMOXNjYVdUc0hOcDBhU25FUUFCN3U5c2wvTW9wVmp4d1pLZmloU0hkWVVI?=
 =?utf-8?B?ZmJMZ0tsTWNLenF3VDRLOXN6MDVMa2VlajFZazZBb2hWM0pBQmxZM09MOVdw?=
 =?utf-8?Q?VeCfayd+T1ONXzbcp8rmoSeN3?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6344.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b0db7b31-193e-4204-c786-08dc014c7404
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Dec 2023 11:11:45.5315 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i2Mdh12dgQNBfXwU8PjukuUe3FSOK3nZLSu5Hm7hJSrqQwXmHYFXOAZTuF3r9p/uw3J9MvMdW8guzWUDxuNOGg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4659
X-OriginatorOrg: intel.com
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgRGVjZW1iZXIgMTMsIDIwMjMgMzo1NSBQTQ0K
PiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbUEFUQ0gg
MS85XSBkcm0vaTkxNTogRGVjb3VwbGUgaW50ZWxfY3J0Y192YmxhbmtfZXZhZGVfc2NhbmxpbmVz
KCkNCj4gZnJvbSBhdG9taWMgY29tbWl0cw0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2
aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IFdlJ2xsIGJlIG5lZWRpbmcgdG8g
ZG8gdmJsYW5rIGV2YXNpb24gYXJvdW5kIGxlZ2FjeSBjdXJzb3IgdXBkYXRlcywgd2hpY2ggZG9u
J3QNCj4gaGF2ZSB0aGUgaW50ZWxfYXRvbWljX3N0YXRlIGFyb3VuZC4gU28gbGV0J3MgcmVtb3Zl
IHRoaXMgZGVwZW5kZW5jeSBvbiBhIGZ1bGwNCj4gY29tbWl0IGFuZCBwYXNzIHRoZSBjcnRjIHN0
YXRlIGluIGJ5IGhhbmQuDQoNCkxvb2tzIEdvb2QgdG8gbWUuDQpSZXZpZXdlZC1ieTogVW1hIFNo
YW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0Yy5jIHwgMTYgKysrKysrKystLS0tLS0t
LQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkNCj4g
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydGMu
Yw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0Yy5jDQo+IGluZGV4
IDhhODRhMzFjN2I0OC4uZDVjM2Y2MDc4ZTQyIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydGMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2NydGMuYw0KPiBAQCAtNDcxLDE0ICs0NzEsMTEgQEAgc3RhdGljIGlu
dCBpbnRlbF9tb2RlX3ZibGFua19zdGFydChjb25zdCBzdHJ1Y3QNCj4gZHJtX2Rpc3BsYXlfbW9k
ZSAqbW9kZSkNCj4gIAlyZXR1cm4gdmJsYW5rX3N0YXJ0Ow0KPiAgfQ0KPiANCj4gLXN0YXRpYyB2
b2lkIGludGVsX2NydGNfdmJsYW5rX2V2YWRlX3NjYW5saW5lcyhzdHJ1Y3QgaW50ZWxfYXRvbWlj
X3N0YXRlICpzdGF0ZSwNCj4gLQkJCQkJICAgICAgc3RydWN0IGludGVsX2NydGMgKmNydGMsDQo+
ICtzdGF0aWMgdm9pZCBpbnRlbF9jcnRjX3ZibGFua19ldmFkZV9zY2FubGluZXMoY29uc3Qgc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUNCj4gKm9sZF9jcnRjX3N0YXRlLA0KPiArCQkJCQkgICAgICBj
b25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqbmV3X2NydGNfc3RhdGUsDQo+ICAJCQkJ
CSAgICAgIGludCAqbWluLCBpbnQgKm1heCwgaW50ICp2Ymxhbmtfc3RhcnQpDQo+IHsNCj4gLQlj
b25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUgPQ0KPiAtCQlpbnRl
bF9hdG9taWNfZ2V0X29sZF9jcnRjX3N0YXRlKHN0YXRlLCBjcnRjKTsNCj4gLQljb25zdCBzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqbmV3X2NydGNfc3RhdGUgPQ0KPiAtCQlpbnRlbF9hdG9taWNf
Z2V0X25ld19jcnRjX3N0YXRlKHN0YXRlLCBjcnRjKTsNCj4gKwlzdHJ1Y3QgaW50ZWxfY3J0YyAq
Y3J0YyA9IHRvX2ludGVsX2NydGMobmV3X2NydGNfc3RhdGUtPnVhcGkuY3J0Yyk7DQo+ICAJY29u
c3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGU7DQo+ICAJY29uc3Qgc3RydWN0
IGRybV9kaXNwbGF5X21vZGUgKmFkanVzdGVkX21vZGU7DQo+IA0KPiBAQCAtNDk3LDcgKzQ5NCw3
IEBAIHN0YXRpYyB2b2lkIGludGVsX2NydGNfdmJsYW5rX2V2YWRlX3NjYW5saW5lcyhzdHJ1Y3QN
Cj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gDQo+ICAJaWYgKGNydGMtPm1vZGVfZmxh
Z3MgJiBJOTE1X01PREVfRkxBR19WUlIpIHsNCj4gIAkJLyogdGltaW5nIGNoYW5nZXMgc2hvdWxk
IGhhcHBlbiB3aXRoIFZSUiBkaXNhYmxlZCAqLw0KPiAtCQlkcm1fV0FSTl9PTihzdGF0ZS0+YmFz
ZS5kZXYsDQo+IGludGVsX2NydGNfbmVlZHNfbW9kZXNldChuZXdfY3J0Y19zdGF0ZSkgfHwNCj4g
KwkJZHJtX1dBUk5fT04oY3J0Yy0+YmFzZS5kZXYsDQo+IGludGVsX2NydGNfbmVlZHNfbW9kZXNl
dChuZXdfY3J0Y19zdGF0ZSkNCj4gK3x8DQo+ICAJCQkgICAgbmV3X2NydGNfc3RhdGUtPnVwZGF0
ZV9tX24gfHwgbmV3X2NydGNfc3RhdGUtDQo+ID51cGRhdGVfbHJyKTsNCj4gDQo+ICAJCWlmIChp
bnRlbF92cnJfaXNfcHVzaF9zZW50KGNydGNfc3RhdGUpKQ0KPiBAQCAtNTQyLDYgKzUzOSw4IEBA
IHZvaWQgaW50ZWxfcGlwZV91cGRhdGVfc3RhcnQoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZQ0K
PiAqc3RhdGUsDQo+ICAJCQkgICAgIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQ0KPiAgew0KPiAg
CXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5k
ZXYpOw0KPiArCWNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpvbGRfY3J0Y19zdGF0ZSA9
DQo+ICsJCWludGVsX2F0b21pY19nZXRfb2xkX2NydGNfc3RhdGUoc3RhdGUsIGNydGMpOw0KPiAg
CXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0ZSA9DQo+ICAJCWludGVsX2F0
b21pY19nZXRfbmV3X2NydGNfc3RhdGUoc3RhdGUsIGNydGMpOw0KPiAgCWxvbmcgdGltZW91dCA9
IG1zZWNzX3RvX2ppZmZpZXNfdGltZW91dCgxKTsgQEAgLTU2Niw3ICs1NjUsOCBAQCB2b2lkDQo+
IGludGVsX3BpcGVfdXBkYXRlX3N0YXJ0KHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRl
LA0KPiAgCWlmIChpbnRlbF9jcnRjX25lZWRzX3ZibGFua193b3JrKG5ld19jcnRjX3N0YXRlKSkN
Cj4gIAkJaW50ZWxfY3J0Y192Ymxhbmtfd29ya19pbml0KG5ld19jcnRjX3N0YXRlKTsNCj4gDQo+
IC0JaW50ZWxfY3J0Y192YmxhbmtfZXZhZGVfc2NhbmxpbmVzKHN0YXRlLCBjcnRjLCAmbWluLCAm
bWF4LA0KPiAmdmJsYW5rX3N0YXJ0KTsNCj4gKwlpbnRlbF9jcnRjX3ZibGFua19ldmFkZV9zY2Fu
bGluZXMob2xkX2NydGNfc3RhdGUsIG5ld19jcnRjX3N0YXRlLA0KPiArCQkJCQkgICZtaW4sICZt
YXgsICZ2Ymxhbmtfc3RhcnQpOw0KPiAgCWlmIChtaW4gPD0gMCB8fCBtYXggPD0gMCkNCj4gIAkJ
Z290byBpcnFfZGlzYWJsZTsNCj4gDQo+IC0tDQo+IDIuNDEuMA0KDQo=
