Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB7736FE500
	for <lists+intel-gfx@lfdr.de>; Wed, 10 May 2023 22:27:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8241710E517;
	Wed, 10 May 2023 20:27:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE3C710E516
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 May 2023 20:27:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683750466; x=1715286466;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=T0EZzrsN5ll0Xm49/mERr4jV9/rrHkGg+g01ZgZT2ds=;
 b=UgxQvMBY9rE+FkhrZjqzNG+K8xtchFC8JC71l6/rWZSsId0Ln7kieVzo
 Rl2K8uYuR/0srPfbNoULtNKnQg2bMmpXKFmIZn6QgW7XtmL6oMHJZdcj2
 hfNVhuLpi7pPqhoWTRfPCaBGv9EgfXJugglRCYMwza/YEq/u4/D4xtPXU
 jcJk/RBReNoT2EB5ak7TtrkUg2FXhL0vIRgHzKRGZB/Z36yh1beqrGgkI
 3SCKld0AxayDBm7x+S2WG5s5/6E9hTZIhlgYNvG2SkI1AA2QT7vbpWQ8G
 JmlmvwoyjLnnDbEc44+Rh1ikQOFGHTyf6v66qqNqIr+pTsc5VPI0XXfn8 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="349149820"
X-IronPort-AV: E=Sophos;i="5.99,265,1677571200"; d="scan'208";a="349149820"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2023 13:24:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="769035982"
X-IronPort-AV: E=Sophos;i="5.99,265,1677571200"; d="scan'208";a="769035982"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP; 10 May 2023 13:24:17 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 10 May 2023 13:24:17 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 10 May 2023 13:24:17 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.43) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 10 May 2023 13:24:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IZB1OL8He80JIF6hbnJVS+nPFO95DWXwjRKUnlybhGBi143zLz2fNmnn2VnTZ7pMdT86c4bhnmpwYOBZv+oSkImwet7giZDnw/4OplbYlnDcTRzYIqDZlaOYM5w+1P8cn0o3GbF1BQUw0legJgBPDAUWhfwaPgEmbGApZYDlSYQjAMyfb4xEo6wOeFVVr5o/cNy1xbEr6ysYhQRTV3310epZI+V8pWm2un930Z8/GVMdOc+K6sn6dkNJ7PmuwFJBnmcH9vYPLxfLvAMITE597EHjeAc3bXZRQf12SEftNmfUJ+Ug4/ukfBJFxDYhlFteFfINnaJjmN03PbcrFN9FOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T0EZzrsN5ll0Xm49/mERr4jV9/rrHkGg+g01ZgZT2ds=;
 b=NvBTTiMx4+KbB5D9DjBQ2xKuWkOb76kg1TCSSSBZzecwo3SaVPtDBBZJnnUBvEIlSMyfGjinZPzIazZIrLexlAaDsOBQJ1O/uqYUktMYvFPbnZaRSqNErZsS0H4tqZ/ffAjLVPT6TQYEBLUXfyk4VPxJFAkvXcCacFQONnSu87kWsMDr1oeAZPnalLfMiZiY4SCR/XY1oPBmuCWEvlygt5XQ7eKEDkPAJeD7R0pG+JpVFYOVGzy6FIyJB0g+NRX11U50ggqxFg3dKWkwWHJPC7Lv+qinQVUV9tTKm6YpqvhWGxGg1VpDT5iOQITZwUlU/F3Qkckz0a5UCc/GV7xcjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 DM4PR11MB7326.namprd11.prod.outlook.com (2603:10b6:8:106::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6387.20; Wed, 10 May 2023 20:24:14 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::34a1:94e9:ec9b:dfe3]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::34a1:94e9:ec9b:dfe3%6]) with mapi id 15.20.6387.020; Wed, 10 May 2023
 20:24:14 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Justen, Jordan L" <jordan.l.justen@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Landwerlin, Lionel G" <lionel.g.landwerlin@intel.com>, "Souza, Jose"
 <jose.souza@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v9 6/8] drm/i915/uapi/pxp: Add a GET_PARAM
 for PXP
