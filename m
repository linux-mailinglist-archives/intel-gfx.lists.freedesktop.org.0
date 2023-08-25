Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D08DF7880F0
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Aug 2023 09:35:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8DC810E620;
	Fri, 25 Aug 2023 07:35:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5785710E61F;
 Fri, 25 Aug 2023 07:35:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692948940; x=1724484940;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yILBGL3fQIBBZKxPp+jyn+LZE+2fgE/OngPb0t7CnGw=;
 b=AY6w+dKsJAxlwyU8uiEw4sB+FSiQa2AzF7ZDkelvZkouaneppfgD84pN
 fL+GVCIlcpTfYlXdc6KiU//IcBxc/Sjat+mcgF87QhnPfvQzQORzkHtVY
 nKZF6JrdAedAP6RennOOsXwrLkvXgRqtRsN2h+/t/93uNVqumYFQUVga3
 2X6KPzSJNaXdD5Yj3BQhVUqUTxIghMDk9xe1sQOe5Xb1Y6zYshs30WUy5
 Dxn1gq7nB4J8arRHJYhmEscrjRrZaFNXy2U2PRIlt1v8pWR51YV0KdZF5
 GHLSyp58JvQbaefjy8kpk56YqM7slaYH6axE7mOR66Vld5gnhTCyzhvWv Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="377395833"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="377395833"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2023 00:35:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="687214398"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="687214398"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga003.jf.intel.com with ESMTP; 25 Aug 2023 00:35:39 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 25 Aug 2023 00:35:39 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 25 Aug 2023 00:35:38 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 25 Aug 2023 00:35:38 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 25 Aug 2023 00:35:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=brqpwhfp76UiEYqW4mGtAczQTdwc0jlhKUc9hwZNwTjXMSY7aYLQ8b0uXuLSqf+V7D9lph+pqpZFnDRBzvQKMVWTfRBMUWtwbwQAosJNIS6jtuL0CgqfYoyNzsmA/pxXiKXAx09wTiYWWWwacazQ/XlULmmLhJJk4jr2ESLkOb4hB8BtHeAb+mDXixSZ+ou6zv+cf615bJfQsVH7V5imQ0MpPCEV33JQ/2mz/rYKZapzaX/wZsBHi/sqY+NCaSkphDVHgYmlqRUN+7mQLZdcT+/TfxDxvpogC6bl1aQl4tDVneJ8hNhok7PMqirKKVcJoE/PVBL+dlK+xZgIz88mLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yILBGL3fQIBBZKxPp+jyn+LZE+2fgE/OngPb0t7CnGw=;
 b=GvHbEg54qkEGN2XgYh2sa+278zvBjxNW6OHrL9sZDWfEMn3TbVhnWOKXojMoiUDJjOeWVMXFZgSy3ltpT4DXINRqV43aEFffW1kc0qn7NTpNMxHc2LSk1DgSN9uAZlytp6wfB6xWMwpSqCvHmoQ+gWKTtwQZs6n9UG3wo3YHFShkyossuYn8RgcjZiReSnNS1z4zOr2lzsuC01ee0Uf6vG0yCHVGkE+E1J0xxVv1/EswDFppcEjTOH460OYMstdXj5o10cRhti1dBMkWhIteJGyIwBcuEzA2rdlqdG8m11SWs8kMy/Z9/WQJWE9im2B/oe0P2RqVa4YAZt4tIBgKKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by DM4PR11MB7760.namprd11.prod.outlook.com (2603:10b6:8:100::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.30; Fri, 25 Aug
 2023 07:35:20 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::b1c3:d00a:b24a:65b]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::b1c3:d00a:b24a:65b%7]) with mapi id 15.20.6699.028; Fri, 25 Aug 2023
 07:35:20 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 37/42] drm/i915/xe2lpd: Write DBuf after CDCLK change in
 post plane
Thread-Index: AQHZ1eSXvAH3hYqeeEe3WeyRhLpeI6/6oWCA
Date: Fri, 25 Aug 2023 07:35:20 +0000
Message-ID: <MW4PR11MB7054202B74D7FF13BD55DE61EFE3A@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
 <20230823170740.1180212-38-lucas.demarchi@intel.com>
