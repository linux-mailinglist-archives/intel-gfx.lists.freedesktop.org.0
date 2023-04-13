Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C35FA6E1369
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 19:22:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9796610E1E3;
	Thu, 13 Apr 2023 17:22:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF0C010E19A
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Apr 2023 17:22:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681406564; x=1712942564;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=88m7+yl0uRtdnAdPN+NMjw3gk78ASMeXe5vcIdzxzzQ=;
 b=nOou269E9yU5JpmOJPiCWsoOk1ofq/yQZEXuDAp0i7tyYf+4QKMv23CR
 x5RLmMwi5RZVyR5AcKBOMI/M+jWly53zjOH4lJ0gE42WDnSdh7PAjBQo+
 yZ6M4F/zPLwm8qoCBDZ+uKXyduc9XpUX4VFS/Lvr1KKHi/qSI/9co9hEP
 ex85d55cjl4rIelAjzKvp6uEtPtlngD/0fdt2PXqh1Dol/hTNs4CZkufz
 Hl074uSM3HFl45b1szLPD/1havzjLslf/YgsWEdn4LtbPQItAWOPrJelY
 gD1q/2EYMgbQVMLduP0fz4+YokQsNG8oTj5W75/7yiOvSbtAA2zA9L6eP w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="430536944"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="430536944"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 10:22:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="754093113"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="754093113"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga008.fm.intel.com with ESMTP; 13 Apr 2023 10:22:43 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 13 Apr 2023 10:22:43 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 13 Apr 2023 10:22:42 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 13 Apr 2023 10:22:42 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 13 Apr 2023 10:22:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PqWBnTuRkfeOGfL0H7S6SLSWHB/+wGxD9h9Ya60MU44KPlVj8QJ1099IAGTBUpifrI2Kj/7zdhXUy7isq3L8urkYS3wTxBTrm7D5heZZRdu3gTlP1A5RzBJFyUYpQ4iHlwcolYfthy3URPa8uFoIL4s4jZy65CKJwz7potkPciwsiCOzsIhGMiktBk2PtrVXNAU6x+DY7Y0BTKAN52B2h75WWpI7xWV0WepxgakE8fxQWQQFCZlJDgF98VyZLgspY9LnzhlFQ+7Kautv7MgCsHI57ZkkoPJLt/r+aPUkn84nV1jooZNuL0gtDSZPX9+GaRBD43/ZdvWDofJTYIjK1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=88m7+yl0uRtdnAdPN+NMjw3gk78ASMeXe5vcIdzxzzQ=;
 b=Cfapgdhfj5+RfJQ4vQHXHuTLNNL16LBp7m8KJd170rePaqkPEzKZ391rQV4Xv5DIfFLxPs5+qNpjwUl7xHMjShHTFXufD9FLFTH9lc5ypLQwNbvjgMJ3MuDJSDAWnfneFOSh8JgLk6EBxZfgRkSj78xB75GWOL5PJBOERkERCnJ0lFG053iSpwSLQXv5zOb1pKZRU4MfPDYqxb01Z2NH2VSSlOe6lATQnV/O0xatOhxgsDgegAkw1oxacIIICSOc6TYn2Tile4kwhxKFQfzMzYcpeTfP85QmUeNwV/GRX1C7WRUugve7JwMX6Izo+pmEe3QS9H3qd0tBnhlpykECJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1935.namprd11.prod.outlook.com (2603:10b6:300:10c::20)
 by MN6PR11MB8196.namprd11.prod.outlook.com (2603:10b6:208:47b::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.30; Thu, 13 Apr
 2023 17:22:41 +0000
Received: from MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::47e0:df10:25c7:ce5f]) by MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::47e0:df10:25c7:ce5f%7]) with mapi id 15.20.6298.030; Thu, 13 Apr 2023
 17:22:40 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/3] drm/i915: Allow arbitrary refresh rates
 with VRR eDP panels