Thread-Index: AQHZeWLWx68i9/8KnU+Unxd6GaMLfq9LMoYAgAAkQACABWFXAIADQ4+AgAAMUgA=
Date: Wed, 10 May 2023 20:24:14 +0000
Message-ID: <4d85e2de4ca6f682e07da49fe5ac6793d4149ff9.camel@intel.com>
References: <20230427234843.2886921-1-alan.previn.teres.alexis@intel.com>
 <20230427234843.2886921-7-alan.previn.teres.alexis@intel.com>
 <8888e3dff8c1c4fd1702ded911850da30330fbfa.camel@intel.com>
 <168327239043.1096084.14316886882692698230@jljusten-skl>
 <e40f2b8750b39facd98f72cda63bc733ca0319d5.camel@intel.com>
 <0a23ff5be69e3d6b6e3b457c2599bc2f018fc71a.camel@intel.com>
In-Reply-To: <0a23ff5be69e3d6b6e3b457c2599bc2f018fc71a.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.1-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|DM4PR11MB7326:EE_
x-ms-office365-filtering-correlation-id: 863b36c3-7b75-4e9f-141b-08db519485d4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4AQbjejymK+9QqEtqNybqBiM93sW3UOhw5Bjmg+6LGOWP9PCfOSDtxob6bw1AjDdoqBkbTt5bJSGx1sEjIsXayvNopwn1ZsAdWdY2zbn4TBH+2MM7/ovbg2naiuzbpZdDYZ7F49+doEpsvc4l9kf0Y554HRW77AeUeU4WJvx/mQhIYBU2Ah8ZXbmlu5ZSBTLGe2+YK/+BIRbOTV70ZoZHjVvAMLsX21kFsgfMtcbAqLGMO42Nt+6agwb8jehRS/Jq+szz051ZkPUe2hhNNTqlJ2JV6PZSm5y1Y50m3PxBCA7MsagknjRDNnsjxomrPR0TvpAFuI0EiAIg+72hE5/kn1P9SijcqIYxkf9X4Izruk3H4px/Zb7YDwpUVs38RNu1eBaIsy5yt6yVVhax13QkMwwWQ2Uchie3HzF/ZmEd503MIMZcwe7gKGmo9iZxTDmkDaQKYKHHVayOMG3gFMh17FEZGSSpbY1yXHM/pec9qOFk5gIBrVsDuP1oV4gu1ioxP6OIhiTVE4dt3QbaGKkHuh1lM6uPWrV+UojRSnEcH7EY7hFf/SgrJnN+lZo1WAY
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(136003)(346002)(396003)(376002)(39860400002)(451199021)(6506007)(186003)(6512007)(478600001)(26005)(83380400001)(2616005)(966005)(71200400001)(6486002)(5660300002)(122000001)(316002)(8936002)(38070700005)(38100700002)(86362001)(41300700001)(8676002)(66476007)(66946007)(64756008)(91956017)(110136005)(66556008)(54906003)(66446008)(4326008)(76116006)(36756003)(6636002)(2906002)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Qzh5UG1tZytIT3dSNjNOSktxblBibVJod29rb2hHL0V0dkloSU40bDVZTGc1?=
 =?utf-8?B?eElNUUNmV0tUaVV5SHZjakpzZFRJWFQ1b0czUEEvcEdtVUZJTjJ4YUVBeGJa?=
 =?utf-8?B?THJFczNvVTFmQzhNYVZ3bjhCN0pvM2JKWG5rdGgwZ0ZKRVpnRzNwZFhJRUFQ?=
 =?utf-8?B?bnNHYlVjUzM1ZkZwckhiYWxITGxPSFhRTlQxWEE5ZmlNRmJxSlFnd3dHbSsv?=
 =?utf-8?B?Y0NGZDdOSFdSZmdRRHQyYStwUmNGU3FIc3VVZFVPbFdkOHZIaVZlRVMreVBS?=
 =?utf-8?B?K1lCdlM0dmRHOFMwVmxJaUhMRUtWVmZxMWJKc0c1TXd2Z1lVNEpXb1FETHMw?=
 =?utf-8?B?K1hCWGd1blMzaHk1SDk2QUFnbURpajdMMmI2OUJjT3NHUGdRN3R3OElhblVY?=
 =?utf-8?B?di9URkNhbUhEVk9EeERqcXNaNW0yMERldXIweXRxcHN1ZkMxTnRXYWU0M1Nm?=
 =?utf-8?B?RWpSTVQxd0VpMUpVbUZ4MUNuekFXTmozOXhDZTJubHFrcWFDZFNzVkdnSU9I?=
 =?utf-8?B?MzNjSEFHT1ZOd3B6a3I0cFR1amxlbk1qQjNscVg1YzhkZmREdmdKZHJteUlh?=
 =?utf-8?B?c244SVZKRGQwclYwSzhjaVNiR1lxWkhCaVJKbjRISC9FWjZvZWNwNVNEMHB2?=
 =?utf-8?B?WmZpSE8yZnJvMDJEUUNXR0xIcGhzSFJBUE42aWVheTUydTByZVEweUUrNWYr?=
 =?utf-8?B?K0kxc1J1UnJHSmU2MStRWjNlaTc2SWxkYkdyb0Q2Uk1lR0loZ2NqUTB5eHFY?=
 =?utf-8?B?RUYwcWNIY2tKTXNWbkl0RzdQSjJZSkprNk9KdlVSeFZ1NUkxN3BHc2pPQTEw?=
 =?utf-8?B?dTdNb2xMa3ZnajlrTzVJSHZrb0h4UFltRDJjdGNkUlplYlI5S1RkK1Zaci9I?=
 =?utf-8?B?ZXFqdElzTStzQmVTM3A2dWRzSU5zamh3WkRhVzM0Yy9yd2tNaHJBR0ZFV1JQ?=
 =?utf-8?B?YnNmTnBPZy94Kzg3am9YdW5BR0lXY2lKQ2QxNGpyTDhsYld3a2dhS1RoUE9m?=
 =?utf-8?B?NDNHRWdiYUpQeFFEeWc4elpQV1BDOERmQjF3ZzJXTk5QbXB6aFZSNU54VlE0?=
 =?utf-8?B?OWp2bi9pMW9jVXpOQWFuejkrN1hJaFB5NGFmcWNudUlCRGlveFBtYSt5NklY?=
 =?utf-8?B?RHRLSG92NGs0K0pWaW5WbEhLR2c2dWVjZDI2NGllbU0zbTNrUG5NcWNrZXFZ?=
 =?utf-8?B?bEJrTEcvTUNhblhvOUNHdDhrY2VJQnYzY3pMR3RaWFRJVHdtcmFDeGtucHpQ?=
 =?utf-8?B?bVEwYWViVlhIU1dNbHk4eTlvVER0VTNEZVB1aXArcSsvTS80VnZCYmgxSWFE?=
 =?utf-8?B?MVBNRitMRUtyWDJ0LzhnRXVXOEw5c1lReHRVejI4RVZvK3J5dXBKQXVRbVFE?=
 =?utf-8?B?S1dFRTNwbUd3RzluZ2dkUXhqUnpzdGJmWFJCL0svalFtQ2FjZU50VWlaMDRC?=
 =?utf-8?B?akREeWpkV25oNDNvYnNoOG5HY1l1U0hwdTRhMkFPSFRjRi91bXBjalJhQnZo?=
 =?utf-8?B?bFpJaVFUSzA3ZEk1QkZJdmxqeTR5OVVuVkIxK2lreUhhbWN2K0U0RjU0NnNo?=
 =?utf-8?B?YXp1YVVoSnQzYWFCdnVBb0xUa3o0aWNBalIyU2piT09ncmNzcHpsK1FsRFRp?=
 =?utf-8?B?OGtpZHdDYTlyRWI4ZXFQbUhDQWNGTzB0S3FvWXJza2dHQ0FuOUxuTlJnVzlV?=
 =?utf-8?B?NyswNFhqM0x6dGdvRU40eUh5VHRBYmphSmREbkRGKzhKTVFTbVc5eGsyWlVa?=
 =?utf-8?B?MjdLV1hZTHZGWXUyazdTeHRPRXl0UklOY0hSb0xDNWw3OE5PT2xWOEo1SWFs?=
 =?utf-8?B?MXdBUDhiNlIzWU5wTnJkdkRZY1dDYVdCL29zRG1DN0RJVXVucm1za1NKNkR2?=
 =?utf-8?B?dGZ2dHBhRjJsTGRvVlhLYVBwOGduTzZuZnJ2cTBvOUp5ODE0VjV3OUlDTm0y?=
 =?utf-8?B?MWhPbnRaT0VBblphQ05wNUtCVlc0cElkWDBVU0ZaaHBCdHdaVmUzbTVMaUdC?=
 =?utf-8?B?RkNXSFBFbEZEYzlxWHg5TDB5N1hwWmg5aWh6eEFVN3ZEbEJXNDRDQ2VPRVNp?=
 =?utf-8?B?MzVYdTdHZjc3ZmZwbUltTzRHUFdMOVBUZ290bTZSa0xoU0JLc2luZ1huSkMy?=
 =?utf-8?B?V1BzNjd6T00yRUFlWFRiNFlwczNyb0IrQ21RVVlWaGEwNXJINEVjdVIzQ0t6?=
 =?utf-8?Q?8KitcGH82kXRKxnzFZVQDMY=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <C4EE0981CC7E274F925913B5380AF237@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 863b36c3-7b75-4e9f-141b-08db519485d4
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 May 2023 20:24:14.4961 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tiEks0wNRwncdpyDIrcQ860vjj2S8kIzyRPh1+m3QgIfSA8IIB5VkVxGwlso/Pn2V+071EbuAZxV/SgBCeO5zZBw9k/bXMSH7XYdSED14mC2buIJDt+X6BSDr29cCe2y
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7326
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v9 6/8] drm/i915/uapi/pxp: Add a GET_PARAM
 for PXP
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
Cc: "ri-devel@lists.freedesktop.org" <ri-devel@lists.freedesktop.org>,
 "ustonli@chromium.org" <ustonli@chromium.org>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiA+ID4gPiA+IEJlY2F1c2Ugb2YgdGhlIGFkZGl0aW9uYWwgZmlybXdhcmUsIGNvbXBvbmVudC1k