In-Reply-To: <20230823170740.1180212-38-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|DM4PR11MB7760:EE_
x-ms-office365-filtering-correlation-id: 15ce9a6e-a1af-476e-ff29-08dba53dd5d2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fzFqhWfv2iTDBIGsRjT8nVCnv8zZRqRoZXMAQDYypcO7aidn6p9eWPA5OViCtBEttGJ++8D0mA/wB5YvPgwHQE+8uk1wbQrtEaarJ7pnrLgfXKcJtI7JwNjRn01ZUlPjlZ0GkHBR7p6xAymCk+txRTgkIxCf6jz1u9UulrGWypn0QyzXT1Kqu4TRYBcPXxnt5cQA/m6FmC4NXYs5t1sH+Jybz75wfBIfztR9h5C/1cteABJ3gZCL80W17XOTqMbsbZGfVNBWNY+oyNm9lLdZEr/HyA3FtxsAAc9IHjPRkQti+gOCqft/8I7Q4XA1ZTSLVP7BhoFCqiXuMvk6HGWKU74WTbCC7HJAC9O/100ESvsziLjEpFG3uxgWHGLxtG6wl71MvJNIC3D/phK+mWrbM24d84cyVkWj2yTilb74vpd/RkQGDoFTeVnO6p+QshnmwZoPSAYpwIWnDR+zYbQNNWNNXAtXzzAQoSHzLWZe2dewVART3Yv4cQiN1v/eMqu2kNn/MBlR01Qn6Uj2GkedxMzwfiRYzivEcxdNI9ZCgPlOhYneNLlmjPKokSL5tTgBaqIfVsJlFcK46DSnGhOK6zGqhLJW7OFprl6dXVv9doo8VRAm5Gtzxg7St8/AuBuA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(346002)(376002)(396003)(136003)(39860400002)(451199024)(186009)(1800799009)(76116006)(66946007)(66446008)(66556008)(66476007)(110136005)(86362001)(9686003)(53546011)(107886003)(26005)(478600001)(71200400001)(6506007)(7696005)(33656002)(122000001)(38100700002)(38070700005)(83380400001)(82960400001)(55016003)(8676002)(4326008)(8936002)(450100002)(52536014)(5660300002)(316002)(2906002)(41300700001)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NFIxb1JUQ2w0VDVYeXZJY2NUbnV6a1R0UWg3emtpYm81aHBCd25obUU1dldQ?=
 =?utf-8?B?ald1NVpSamJDYWdkMHdpQXRDUWNIZXYxMGFkUDlHMDQrSU9VRjlmMkFvK2JV?=
 =?utf-8?B?L0d5R083QmdTMTJiVk9ldHV6cjdXSGpTWUxyMGNPVjE0ME1UdlRGbjZrKytu?=
 =?utf-8?B?YlY5aWVqNFh5N0ttSUR1Si9mWVFBRlBqOWVyMlIzZEZNQzZZaUV4amRWQ0VX?=
 =?utf-8?B?MC85Tmlka2ZVL2lZdzZDUlI1SDE1S2paZFVUY1Q3NWFSaURzN2dDd1BLT2Fu?=
 =?utf-8?B?TlBZcXRSdUJwRjdKQUptVWFRd21kN2FLQjBxVklZZU1hRVBaRDN4dHVSOGYw?=
 =?utf-8?B?cUNOVFJkT1VvN0JRMXNJb1Jqam9YcE1BQ3hmdDFqZDEwUmVhRkFmL1JOVDl1?=
 =?utf-8?B?Z3pYTVJxUkdFa2pROGh6RzI3a1RpUVlKSFFjOHUzaERQSnhzcUZMWStBMnJJ?=
 =?utf-8?B?VEZzY0hFU0hXb3BLU3VFV3lDNjBuVDlCcGwycWdxN1g0cmNpZlZxcWw3VUFK?=
 =?utf-8?B?Y0ZyZk9QbXBEdHBoby8wZGNLNzB1OWovQUNLMlpnK3FSbkhlTkFTdnFsaHFl?=
 =?utf-8?B?V3d0QWM3VGJIS1VXZWpEbGdiVERDVHJQdDdZT3JwK2pjSXEwS0hWSzBEU3dU?=
 =?utf-8?B?dWhZNk5sS3dLaVJKdkw0Rk1kOE9PN24xR1kyRndrSjIwaW12UVBCYXpmdnJW?=
 =?utf-8?B?d1Z4T256eFdnZE1WMUliWW4xQ0xrTzZGRE0wVEo0NmRXMHM3d252M1BvWEQ4?=
 =?utf-8?B?bHo1SllaQytJSVV5TmFkcjk4T050a2lTM08xUE95LzJuN3c4c2xxaERGU3Zz?=
 =?utf-8?B?dElqV05Md1RPTExhVEJubmwrclpoc0JDeG9lbmVPZzVJeU93ai9oNlRFR1V3?=
 =?utf-8?B?aFRZRHJiUmF1bTdPam5LT0d3WHZJam1jekpTdy9WWVFSVVY1QW1XODF2K2dG?=
 =?utf-8?B?WGd6blJ6cVB2aWdCQ1BsL3hRbGpMdjd1MXVjelJKYkJna1FnZ0FoS3NlUnNs?=
 =?utf-8?B?Sk5aM3paMWhtWksvdWFqRjF1aEIxeExmY3BpdmppYisxMWVqV3VyMm9BVEtw?=
 =?utf-8?B?RldQbS9YaGN2aHRDcUUwbVBNQWxaeHhwdXRjQ056K3pkRi9vbmdLa3dvYlRT?=
 =?utf-8?B?ZUVDRW84WklWbnpuSmRpZnE2eEZYenc0ZVl1VG5Wb2ViUFF5Y0YyelpJOG9Y?=
 =?utf-8?B?dzlRc1pObE4xV1E0eXp1Zm8yeWNyQjVKSS9FU1RFb2p5aDJZWXcrcHNEQ1B6?=
 =?utf-8?B?RW15NXNDYkQ0am05QndQTzBQcFVPS1JyMDhIeVZFN29uRS9BdVpPTkxDa3hY?=
 =?utf-8?B?Rk03cDRXZTY5RlFIa0JoaEJEL3MwdHQrVzhjamMySFRJaTNPbFU4ZWFLMS9W?=
 =?utf-8?B?YVBrSmswN0hubGZpQkNRT3NoSWZLQ1JYVk1nTmUrQ1dxN24xNkxzaUdZNmJt?=
 =?utf-8?B?RThSSXk1TFV2cjFpQy9vRVE5M3hGV2d6SHUwSlNhNHA2WmkxL3ljNkx4cWVG?=
 =?utf-8?B?WXRFWE9nOVN6VWNlVlZnWFhwNlUzNGxUZkFLWUxKRUtCN1FYRXVKdHZjT3ly?=
 =?utf-8?B?OHJyS29JV0xxMXZVL2d1UUtwdnhqbjZsbDZwRWRZUmVZdHRGMFlyTXZGS2M2?=
 =?utf-8?B?YnBqNjdVcWZYQ0dKS2ZlYzZnNTBSc0pLRkNJd2dRNWpsL2xyNllRWEZ0Ky95?=
 =?utf-8?B?TWtVVGhxM2VLTzlETHB3UXBkYk54cjFFNWMzSEtBM0ZVT2xlN0IzZ1NQNlY5?=
 =?utf-8?B?aWtEU2hqMVNaVmpFOFZ6WlF6YVFJMWJBQXpFdFJoM2gzeWFtZERiYXF6eXBZ?=
 =?utf-8?B?OHVtcDJ5cTdoL05hZWVXN0FzOXJCWjNQWGJxSUIzWEF6ZTVRdHY2MjMvRGtO?=
 =?utf-8?B?U0xjcS9FK1NVZVVBU3E2M2RDQ2N6MGdGdHcwWHBzZlFKVWVCTGFJTmZGRXZK?=
 =?utf-8?B?Z0g3WmxNVVlCYUJkN3R6WHdUODU1NFVudXdQdWorVW85YnF2Qjl3dXE3RmxG?=
 =?utf-8?B?RXNpNTZMSWhwRFRpdVdocjZ4T3FUTTFCZG1yakhibUMvaDBtdVN3M2REaGZY?=
 =?utf-8?B?cDJoM0NTbXZ0SVdMKzZlOVlJMG9ISUpUa2dsSEthT1dSb0pZMGxRTGdoU3ov?=
 =?utf-8?Q?KUC6WTyEjn9RQASq8juP+ChQd?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 15ce9a6e-a1af-476e-ff29-08dba53dd5d2
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Aug 2023 07:35:20.1806 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: S+YWpCQvD1DDe2QGS50vmbqNQd9xnEZS6Cr3Zcu6hJGJ5WNV8qesjW6YNkwoFKw8rJeYUalhM385VGteGayhcA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7760
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 37/42] drm/i915/xe2lpd: Write DBuf after
 CDCLK change in post plane
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBEZSBNYXJjaGksIEx1Y2FzIDxs
dWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+DQo+IFNlbnQ6IFdlZG5lc2RheSwgQXVndXN0IDIzLCAy
MDIzIDg6MDggUE0NCj4gVG86IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogTGlzb3Zza2l5LCBTdGFuaXNsYXYgPHN0
YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29tPjsgS2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBp
bnRlbC5jb20+OyBEZSBNYXJjaGksIEx1Y2FzDQo+IDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+
DQo+IFN1YmplY3Q6IFtQQVRDSCAzNy80Ml0gZHJtL2k5MTUveGUybHBkOiBXcml0ZSBEQnVmIGFm
dGVyIENEQ0xLIGNoYW5nZSBpbiBwb3N0IHBsYW5lDQo+IA0KPiBGcm9tOiBTdGFuaXNsYXYgTGlz
b3Zza2l5IDxzdGFuaXNsYXYubGlzb3Zza2l5QGludGVsLmNvbT4NCj4gDQo+IFByZXZpb3VzbHkg
d2UgYWx3YXlzIHVwZGF0ZWQgREJ1ZiBNQlVTIENUTCBhbmQgREJVRiBDVEwgcmVncyBhZnRlciBD
RENMSyBoYXMgYmVlbiBjaGFuZ2VkKENEQ0xLX0NUTCksIGhvd2V2ZXIgZm9yIFhlMi0NCj4gTFBE
IHdlIGNhbid0IGRvIGxpa2UgdGhhdCBhbnltb3JlLiBBY2NvcmRpbmcgdG8gQlNwZWMsIHdlIGhh
dmUgdG8gZmlyc3QgdXBkYXRlIERCdWYgcmVncyBhbmQgdGhlbiB3cml0ZSBDRENMSyByZWdzLCB3
aGVuIENEQ0xLDQo+IGlzIGRlY3JlYXNlZCwgd2hpY2ggd2UgZG8gaW4gcG9zdCBwbGFuZS4NCj4g
DQo+IFNvIG5vdyB3ZSBkbyBDRENMSyBwb3N0IHBsYW5lIHVwZGF0ZSBvbmx5IGFmdGVyIERCdWYg
cmVncyBhcmUgd3JpdHRlbiAoQ0RDTEsvTURDTEsgc2VwYXJhdGlvbiByZXF1aXJlcyBNRENMSy9D
RENMSyByYXRpbw0KPiB0byBiZSB3cml0dGVuIHRvIERCdWYgcmVncykuDQo+IA0KPiBDYzogTWlr
YSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCg0KUmV2aWV3ZWQtYnk6IE1pa2EgS2Fo
b2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTogU3RhbmlzbGF2
IExpc292c2tpeSA8c3RhbmlzbGF2Lmxpc292c2tpeUBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYt
Ynk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPg0KPiAtLS0NCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgNSArKysrLQ0K
PiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gaW5kZXgg
ZjllZGE3YWQ4OTJlLi5kZTgxMzgzMWE1Y2YgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IEBAIC03MTEzLDcgKzcxMTMsNyBAQCBzdGF0
aWMgdm9pZCBpbnRlbF9hdG9taWNfY29tbWl0X3RhaWwoc3RydWN0IGludGVsX2F0b21pY19zdGF0
ZSAqc3RhdGUpDQo+ICAJLyogTm93IGVuYWJsZSB0aGUgY2xvY2tzLCBwbGFuZSwgcGlwZSwgYW5k
IGNvbm5lY3RvcnMgdGhhdCB3ZSBzZXQgdXAuICovDQo+ICAJZGV2X3ByaXYtPmRpc3BsYXkuZnVu
Y3MuZGlzcGxheS0+Y29tbWl0X21vZGVzZXRfZW5hYmxlcyhzdGF0ZSk7DQo+IA0KPiAtCWlmIChz
dGF0ZS0+bW9kZXNldCkNCj4gKwlpZiAoc3RhdGUtPm1vZGVzZXQgJiYgRElTUExBWV9WRVIoZGV2
X3ByaXYpIDwgMjApDQo+ICAJCWludGVsX3NldF9jZGNsa19wb3N0X3BsYW5lX3VwZGF0ZShzdGF0
ZSk7DQo+IA0KPiAgCWludGVsX3dhaXRfZm9yX3ZibGFua193b3JrZXJzKHN0YXRlKTsNCj4gQEAg
LTcxNjAsNiArNzE2MCw5IEBAIHN0YXRpYyB2b2lkIGludGVsX2F0b21pY19jb21taXRfdGFpbChz
dHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkNCj4gIAlpbnRlbF9kYnVmX3Bvc3RfcGxh
bmVfdXBkYXRlKHN0YXRlKTsNCj4gIAlpbnRlbF9wc3JfcG9zdF9wbGFuZV91cGRhdGUoc3RhdGUp
Ow0KPiANCj4gKwlpZiAoc3RhdGUtPm1vZGVzZXQgJiYgRElTUExBWV9WRVIoZGV2X3ByaXYpID49
IDIwKQ0KPiArCQlpbnRlbF9zZXRfY2RjbGtfcG9zdF9wbGFuZV91cGRhdGUoc3RhdGUpOw0KPiAr
DQo+ICAJZm9yX2VhY2hfb2xkbmV3X2ludGVsX2NydGNfaW5fc3RhdGUoc3RhdGUsIGNydGMsIG9s
ZF9jcnRjX3N0YXRlLCBuZXdfY3J0Y19zdGF0ZSwgaSkgew0KPiAgCQlpbnRlbF9wb3N0X3BsYW5l
X3VwZGF0ZShzdGF0ZSwgY3J0Yyk7DQo+IA0KPiAtLQ0KPiAyLjQwLjENCg0K
