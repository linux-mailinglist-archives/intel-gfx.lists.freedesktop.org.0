Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C7D9B757B
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2024 08:37:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E257C10E002;
	Thu, 31 Oct 2024 07:37:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MnnhBKqG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0D4410E002;
 Thu, 31 Oct 2024 07:37:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730360256; x=1761896256;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=1wcSa5svXmIOnTHqPbGwlZyegfNPrhjwZ+Vq7OdCXmA=;
 b=MnnhBKqG0OjSUe491XvBKprh4PmkFWCWrylgbeavGPdD08DDqnhtWqS+
 nVDQ+HqaNj+ckHlfS6LtuDhuaZTcT90ip+mihZc+Th6hD5a/zmTNXbX4Z
 fybvMzvvod2921ZCGzkAkknSv/c3rfDwooU2S8Ag+KVZCSosIZLLhyjB+
 VzJQD4M/16CxvofmQ9vDqkd+iBz5BaIKcBSuZVbKiiTcEK65dadYBAkof
 bY8KZI5GFD+WfKHxZ3r7T224gVW0jVuPZfTjuAe575fogoHbcl9wFN6BM
 fSF28gskJlIrc5s60OaY0l0gafiw+UUnelrjZ7ApN6bGcCdMXWAatz/7o w==;
X-CSE-ConnectionGUID: 7PbO23w7TGeOvwE6zbHqYg==
X-CSE-MsgGUID: ZXpYL5IhTceahKyT9vM6aw==
X-IronPort-AV: E=McAfee;i="6700,10204,11241"; a="34007180"
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="34007180"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 00:37:35 -0700
X-CSE-ConnectionGUID: hxMhHjhqQWagA+K52bIOmw==
X-CSE-MsgGUID: upicHlbsS2SjBdlsgxwWtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="82469112"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Oct 2024 00:37:35 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 31 Oct 2024 00:37:34 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 31 Oct 2024 00:37:34 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 31 Oct 2024 00:37:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YEEPzWUoHmfLg+Oc4VRpU/PWEiRkElw11oV0/HTl5oEUUUDkQW0e/fyuHibfmXMpElyogF+3S+eHO0aTFfM+YpAN4iqaxTbZ06vk1tN+di3QfLh+wOCAdigsbbUIJqRHSNRGG2RVLBTlqu+NP0Qd9nt2s0WIvEUs0R9QYXAsjM9ophUnU0mB5KbXdrLOX7V3m0Hog8sJ2ofclskfqNxWuxmDDkNBU/jcPwUuRds2PpvD9mkpS16LebO5JQcGcu6vAIZApbq95qF8KlxbP5nwibuuTGhJlap9ncpeXwTukTEeAeLxUohPu76lEycO+D3nfTa9N+SEcJ0ItiXAAGA9HQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1wcSa5svXmIOnTHqPbGwlZyegfNPrhjwZ+Vq7OdCXmA=;
 b=ESs5NTy35kALvDG3jskp2eZbLV1p9dcSXQ0idrvXpkNwyLBgaeak71JWr6l+S6qQ9FUmE3r4gU0HrKIkfkxycTby1CG/NG8jinrMSHaSlN4O6QIbcijYwhxxJe59J/UAF/oJd9rTkJg8GyxbP/IbT5hO7x6kQwrUWR/m9FVuMJGeH7ZBnNGVXwMpOzUI5jZNi4JAzmHJVJpdssMeX6lb6q7Gm1IqH2BavZu45nr7PvVJPOn+JpihgWexH80gGTKS9IC95PpUpI7vYEiZzMMe71NUR6Sqkhpqql+rPvE7GkmDweYdQCo6rbyaXt4yabDCQ++CWdDZb7IbCAXCarPrNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SA2PR11MB4825.namprd11.prod.outlook.com (2603:10b6:806:111::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.32; Thu, 31 Oct
 2024 07:37:31 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.8093.023; Thu, 31 Oct 2024
 07:37:31 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Taylor, 
 Clinton A" <clinton.a.taylor@intel.com>
Subject: Re: [PATCH v3] drm/i915/display: Fuse bit for power management
 disable removed
Thread-Topic: [PATCH v3] drm/i915/display: Fuse bit for power management
 disable removed
Thread-Index: AQHbKwWut/jBBuyC8UmLoKyt8FuljrKgeW8A
Date: Thu, 31 Oct 2024 07:37:31 +0000
Message-ID: <464aaa15619866e652afb6bf0fd05e2e6b9b881c.camel@intel.com>
References: <20241030195507.2753404-1-clinton.a.taylor@intel.com>
In-Reply-To: <20241030195507.2753404-1-clinton.a.taylor@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SA2PR11MB4825:EE_
x-ms-office365-filtering-correlation-id: 51e52f88-66cf-4227-050d-08dcf97ee10c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?ZnVUZEMxUk1GbXFERTFuVStpQ1YwcHU3SG0zeE9OeFBSNUdqaGdhcWpmZSto?=
 =?utf-8?B?ZXJBSG5rV3dkeCtCeVJjeFBUb3Jvd3A3dXd2NFFkVnVaeFdTYWdPank4UnFJ?=
 =?utf-8?B?citBaVhhZUtQZVloY1lUeHkzOEtocUc0QWRJZTdaNE1aRDN1SDVhY3pzZDhJ?=
 =?utf-8?B?ZVVTbTBZdDJ1L2tnT3BVeXorOWZYbWRnMFh5UVhGZkducDNOMzcvYWNOcWgw?=
 =?utf-8?B?QUNPK1ZVTGl3Z2xMN05hMEZJb2VhM2RvdjI5SGtEWnNSUCtPTXZMVFRXeDZX?=
 =?utf-8?B?UmFYdnNGSHRzR0tVNnlSSFdYb3pVdDNrY25JSHBWcUdlbmVDOHZUdU1sQ0g2?=
 =?utf-8?B?b2oybUw5QThGUlJ1MWtENlNJNmtabDRjaDNaRFVwVTc5RngzVkNkeTdRMGlh?=
 =?utf-8?B?VlJOOHBQRG9oclBBYWhhVFhmRVhQbkpsbmhOUTlGQ0N2QUQyVWNGSHZEVzcx?=
 =?utf-8?B?dTBhZ0FHR1l0TUlUaGwzN09hd29DeFFiMXZ1MDFmQnJtQ2R1S0NSbTZ4MktH?=
 =?utf-8?B?T0xOYkc2UUR0bXZKaU5vR1FPRzB2YUo3Q3I2VXNERWZGQnd3UHJtZWNVeGd1?=
 =?utf-8?B?ODdSclRFMnFhWVFPNWdacTBSZFEyWnZCMTIxeWZWT0hHUE14UmZrT0t2MDNn?=
 =?utf-8?B?dWRRM05sZkZCdzBQMnl3b2x6S1ZOaytUMk5WYjRxaUhhcUc2VjdxZndOZkFS?=
 =?utf-8?B?dWcxZit3Rit6MGMwVTBoS0ZleXNKTHltNVZoeUxJZ21Md0dpelQxRHEvMWdj?=
 =?utf-8?B?RFhLeTN4UDBLYnVLM1BjQVNZdy9jKzIvTWxIZXZNNFcvWEROWERUOHliNkRI?=
 =?utf-8?B?bEl5K1FuMi90eTArdmxxcERqU1dSdlIyS3pxNi9KSnNSVjBaYkFJQjk1ek41?=
 =?utf-8?B?TDBQUmJ2Q3J4ak1jS3lBenBkSmhIMkRoZEFSOWw5R3UyZGlKTW02aithVzVq?=
 =?utf-8?B?MHhOcGpGb1hHSTIxUHpidGsrQ1AwRXhlMkh6dWdaeW04V25kNHJEQnZPbXZP?=
 =?utf-8?B?QjNBQ25LdEUzbVd2cldKOTRuK1RvbHRtRHdaVTZJVlRYNzJqcDZaMmI0alh5?=
 =?utf-8?B?cEN0WlliM2RkTVRiRkswUGNuVmZoeTdOSEdER2pWRnNsNW4wNXVHL3pIYm9L?=
 =?utf-8?B?cjlGSmxLenk3bFFoNzBhck4wM1NrdFQrVEZOK3d2dHBJamx3TmJiNys5Zjdr?=
 =?utf-8?B?anZaOUp0MjBxeE1RM1ZpQlZiSTVuSXhJR3gvdWh0SjJ5UjdoTnV5TG9CcDRU?=
 =?utf-8?B?YW0zVXZSQ1cva3F5dVEvekE1WHFzZXRIeXBkNzZVaFFhVjN0UmlEdUk4NU5H?=
 =?utf-8?B?bW5NK3ZaZlpsTFZUUTFLRWdYMlAvYXQ5QzRUaVAwaFMrUllzOFlMYWxqekxE?=
 =?utf-8?B?T2h5clFpS3hrRWRBSkZKK0M3Rk00NVJBbDYzUnI5dmVZSWFrdVFHWVJ3VkJJ?=
 =?utf-8?B?YXJsdFhrK1hjSFNUZDc3UjFseFFkZG9nUkVGS1laSThZWVk5YjVodlkraWJZ?=
 =?utf-8?B?UzM0VEgvZE5nTFJleWdDSEFTZ0hvSlpUUm9MY0JybXd1N0dyeEJJQ1F5Q293?=
 =?utf-8?B?b2xwUTJ4V0FnaDFJQWwrUXFWYlcvYUM1NklMTlFaYVlHSEV0d3RxcmY4WFJQ?=
 =?utf-8?B?akROTFBtVTY0Yk40N3Z3MC90aDFmMFFTNnhWM2I0amJORllML0JsS0YvWW83?=
 =?utf-8?B?TUxqMGhqQS9nNm5sR0J6aFVDOEtiTVpNMDd2WlRZUkEyN0h4a1hib3FJWDlT?=
 =?utf-8?B?SEczc2NIbnduQVpXcHBXLzBORUVPYVY1dnZIVGFXZlc5Q08xbHNLME1pODZY?=
 =?utf-8?Q?BLcJLNVQatjc/SuXho1bf0xSf1UaIduznG34g=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bjl6R2lFdUoyVWxZSlVETlRpRWRTM3FpUllrS1dmT01NQ2F2ZWo0empXOEx3?=
 =?utf-8?B?RUJsL0Mwdm9id010K1F5SU9QUis1Ky9MSUo2VWMzM1ZUSU5xS1lOK2sxdGd4?=
 =?utf-8?B?WFlGL0wyYmJVT0hkck9XUG56OXkwSi9IQThsZ3RBRWxYNS92aGJ0aTFzT3gv?=
 =?utf-8?B?d2FvVVg2bEczRzRIaytSMkJLT2JGNGtuMFlldTBMYkdNZmhsSUNFUW9kek4z?=
 =?utf-8?B?K2lDbEFEQ3Z4SkIzbnhzblhRbUNIaDZkWnlnK08xeFBERlJPSGZvNURzc0Ur?=
 =?utf-8?B?RDNYbWIyVkJWOHhUNElLeVBrYVdheVl2cEdPKzVLR21pOGpaRGpxeEg0WS8x?=
 =?utf-8?B?eENlR1Q1RndBUksyU0ZvL1VOZ1hONk81K25pbjhhTVJ5NCtzRkI5cy9XbDJn?=
 =?utf-8?B?dkhLTXBtRCtKSEhxcDl1UnpXblJNaW5DS1BjWWtHUlBVMURpdHdPcmZBRVFS?=
 =?utf-8?B?NjYzbGFNeExiUWtoMVlGNGFWMi92RnFHdkFPSUNzQmFtNXVJVHlkd0hzMTEw?=
 =?utf-8?B?ejJXQkdPYkNvcUdHOXFNNk5RTFlmREV0T09Xd3E0VWFXYW11cUFqNjRzU0p0?=
 =?utf-8?B?S2pJNjNxTjF6c3RSSWdCYWF2NWcrSTQvaWRIK1d5QURXOGo2T0FPL0Y4Wk9B?=
 =?utf-8?B?cG50VGkxVTZKdGgxamprdE9UWTZWZlJHeWkzUWowQzdZM1N1djZzTmx5ZS9q?=
 =?utf-8?B?aDRSM1FSNDlEb24yUW40eEJuSG5UbExKN1lVa1pZL0NLZ3Flb0JDSFVUNVVB?=
 =?utf-8?B?bFlxOENjNFltVG1na1VEdXRweThjV2pQbHVOakhoK1lGVTZ5RVZ4OFQ2cHV4?=
 =?utf-8?B?cmRxd3BSemxlaGRvY3F4STU2UFFkampYTS8vM2ZZeklldWRqa2E3QXNTaHFq?=
 =?utf-8?B?aUc4R2lXUFZ6WmNkM0RTeUlJUnFqQ2ovT1l4b2xBRW5IcVZReVBaUXZnVEo1?=
 =?utf-8?B?M2lyeFd5R2drNmhaQVRVdENBYnM2OWUvZkxaWTNGZTFHM0szZGNuL05ybmx6?=
 =?utf-8?B?blN0bDZFZ3cwVDFhbW9OaFhNK1pXSFROeFpvZkJHbXVEeDF3UFc4OTMxTktU?=
 =?utf-8?B?VHd0K3c0VU1XNnVMb2RiZEVpUGpNTnMybXE2YittWW9GZ3VMTU13UWZHN0VM?=
 =?utf-8?B?OENCbEk5VHdUYTd6cmZBOTF1OTg5ZWVqVzUrZXgrNGdWbDN4dnYxNDlxUWpo?=
 =?utf-8?B?TlZ1UFZwV3Y4MSsyQ2djT0NzVTROd0xMRTlMZXZ3VlZnbkpXbGljTDVjaC9V?=
 =?utf-8?B?cEFtMEIxWVNnQnkvOFRSd1BMQ2pKTFJ4ZVJaM2Znam1KN1Z6RzNHSmFMaktY?=
 =?utf-8?B?YlBwSzErb2IxNmRDMVU1L2k5MTZ6TnU1eHBtajBpTjFOc2xLbWd3TXBKWFJF?=
 =?utf-8?B?TEhacit5UVdWSEl0My84NFBiNXJ3UFRUU20yV3FONGluVFdqVTM0Mnd0cGhM?=
 =?utf-8?B?RDMyR3dJODFER1ZBRzhWRlJDZFdqa25NVXhkTHh6VDBZV0dyK2g3d1loR2lY?=
 =?utf-8?B?dlgwL3Q0bnJRdjZJSHJNaFRqVHZwL2VMSW9OQ3l6Skl6TjJjRFg0dGNPL1Zr?=
 =?utf-8?B?VDgxWTlZTzF3UTZkZmIrMkZ5bW1XVUEvbXAxMTBnNEdKZzQ1L3BlMTRSY2sx?=
 =?utf-8?B?REQyUEZaZkdYUHh5dXBWZTduNUhMN1dUdy85bWx5a1ErYU1tWWpBV3N4NEZX?=
 =?utf-8?B?M25TdlBPY1BEOWsyQWNzSW1ZUXJYdGc5V0k0RTJyRktZS3NlVjFyczZmem9K?=
 =?utf-8?B?djVDOUNvUTNRQm01eXVqVS9JMGE4OEg0RkpvSDd6ZXh2ZlVDRmhpY3NjQlRB?=
 =?utf-8?B?Nzcwd3h3K2MxNXNJVXh6OHFrUk9VNGlhd3dSK3NNVzJtcG1tYTl0d3RJQkRB?=
 =?utf-8?B?dzYyQ1l1MmpMeVVzcGZlcCtJYys0OGkyZE91L0JRUTQ3NkJCQitDWDRmL0Fy?=
 =?utf-8?B?Q0dyY2JvTWpZR0l6Z2x1NTU5bjQ3MnpJRmxLVkNiTW55aWhtMlh4NGtwakE2?=
 =?utf-8?B?a1JSZHc3YllBZHcxN1QzNHAxWmhBKzMrOG5TNkY2UW1KMzVkRGxrVGF3NEcw?=
 =?utf-8?B?TG9RbkZNT054WUZ5R3gzbWVML0ZqT1lEeGE4UHdjblZnMjVuY1Nlank4QTl1?=
 =?utf-8?B?ZTNZUHpEUDBzNXNMdnF5dVUwUkNuRzRqVVZHRDNBbzZKZGNFNHY0VGswQUZB?=
 =?utf-8?B?aFE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <9B4744C20DA0384E9B3D0B6023329A66@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 51e52f88-66cf-4227-050d-08dcf97ee10c
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Oct 2024 07:37:31.6357 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /4wiwfMuKNrMNOqaJXawYdXRxKh4FJO8U4VyVUKUba4FGt84kNoT8ZFp+c/hrIk2uKcuiloxDdcAgwlvYzFz38EGcoPvU4Y2GgYzj3Tj0uc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4825
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

T24gV2VkLCAyMDI0LTEwLTMwIGF0IDEyOjU1IC0wNzAwLCBDbGludCBUYXlsb3Igd3JvdGU6Cj4g
U3RhcnRpbmcgd2l0aCBkaXNwbGF5IHZlcnNpb24gMTMgdGhlIGZ1c2UgYml0IHRvIGRpc2FibGUg
RGlzcGxheSBQTQo+IGhhcwo+IGJlZW4gcmVtb3ZlZC4KPiAKPiB2MjogQml0IHJlbW92ZWQgc3Rh
cnRpbmcgd2l0aCBkaXNwbGF5IHZlcnNpb24gMTMgKE1hdHRSKQo+IHYzOiBERzIgc3RpbGwgdXNl
cyB0aGlzIGZ1c2UgYml0IChNYXR0UikKPiAKPiBCU1BFQzogNTAwNzUsIDY5NDY0Cj4gQ2M6IE1h
dHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogQ2xp
bnQgVGF5bG9yIDxjbGludG9uLmEudGF5bG9yQGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBN
YXR0IEF0d29vZCA8bWF0dGhldy5zLmF0d29vZEBpbnRlbC5jb20+CgpSZXZpZXdlZC1ieTogSm91
bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+Cgo+IC0tLQo+IMKgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5jIHwgNiArKysrLS0K
PiDCoDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9k
ZXZpY2UuYwo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2Rl
dmljZS5jCj4gaW5kZXggYTJhZTA3ZjZkMWI3Li43NDY1ZTE3MTVjYzggMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5jCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5jCj4g
QEAgLTE3NzUsOCArMTc3NSwxMCBAQCBzdGF0aWMgdm9pZAo+IF9faW50ZWxfZGlzcGxheV9kZXZp
Y2VfaW5mb19ydW50aW1lX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5Cj4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAoZGZzbSAmIFNLTF9ERlNNX0RJU1BMQVlfSERD
UF9ESVNBQkxFKQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoGRpc3BsYXlfcnVudGltZS0+aGFzX2hkY3AgPSAwOwo+IMKgCj4gLcKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoGlmIChkZnNtICYgU0tMX0RGU01fRElTUExBWV9QTV9ESVNBQkxFKQo+
IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZGlzcGxheV9y
dW50aW1lLT5mYmNfbWFzayA9IDA7Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlm
IChJU19ERzIoaTkxNSkgfHwgRElTUExBWV9WRVIoaTkxNSkgPCAxMykgewo+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKGRmc20gJiBTS0xfREZTTV9E
SVNQTEFZX1BNX0RJU0FCTEUpCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZGlzcGxheV9ydW50aW1lLT5mYmNfbWFzayA9IDA7
Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoH0KPiDCoAo+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgaWYgKERJU1BMQVlfVkVSKGk5MTUpID49IDExICYmIChkZnNtICYK
PiBJQ0xfREZTTV9ETUNfRElTQUJMRSkpCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgZGlzcGxheV9ydW50aW1lLT5oYXNfZG1jID0gMDsKCg==