Thread-Index: AQHZZx6TNhX9E3PeDEigCFZ++6REJq8pik5Q
Date: Thu, 13 Apr 2023 17:22:40 +0000
Message-ID: <MWHPR11MB1935D57CDD6CCA5D1E00B7D8B2989@MWHPR11MB1935.namprd11.prod.outlook.com>
References: <20230404175431.23064-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230404175431.23064-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR11MB1935:EE_|MN6PR11MB8196:EE_
x-ms-office365-filtering-correlation-id: e8abae9e-4f2e-4203-5de7-08db3c43af3a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: plSaxzqPNK++99dhHr32jM61z3U364ndYKra6RVKEc/MAGMv4HfMWt4AwaomhywSh0i3FEafnMwsqtPePcFP2tJHhkjUyuGCpCYbPu74BnKbAHkm7De/RzkZy25RtScY/Rp7nXBkO3/g/UygRIwsAG+StJolPfHw/Mn2n+VhKXgatIQ3lPHpMFzpDULFSD5zDvTJlDedECCb71W5UkH2+1LK2H4ojHyron+G23E4E74ihiTe/Jaat0kdNNb11aRexI1PwM8J39mEVksrxibooce38BRXGw3XTItPU/lqt1RXwptqnBxX8wx3FkSASbpjV4lvYWTfu5Wwx35bpE1QKRfZXO6WRrr+hl/hzhhMiHoDMGMhKFOOwPT4+/jznNyD0fp6G3w4Zhn9GLOvCedJuwW8iRn2Pl3rRb0enX29qizQJImKaIFsEqjgLClBkmMfwo4zFtNqrz09lh1PZ0JzyBabrmfFeM086eP8jWzY8CP7/OF/F9L9CkzudNlXPTMT7WgfyY0uh6EYXnO+GziaWMPzQ40W6VJDhv+YXnNVmO7W0c9Xzvmmfv1ezUaZauvO6nOEUDilqv14NkbKHNIDBbMSo2SEkjq8ylb1uoZyKkZM/Q+LkIaanNamwCzYF1cx
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1935.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(396003)(366004)(346002)(376002)(39860400002)(451199021)(33656002)(76116006)(66574015)(83380400001)(26005)(71200400001)(478600001)(186003)(9686003)(55236004)(53546011)(7696005)(6506007)(52536014)(2906002)(38100700002)(38070700005)(122000001)(4326008)(66476007)(66556008)(66946007)(6916009)(82960400001)(41300700001)(66446008)(55016003)(8936002)(86362001)(64756008)(5660300002)(8676002)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?REw1VWViSVpzbmlPanhIL3BBWXRRVXpQRDRKTVpUMVM0dHJmWnZFRDJsK1dz?=
 =?utf-8?B?QTkvZlBBdU9YcnE5cm5MQ21vWEt5bWJ2amM3RXQzbVBMTWpRR2Z4Q3BCUi9P?=
 =?utf-8?B?eVdWUHhrZG1qTkRqMHdqZ0ZkcTR0Q0NRc29QWnVMb2ZDUWpiblRsM0NTWEFM?=
 =?utf-8?B?NklPNXorZXhFTmZZcFRveFQ5Q3RXUjhWNGRnOWNNUUtjWE9INElxYXBaVGJI?=
 =?utf-8?B?TDlUcEk2WE03Zk11MlAvS3BlYVBiWi9DYk5ObHdnYUNCVytmRDlDRTFFVlk4?=
 =?utf-8?B?eVFSZEJUZ2c3TFRDWW42SThDelNhVnRXelNHVVRvOXBJUzEzSkt1NDczUFRi?=
 =?utf-8?B?dVZIVTl5Tm9McFFsUTJlR2lta2xJcWxUR043SmhzZlM4WjRvWnlFcmYrZ1Vt?=
 =?utf-8?B?UktGMzRrVUpLU2Y4Y25ZNmhtN29JbytYUGM4QitnOGM3NnNrZWFzZkVGbTh4?=
 =?utf-8?B?SW9lMThnNjhrZHdWa2xXcFBuVU9HSXFuQ2lPNEE0YTR3dE1Jc0lybk1lRUxv?=
 =?utf-8?B?Yk9NN2tqdTFubFBramtCTzI5Y0FZNjVzdWdtc0M4b01SY0lVU2RITmltSkdL?=
 =?utf-8?B?ZHM1ZFR1ZDdYc2lBQk9QTGpKd0dVWWtxTkEybTJ5TEdUakV2U0VzMmZ2M1hP?=
 =?utf-8?B?VC8zejhZakI5Nk9GekpMUlp3UEl4M0xvbkpDMEdmZ3hrK3lES2pYQ24rWUpD?=
 =?utf-8?B?WUdsYlliV2ZGUXRmdFFvaTlhUzJsRzBhN1FCVEVranJCRVdWaDBOMk9xVmZC?=
 =?utf-8?B?RVJwWmdubzV4Y2xKSzBpbFNMYldiM3lBY1ovT05CWlJqeEU0L2VydDhEQXMw?=
 =?utf-8?B?MndpMGJNYlBhQVVBNUJxRUxrVnFIK096bm9sSlVVRDNvd2tJVGZxT0lHWGx4?=
 =?utf-8?B?WG51a21mWHd1VHFEYVFXTlRaU2UxSU9ZbFV2MDVScURHeEJVY1lJZE5ta2Yy?=
 =?utf-8?B?UHpZS2JaRm5YczYvcy9GRXZTYlp3OS9wNEQ1bjIxb0xVTFU4bWp6bkxJMTJM?=
 =?utf-8?B?S0k4QmVlcjJiMTBiOEZ4NThvSTNNZVN5T2N0cGNYUHZFYWtnWW1hdmtuM3V5?=
 =?utf-8?B?K1Jka3hvNXJwRDZ4eG12OHkwK2M4YTFFQ2g5NVNva3dNZXh1VCtLR1ZRNW5W?=
 =?utf-8?B?dUw0NDZVMnlLVTlrU2c0WGtsWUdFdGQzK0NHTXZWRndrcDJ1MGdXMVVMZktD?=
 =?utf-8?B?Mm1tN2FxNXk2ZHQxQnJ5aXQzN1k3WGdxeDVabXprdFJ2SDM5OGxBUU9QQU56?=
 =?utf-8?B?SmdNSWpodTRlLzg5djUvZlRoeDlDcEFxcGVmYlFRZzhEZk9oMUgyaHJzZGUv?=
 =?utf-8?B?cFpHbGlSTFhYYXpiOWZKbUpOSlJGU0RXRmIwTEdxNXRZUHRXNktOS0Q0eGpB?=
 =?utf-8?B?dE4xZzdaajBocFFYUE5SL0NUSWJzcXFQMVduTnlQM3FXbHVvTnRiVUNxUkFZ?=
 =?utf-8?B?R1ZFUDNaYTJPb2RkTE9KYlB5M0orbWtXaWNjM1diVmFPenV1RVVCNjNndW5E?=
 =?utf-8?B?K3lzT0VleE1lOExTM0pOUGVnZFRoM0ZOd1ViemlMaEtreWNqbnZIYXd6aEho?=
 =?utf-8?B?aEU0ZnlZbG5rNm16aHRSL0hmSXNySmVkVDY0Tm1zOWtNQ1g0K1lWUVo2ZUpL?=
 =?utf-8?B?ZWp4Q0pJVTFmcE92WUR5Y2U3Sng4SHUxTVpwL0NUZ3VzTWVON3gvay92VVY5?=
 =?utf-8?B?ejdqSFhJRGNURmk0cE1VK25JcEF1RXhtajRCRGVMSkVGbUdFQnloNG9XZ0pS?=
 =?utf-8?B?a1R0YnZtM3REaHk2d0d5S0lFU09Ta0h5L21aa0lDeUU1VVorL1RWNnV1b0pa?=
 =?utf-8?B?RW0xNXRzUVVqamY0b25zbzlZNThOT0ZvYTdqOGlKU0RpdnZkT0o2OFNuam1x?=
 =?utf-8?B?RjVNS0tuT0RqTmNUZWxBNEp3ZnZxdnpITVRraWRpbFRjSzNQcUVTVzg5YmFl?=
 =?utf-8?B?U3hiZ0JjRkpJdXJLZm9XRitncytLUytRbFlyWFErczZYaEVPR20vZmZ6ekNB?=
 =?utf-8?B?VFh1Nk9kRURjN1p1a3hmS3J3ejNsSlZYM2VaL1R0MU9MU0FiNnNsU1ExRVNq?=
 =?utf-8?B?MHVDWWQ1bzRTaDZ1aUo0YVNDakVCaVlUSEJPNVhPLzh6KzkyRW9ZUzljQUZp?=
 =?utf-8?B?REhiK0NYKzhZVFVDTCt3ZXVjblZCcWpGMDNHS2dla0E2bEZzU2RLb1FXUlpV?=
 =?utf-8?Q?MzW55zZ92AUzWYTXV7Xi/8g=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1935.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e8abae9e-4f2e-4203-5de7-08db3c43af3a
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Apr 2023 17:22:40.3234 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: w5Th987xHNMhYlu4pihxUFglZ+3doyY9Th+PGALaM7FlY4Dqr03MnCgxqiS0XyEcPOa1QP7l7nyPYDCIehc2LAw8d8RV9hyw5bQuNHUgs4Fqnz1eFYNDroVn0dFvnqF7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8196
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Allow arbitrary refresh rates
 with VRR eDP panels
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

SGkgVmlsbGUsDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwt
Z2Z4IDxpbnRlbC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBP
ZiBWaWxsZQ0KPiBTeXJqYWxhDQo+IFNlbnQ6IDA0IEFwcmlsIDIwMjMgMjM6MjQNCj4gVG86IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW0ludGVsLWdmeF0gW1BB
VENIIDEvM10gZHJtL2k5MTU6IEFsbG93IGFyYml0cmFyeSByZWZyZXNoIHJhdGVzIHdpdGgNCj4g
VlJSIGVEUCBwYW5lbHMNCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBJZiB0aGUgcGFuZWwgc3VwcG9ydHMgVlJSIGl0IG11
c3QgYmUgY2FwYWJsZSBvZiBhY2NlcHRpbmcgdGltaW5ncyB3aXRoDQo+IGFyYml0cmFyeSB2Ymxh
bmsgbGVuZ3RoLCB3aXRoaW4gdGhlIHZhbGlkIFZSUiByYW5nZS4gVXNlIHRoYXQgZmFjdCB0byBh
bGxvdyB0aGUNCj4gdXNlciB0byByZXF1ZXN0IGFueSByZWZyZXNoIHJhdGUgdGhleSBsaWtlLiBX
ZSBzaW1wbHkgcGljayB0aGUgbmV4dCBoaWdoZXN0DQo+IGZpeGVkIG1vZGUgZnJvbSBvdXIgbGlz
dCwgYW5kIGFkanVzdCB0aGUgdmJsYW5rIHRvIGdldCB0aGUgZGVzaXJlZCByZWZyZXNoDQo+IHJh
dGUgaW4gdGhlIGVuZC4NCj4gDQo+IE9mIGNvdXJzZSBjdXJyZW50bHkgZXZlcnl0aGluZyB0byBk
byB3aXRoIHRoZSB2cmVmcmVzaCBpcyB1c2luZyAxSHogcHJlY2lzaW9uLA0KPiBzbyBtaWdodCBu
b3QgYmUgZXhhY3QuIEJ1dCB3ZSBjYW4gaW1wcm92ZSB0aGF0IGluIHRoZSBmdXR1cmUgYnkganVz
dCB1cHBpbmcNCj4gb3VyIHZyZWZyZXNoIHByZWNpc2lvbi4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6
IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0K
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wYW5lbC5jIHwgODAgKysrKysr
KysrKysrKysrKysrLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDY2IGluc2VydGlvbnMoKyksIDE0
IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcGFuZWwuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcGFuZWwuYw0KPiBpbmRleCBjZTJhMzRhMjUyMTEuLjlhY2RkNjhiMmRiYyAxMDA2NDQNCj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wYW5lbC5jDQo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcGFuZWwuYw0KPiBAQCAtNDIsNiAr
NDIsNyBAQA0KPiAgI2luY2x1ZGUgImludGVsX2x2ZHNfcmVncy5oIg0KPiAgI2luY2x1ZGUgImlu
dGVsX3BhbmVsLmgiDQo+ICAjaW5jbHVkZSAiaW50ZWxfcXVpcmtzLmgiDQo+ICsjaW5jbHVkZSAi
aW50ZWxfdnJyLmgiDQo+IA0KPiAgYm9vbCBpbnRlbF9wYW5lbF91c2Vfc3NjKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1KSAgeyBAQCAtNTgsNiArNTksMzgNCj4gQEAgaW50ZWxfcGFuZWxf
cHJlZmVycmVkX2ZpeGVkX21vZGUoc3RydWN0IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yKQ0K
PiAgCQkJCQlzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSwgaGVhZCk7DQo+ICB9DQo+IA0KPiArc3Rh
dGljIGJvb2wgaXNfaW5fdnJyX3JhbmdlKHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3Rv
ciwgaW50DQo+ICt2cmVmcmVzaCkgew0KPiArCWNvbnN0IHN0cnVjdCBkcm1fZGlzcGxheV9pbmZv
ICppbmZvID0gJmNvbm5lY3Rvci0NCj4gPmJhc2UuZGlzcGxheV9pbmZvOw0KPiArDQo+ICsJcmV0
dXJuIGludGVsX3Zycl9pc19jYXBhYmxlKGNvbm5lY3RvcikgJiYNCj4gKwkJdnJlZnJlc2ggPj0g
aW5mby0+bW9uaXRvcl9yYW5nZS5taW5fdmZyZXEgJiYNCj4gKwkJdnJlZnJlc2ggPD0gaW5mby0+
bW9uaXRvcl9yYW5nZS5tYXhfdmZyZXE7IH0NCj4gKw0KPiArc3RhdGljIGJvb2wgaXNfYmVzdF9m
aXhlZF9tb2RlKHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvciwNCj4gKwkJCSAgICAg
ICBpbnQgdnJlZnJlc2gsIGludCBmaXhlZF9tb2RlX3ZyZWZyZXNoLA0KPiArCQkJICAgICAgIGNv
bnN0IHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICpiZXN0X21vZGUpIHsNCj4gKwkvKiB3ZSB3YW50
IHRvIGFsd2F5cyByZXR1cm4gc29tZXRoaW5nICovDQo+ICsJaWYgKCFiZXN0X21vZGUpDQo+ICsJ
CXJldHVybiB0cnVlOw0KPiArDQo+ICsJLyoNCj4gKwkgKiBXaXRoIFZSUiBhbHdheXMgcGljayBh
IG1vZGUgd2l0aCBlcXVhbC9oaWdoZXIgdGhhbiByZXF1ZXN0ZWQNCj4gKwkgKiB2cmVmcmVzaCwg
d2hpY2ggd2UgY2FuIHRoZW4gcmVkdWNlIHRvIG1hdGNoIHRoZSByZXF1ZXN0ZWQNCj4gKwkgKiB2
cmVmcmVzaCBieSBleHRlbmRpbmcgdGhlIHZibGFuayBsZW5ndGguDQo+ICsJICovDQo+ICsJaWYg
KGlzX2luX3Zycl9yYW5nZShjb25uZWN0b3IsIHZyZWZyZXNoKSAmJg0KPiArCSAgICBpc19pbl92
cnJfcmFuZ2UoY29ubmVjdG9yLCBmaXhlZF9tb2RlX3ZyZWZyZXNoKSAmJg0KPiArCSAgICBmaXhl
ZF9tb2RlX3ZyZWZyZXNoIDwgdnJlZnJlc2gpDQo+ICsJCXJldHVybiBmYWxzZTsNCj4gKw0KPiAr
CS8qIHBpY2sgdGhlIGZpeGVkX21vZGUgdGhhdCBpcyBjbG9zZXN0IGluIHRlcm1zIG9mIHZyZWZy
ZXNoICovDQo+ICsJcmV0dXJuIGFicyhmaXhlZF9tb2RlX3ZyZWZyZXNoIC0gdnJlZnJlc2gpIDwN
Cj4gKwkJYWJzKGRybV9tb2RlX3ZyZWZyZXNoKGJlc3RfbW9kZSkgLSB2cmVmcmVzaCk7IH0NCj4g
Kw0KPiAgY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKg0KPiAgaW50ZWxfcGFuZWxfZml4
ZWRfbW9kZShzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IsDQo+ICAJCSAgICAgICBj
b25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqbW9kZSkgQEAgLTY1LDExDQo+ICs5OCwxMSBA
QCBpbnRlbF9wYW5lbF9maXhlZF9tb2RlKHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3Rv
ciwNCj4gIAljb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqZml4ZWRfbW9kZSwgKmJlc3Rf
bW9kZSA9IE5VTEw7DQo+ICAJaW50IHZyZWZyZXNoID0gZHJtX21vZGVfdnJlZnJlc2gobW9kZSk7
DQo+IA0KPiAtCS8qIHBpY2sgdGhlIGZpeGVkX21vZGUgdGhhdCBpcyBjbG9zZXN0IGluIHRlcm1z
IG9mIHZyZWZyZXNoICovDQo+ICAJbGlzdF9mb3JfZWFjaF9lbnRyeShmaXhlZF9tb2RlLCAmY29u
bmVjdG9yLT5wYW5lbC5maXhlZF9tb2RlcywNCj4gaGVhZCkgew0KPiAtCQlpZiAoIWJlc3RfbW9k
ZSB8fA0KPiAtCQkgICAgYWJzKGRybV9tb2RlX3ZyZWZyZXNoKGZpeGVkX21vZGUpIC0gdnJlZnJl
c2gpIDwNCj4gLQkJICAgIGFicyhkcm1fbW9kZV92cmVmcmVzaChiZXN0X21vZGUpIC0gdnJlZnJl
c2gpKQ0KPiArCQlpbnQgZml4ZWRfbW9kZV92cmVmcmVzaCA9DQo+IGRybV9tb2RlX3ZyZWZyZXNo
KGZpeGVkX21vZGUpOw0KPiArDQo+ICsJCWlmIChpc19iZXN0X2ZpeGVkX21vZGUoY29ubmVjdG9y
LCB2cmVmcmVzaCwNCj4gKwkJCQkgICAgICAgZml4ZWRfbW9kZV92cmVmcmVzaCwgYmVzdF9tb2Rl
KSkNCj4gIAkJCWJlc3RfbW9kZSA9IGZpeGVkX21vZGU7DQo+ICAJfQ0KPiANCj4gQEAgLTE3OCwy
NyArMjExLDQ2IEBAIGludCBpbnRlbF9wYW5lbF9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QNCj4gaW50
ZWxfY29ubmVjdG9yICpjb25uZWN0b3IsICB7DQo+ICAJY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5
X21vZGUgKmZpeGVkX21vZGUgPQ0KPiAgCQlpbnRlbF9wYW5lbF9maXhlZF9tb2RlKGNvbm5lY3Rv
ciwgYWRqdXN0ZWRfbW9kZSk7DQo+ICsJaW50IHZyZWZyZXNoLCBmaXhlZF9tb2RlX3ZyZWZyZXNo
Ow0KPiArCWJvb2wgaXNfdnJyOw0KPiANCj4gIAlpZiAoIWZpeGVkX21vZGUpDQo+ICAJCXJldHVy
biAwOw0KPiANCj4gKwl2cmVmcmVzaCA9IGRybV9tb2RlX3ZyZWZyZXNoKGFkanVzdGVkX21vZGUp
Ow0KPiArCWZpeGVkX21vZGVfdnJlZnJlc2ggPSBkcm1fbW9kZV92cmVmcmVzaChmaXhlZF9tb2Rl
KTsNCj4gKw0KPiAgCS8qDQo+IC0JICogV2UgZG9uJ3Qgd2FudCB0byBsaWUgdG9vIG11Y2ggdG8g
dGhlIHVzZXIgYWJvdXQgdGhlIHJlZnJlc2gNCj4gLQkgKiByYXRlIHRoZXkncmUgZ29pbmcgdG8g
Z2V0LiBCdXQgd2UgaGF2ZSB0byBhbGxvdyBhIGJpdCBvZiBsYXRpdHVkZQ0KPiAtCSAqIGZvciBY
b3JnIHNpbmNlIGl0IGxpa2VzIHRvIGF1dG9tYWdpY2FsbHkgY29vayB1cCBtb2RlcyB3aXRoIHNs
aWdodGx5DQo+IC0JICogb2ZmIHJlZnJlc2ggcmF0ZXMuDQo+ICsJICogQXNzdW1lIHRoYXQgd2Ug
c2hvdWxkbid0IG11Y2sgYWJvdXQgd2l0aCB0aGUNCj4gKwkgKiB0aW1pbmdzIGlmIHRoZXkgZG9u
J3QgbGFuZCBpbiB0aGUgVlJSIHJhbmdlLg0KPiAgCSAqLw0KPiAtCWlmIChhYnMoZHJtX21vZGVf
dnJlZnJlc2goYWRqdXN0ZWRfbW9kZSkgLQ0KPiBkcm1fbW9kZV92cmVmcmVzaChmaXhlZF9tb2Rl
KSkgPiAxKSB7DQo+IC0JCWRybV9kYmdfa21zKGNvbm5lY3Rvci0+YmFzZS5kZXYsDQo+IC0JCQkg
ICAgIltDT05ORUNUT1I6JWQ6JXNdIFJlcXVlc3RlZCBtb2RlIHZyZWZyZXNoDQo+ICglZCBIeikg
ZG9lcyBub3QgbWF0Y2ggZml4ZWQgbW9kZSB2cmVmcmVzaCAoJWQgSHopXG4iLA0KPiAtCQkJICAg
IGNvbm5lY3Rvci0+YmFzZS5iYXNlLmlkLCBjb25uZWN0b3ItPmJhc2UubmFtZSwNCj4gLQkJCSAg
ICBkcm1fbW9kZV92cmVmcmVzaChhZGp1c3RlZF9tb2RlKSwNCj4gZHJtX21vZGVfdnJlZnJlc2go
Zml4ZWRfbW9kZSkpOw0KPiArCWlzX3ZyciA9IGlzX2luX3Zycl9yYW5nZShjb25uZWN0b3IsIHZy
ZWZyZXNoKSAmJg0KPiArCQlpc19pbl92cnJfcmFuZ2UoY29ubmVjdG9yLCBmaXhlZF9tb2RlX3Zy
ZWZyZXNoKTsNCj4gDQo+IC0JCXJldHVybiAtRUlOVkFMOw0KPiArCWlmICghaXNfdnJyKSB7DQo+
ICsJCS8qDQo+ICsJCSAqIFdlIGRvbid0IHdhbnQgdG8gbGllIHRvbyBtdWNoIHRvIHRoZSB1c2Vy
IGFib3V0IHRoZQ0KPiByZWZyZXNoDQo+ICsJCSAqIHJhdGUgdGhleSdyZSBnb2luZyB0byBnZXQu
IEJ1dCB3ZSBoYXZlIHRvIGFsbG93IGEgYml0IG9mDQo+IGxhdGl0dWRlDQo+ICsJCSAqIGZvciBY
b3JnIHNpbmNlIGl0IGxpa2VzIHRvIGF1dG9tYWdpY2FsbHkgY29vayB1cCBtb2RlcyB3aXRoDQo+
IHNsaWdodGx5DQo+ICsJCSAqIG9mZiByZWZyZXNoIHJhdGVzLg0KPiArCQkgKi8NCj4gKwkJaWYg
KGFicyh2cmVmcmVzaCAtIGZpeGVkX21vZGVfdnJlZnJlc2gpID4gMSkgew0KPiArCQkJZHJtX2Ri
Z19rbXMoY29ubmVjdG9yLT5iYXNlLmRldiwNCj4gKwkJCQkgICAgIltDT05ORUNUT1I6JWQ6JXNd
IFJlcXVlc3RlZCBtb2RlDQo+IHZyZWZyZXNoICglZCBIeikgZG9lcyBub3QgbWF0Y2ggZml4ZWQg
bW9kZSB2cmVmcmVzaCAoJWQgSHopXG4iLA0KPiArCQkJCSAgICBjb25uZWN0b3ItPmJhc2UuYmFz
ZS5pZCwgY29ubmVjdG9yLQ0KPiA+YmFzZS5uYW1lLA0KPiArCQkJCSAgICB2cmVmcmVzaCwgZml4
ZWRfbW9kZV92cmVmcmVzaCk7DQo+ICsNCj4gKwkJCXJldHVybiAtRUlOVkFMOw0KPiArCQl9DQo+
ICAJfQ0KPiANCj4gIAlkcm1fbW9kZV9jb3B5KGFkanVzdGVkX21vZGUsIGZpeGVkX21vZGUpOw0K
PiANCj4gKwlpZiAoaXNfdnJyICYmIGZpeGVkX21vZGVfdnJlZnJlc2ggIT0gdnJlZnJlc2gpDQo+
ICsJCWFkanVzdGVkX21vZGUtPnZ0b3RhbCA9DQo+ICsJCQlESVZfUk9VTkRfQ0xPU0VTVChhZGp1
c3RlZF9tb2RlLT5jbG9jayAqIDEwMDAsDQo+ICsJCQkJCSAgYWRqdXN0ZWRfbW9kZS0+aHRvdGFs
ICogdnJlZnJlc2gpOw0KPiArDQoNCkNoYW5nZXMgTEdUTQ0KVGhhbmtzDQoNClJldmlld2VkLWJ5
OiBNaXR1bCBHb2xhbmkgPG1pdHVsa3VtYXIuYWppdGt1bWFyLmdvbGFuaUBpbnRlbC5jb20+DQoN
Cj4gIAlkcm1fbW9kZV9zZXRfY3J0Y2luZm8oYWRqdXN0ZWRfbW9kZSwgMCk7DQo+IA0KPiAgCXJl
dHVybiAwOw0KPiAtLQ0KPiAyLjM5LjINCg0K