cml2ZXIgYW5kDQo+ID4gPiA+ID4gaW5pdGlhbGl6YXRpb24gZGVwZWRlbmNpZXMgcmVxdWlyZWQg
b24gTVRMIHBsYXRmb3JtIGJlZm9yZSBhDQo+ID4gPiA+ID4gUFhQIGNvbnRleHQgY2FuIGJlIGNy
ZWF0ZWQsIFVNRCBjYWxsaW5nIGZvciBQWFAgY3JlYXRpb24gYXMgYQ0KPiA+ID4gPiA+IHdheSB0
byBnZXQtY2FwcyBjYW4gdGFrZSBhIGxvbmcgdGltZS4gQW4gYWN0dWFsIHJlYWwgd29ybGQNCj4g
PiA+ID4gPiBjdXN0b21lciBzdGFjayBoYXMgc2VlbiB0aGlzIGhhcHBlbiBpbiB0aGUgNC10by04
IHNlY29uZCByYW5nZQ0KPiA+ID4gPiA+IGFmdGVyIHRoZSBrZXJuZWwgc3RhcnRzICh3aGljaCBz
ZWVzIE1FU0EncyBpbml0IGFwcGVhciBpbiB0aGUNCj4gPiA+ID4gPiBtaWRkbGUgb2YgdGhpcyBy
YW5nZSBhcyB0aGUgY29tcG9zaXRvciBjb21lcyB1cCkuIFRvIGF2b2lkDQo+ID4gPiA+ID4gdW5u
Y2Vzc2FyeSBkZWxheXMgZXhwZXJpZW5jZWQgYnkgdGhlIFVNRCBmb3IgZ2V0LWNhcHMgcHVycG9z
ZXMsDQo+ID4gPiA+ID4gYWRkIGEgR0VUX1BBUkFNIGZvciBJOTE1X1BBUkFNX1BYUF9TVVBQT1JU
Lg0KPiA+ID4gPiA+IA0KPiA+ID4gPiBhbGFuOnNuaXAuDQo+ID4gPiA+IFByb2dyZXNzIHVwZGF0
ZSBvbiB0aGUgVU1EIHNpZGUgLSBJJ20gd29ya2luZyBvbiBwYXRjaCBmb3IgUFIgaGVyZTogDQo+
ID4gPiA+IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9hbGFuX3ByZXZpbl9pbnRlbC9t
ZXNhLWFsYW4tcHJldmluLWZlYXR1cmVzLy0vY29tbWl0L2ZiOWQ0ZmJmYmVmN2RmZDNmNDFkZjMz
NWNkMzE1NDlmZDM5ZGRiNTcNCj4gPiA+ID4gYnV0IHRha2luZyB0aW1lIHRvIHZlcmlmeSBjZXJ0
YWluIGNvZGUgcGF0aHMNCj4gPiA+IA0KPiA+ID4gSnVzdCB0byBjb25maXJtLCBpZiBJOTE1X1BB
UkFNX1BYUF9TVEFUVVMgcmV0dXJucyAyICgid2lsbCBiZSByZWFkeQ0KPiA+ID4gc29vbiIpLCB0
aGVuIGl0IGlzIGJhc2ljYWxseSBjZXJ0YWluIHRoYXQgaW4gYSBwcm9kdWN0aW9uIGVudmlyb25t
ZW50LA0KPiA+ID4gdGhlbiBpdCB3aWxsIGV2ZW50dWFsbHkgcmV0dXJuIDEgbWVhbmluZyBpdCdz
IHJlYWR5LCByaWdodD8NCj4gPiBhbGFuOiB5ZXMgLSBidXQgbm90IDEwMCUuIG5vbi1wbGF0Zm9y
bS1zdGF0ZS1tYWNoaW5lIGNvdWxkIHN0aWxsDQo+ID4gY2F1c2UgdW5leHBlY3RlZCBmYWlsdXJl
cyBmb3IgZXhhbXBsZSwgWzFdIGlmIGh3IHdhcyBmdXNlZCBpbiBhIHdheQ0KPiA+IHRoYXQgZG9l
c250IHBlcm1pdCBQWFAgb3IgWzJdIGVuYWJsaW5nIGNlcnRhaW4gQklPUyBkZWJ1ZyBrbm9icw0K
PiA+IGRvZXNudCBhbGxvdyBQWFAuIEhvd2V2ZXIgYXQgdGhlIG1vbWVudCwgdGhlcmUgaXMgbm8g
d2F5IGZvciB1cw0KPiA+IHRvIGtub3cgZm9yIHN1cmUgd2l0aG91dCBhY3R1YWxseSBjcmVhdGlu
ZyBhIHByb3RlY3RlZCBjb250ZXh0Lg0KPiA+IE9mIGNvdXJzZSBoYXZpbmcgaHctZnVzaW5nICsg
Ymlvcy1jb25maWcgdGhhdCBzdXBwb3J0cyBQWFAgaGF2ZQ0KPiA+IGFsd2F5cyAxMDAlIHN1Y2Nl
ZWRlZCBmb3IgbWUuDQo+IA0KPiBJbiBteSBvcGluaW9uIGl0IGlzIHByb2JsZW1hdGljIG1hcmsg
dGhhdCB3ZSBzdXBwb3J0IHByb3RlY3RlZCBjb250ZXh0IGJ1dCB0aGVuIGl0IGZhaWxzIHRvIGNy
ZWF0ZSBwcm90ZWN0ZWQgY29udGV4dC4NCj4gDQo+IEl0IHNob3VsZCBjaGVjayB0aGUgSTkxNV9Q
QVJBTV9QWFBfU1RBVFVTIGluIGk5MTVfZ2VtX3N1cHBvcnRzX3Byb3RlY3RlZF9jb250ZXh0KCkg
cmV0dXJuIGVhcmxpZXIgaWYga25vdyB0aGF0IHByb3RlY3RlZCBjb250ZXh0IGlzIG5vdCBzdXBw
b3J0ZWQuDQo+IFRoZW4gY3JlYXRlIGEgcHJvdGVjdGVkIGNvbnRleHQgc28gd2Uga25vdyB0aGF0
IGFsbCBvdGhlciBjYWxscyB3aWxsIHN1Y2NlZWQuDQoNCkhpIEpvc2UsIEkgdGhpbmsgeW91ciBj
b21tZW50IFdSVCBob3cgTUVTQSBjaGFuZ2UgY291bGUgYmUgaW1wbGVtZW50ZWQuIFJpZ2h0IG5v
dyB0aGlzIFVBUEkNCndpbGwgcHJvdmlkZSBhbGwgcG9zc2libGUgaW5mb3JtYXRpb246ICctRU5P
REVWJz09bm8tc3VwcG9ydC4uLiAnMSc9PXN1cHBvcnRlZC1hbmQtcmVhZC4uLg0KJzInPT1zdXBw
b3J0ZWQtYnV0LW5vdC1yZWFkeS4NCg0KVW5mb3J0dW5hdGVseSB0aGUgJzInLT4nMScgdHJhbnNp
dGlvbiBpcyBub3Qgc29tZXRoaW5nIHRoZSBrZXJuZWwgZHJpdmVyIGhhcyBjb250cm9sIG92ZXIu
DQpBcyBwZXIgdGhlIGVhcmxpZXIgcmV2aWV3IGNvbW1lbnRzIGluIHByaW9yIHJldnMgYW5kIHdl
ZWtzIHdpdGggb3RoZXJzIChMaW9uZWwsIEpvcmRhbiwgVHJ2dGtvLA0KRGFuaWVsZSwgZXRjKSwg
ZGVwZW5kaW5nIG9uIGNlcnRhaW4gc2NlbmFyaW9zIChrZXJuZWwgY29uZmlncyB3aXRoIG1hbnkg
Y29tcG9uZW50cyArIGludGVyZGVwZW5kZW5jaWVzLA0KLi4gT1IuLi4gYSBmcmVzaCBwbGF0Zm9y
bS1JRldJLXVwZGF0ZSAuLi4gT1IuLi4gYSBkaXN0cm8gdGhhdCBpcyBkZXNpZ25lZCB0byBib290
IHVuZGVyIDEgc2VjKSwNCnRoZSAiMiItPiIxIiBjYW4gdGFrZSB1cCB0byA4LXNlY29uZHMtZnJv
bS1rZXJuZWwtc3RhcnQuIEluIGFsbW9zdCBhbGwgb3VyIGludGVybmFsIENJIHRlc3RpbmcNCndl
IGFyZSBvbmx5IHNlZWluZyBpdCB0YWtlIDItc2Vjb25kcy1mcm9tLWtlcm5lbC1zdGFydC4NCg0K
VGhhdCBzYWlkLCBwZXJoYXBzIHdlIGNhbiBkaXNjdXNzIHRoZSBNRVNBIGJlaGF2aW9yIG9uIHRo
ZSBNRVNBIHBhdGNoOg0KZG8gd2Ugd2FudCB0byBibG9jayBvbiBpbml0IHRpbWUgZ2V0LWNhcHMg
KGk5MTVfZ2VtX3N1cHBvcnRzX3Byb3RlY3RlZF9jb250ZXh0KSBvciBkdXJpbmcNCnJ1bnRpbWUg
Y29udGV4dC1jcmVhdGlvbiAoaWYgdGhlIHVzZXIgZXhwbGljaXRseSByZXF1ZXN0cyBpdCkuLiBv
ciBuZXZlciBibG9jayBmcm9tIE1FU0ENCmFuZCByZXBvcnQgaWYgdGhlIFBYUCBjb250ZXh0IGZh
aWxlZCBiZWNhdXNlIGl0IHdhc250IHJlYWR5IChzbyB1c2VyIGtub3dzIGl0IGNvdWxkIHJldHJ5
KS4NCjwtLSB0aGlzIGxhc3Qgb25lIHdhcyB3aGF0IEpvcmRhbiB3YW50ZWQgYW5kIHdoYXQgaSBw
b3N0ZWQgaGVyZSBvbiBNRVNBIHBhdGNoOiANCmh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9y
Zy9hbGFuX3ByZXZpbl9pbnRlbC9tZXNhLWFsYW4tcHJldmluLWZlYXR1cmVzLy0vY29tbWl0Lzg3
MjhhYjVhNDBjMWE4M2Y2NWFmZTAwNzJmNDVhOTA2ZmYyNmY3MDYNCg0KSG93ZXZlciwgYXMgaXQg
c3RhbmRzIHRvZGF5LCB0aGlzIFVBUEkga2VybmVsIHBhdGNoIGhhcyBpbmNvcnBvcmF0ZWQgYWxs
DQp0aGUgcmVxdWVzdHMgZnJvbSBwcmlvciByZXZpZXcgY29tbWVudHMgYW5kIHByb3ZpZGVzIGFz
IG11Y2ggaW5mb3JtYXRpb24gYXMgcmVxdWlyZWQuDQpEbyB5b3Ugc2VlIG90aGVyIHNob3J0Y29t
aW5nIHRoaXMga2VybmVsIHNpZGUgVUFQSSBiZWhhdmlvcj/CoA0KaWYgbm90LCBhbiBhY2sgd291
bGQgYmUgZ3JlYXRseSBhcHByZWNpYXRlZCA6KSBzaW5jZSBlYXJsaWVyIGFjayBmcm9tIExpb25l
bA0Kd2FzIG9uIHRoZSBwcmlvciBiZWhhdmlvciBiZWZvcmUgSm9yZGFuJ3MgcmVxdWVzdCBmb3Ig
dGhpcyBtb3JlDQpjb21wcmVoZW5zaXZlIHJlc3BvbnNlLXNldCAoLUVOT0RFViB2cyAnMScgdnMg
JzInKS4NCg==
