Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id AT8WLIhPKmrjmwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 08:02:48 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1275D66EDEF
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 08:02:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=WeGMymlv;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96FED10ECD6;
	Thu, 11 Jun 2026 06:02:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7145C10E230;
 Thu, 11 Jun 2026 06:02:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781157765; x=1812693765;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mfl/lrzG/Qvwt0g89Ou7CHmlwFP2rMhIjauLJHGwUks=;
 b=WeGMymlvqdFoKkAeYA/kJ2MRoghj/Tj6DdwE1xORGZ6A6SCwlmdkC+P3
 P1F2AnTEp8ISdg0ByLavGwj+Y7HFgk9LhezdWsfPmtHURSA9MrfT6Cdi9
 cHJfLNXa+7XRGatQoWJ/6tneGTpRRA+iekcLeeX+dVhLFHGwYW8C5Kk0i
 ZU8mPgFpzNf8I4PCXP3I/9trHwi2t7V3zWNPZDx7b0wQGXA+wZetqLuWr
 JFiLTW0FhReTm8CM+1kUaFX8NRk8wB/EPxFZ+JSyvmHdYFbM2j4VEdl/L
 xbFzdr+sKCmBHw1iT2L5Z0T4204d3pnWROFxMNasABp27DVyWEEFDXtNx g==;
X-CSE-ConnectionGUID: nqm1+6TxTAmlP2jSc+PmSw==
X-CSE-MsgGUID: TA9KoyxPRk2Wm14iLX5MPw==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="93352158"
X-IronPort-AV: E=Sophos;i="6.24,198,1774335600"; d="scan'208";a="93352158"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 23:02:45 -0700
X-CSE-ConnectionGUID: sPh5TxNRSyG+hxEmCz20fw==
X-CSE-MsgGUID: Ry8bcQ1OTNaUn1++pGj86Q==
X-ExtLoop1: 1
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 23:02:44 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 10 Jun 2026 23:02:44 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 10 Jun 2026 23:02:44 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.50) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 10 Jun 2026 23:02:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Vql1JVtZxeHbrYROsyjr1p/pYcZC/Yl1Khp+rYEkAWER+PcXUrrZwzXBvOisWYPPiqA23Ym0KWzvLKCcGnqZgfjGOt7GI0L00xxUgOd12So++KMw37tHMH2iJXdIKJrjwInIJsEpoLgHsVARJ/uPsgJf4r5At7WAC8XUgjCShIiPOoUcpPt+UDG2dU0/BMhMNm0G80yGMuhPTq/Ddy3dEZATKxje6a0AWuPZLbgoqYY+KWttA/q2iplvUilRWaaCLL9aX5pjf1BDdyiAqAMV1sRJ5O/kObw6Pn3wNDb9qfCe09oI25KKX8sOda1nIzwEGuSAhGYd3GkQZhBG1B8lUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LPnvha7QRhNGOm0f16cyROfrTCyxss48PDIXDVXKwnw=;
 b=YcKSCj8+a0EdRkMXD/QB+w8lghrakgZzSb8xpo22KCIlpoxByiuFvXuG9BY1uTNW0+vS2h0+ZVzjPIoiGPD+EhclmQ1HalfXeXGJaDRZoxBmavIXIt6UawNIOk6Ehql1mSlMIkTzt1o9o4Z6rrFqki+MV8k2qGNcYOvMi+IaPoOZ7WHjgnyBEN4trioPu7Ae5BrnmlCABHsyXQoVRsUcNS4RwTD1+/wnMhi5L6fahvC7YmxOLeKP7su/bjtnh4o2MUl7pZJmKRY8LgLUFM5qloTTqhTFnGuo4eNy0BwRDOEx51UjwSKt1g20eCmCV+9eQtTwykkcBHNcnkRpHdLqjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 BY1PR11MB8030.namprd11.prod.outlook.com (2603:10b6:a03:522::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.13; Thu, 11 Jun
 2026 06:02:34 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.21.0092.016; Thu, 11 Jun 2026
 06:02:34 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v8 05/20] drm/i915/display: Skip DP_MIN_HBLANK_CTL
 programming for CMTG transcoders
Thread-Topic: [PATCH v8 05/20] drm/i915/display: Skip DP_MIN_HBLANK_CTL
 programming for CMTG transcoders
Thread-Index: AQHc85dHpbtVpfrnL06iK0+/U6F98LY46FtA
Date: Thu, 11 Jun 2026 06:02:34 +0000
Message-ID: <DM4PR11MB6360404CF47E10A3945AE734F41B2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260603195416.91639-1-animesh.manna@intel.com>
 <20260603195416.91639-6-animesh.manna@intel.com>
In-Reply-To: <20260603195416.91639-6-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|BY1PR11MB8030:EE_
x-ms-office365-filtering-correlation-id: f48edf12-ed98-45ef-c91a-08dec77f0810
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|23010399003|1800799024|366016|376014|18002099003|22082099003|38070700021|11063799006|56012099006|4143699003;
x-microsoft-antispam-message-info: J923CF08MbCkdKEdn7PGJ1CDSPKgAiRlbEdDBXMbwdlqFnyxm7D7Y0BZ2b6RQsbwUg0Yr56IWEJXCXuFH6wTcGNBDQBgw3uRbkVQvgQgeE4xhEuB72UHb34yiB675YyGhTpB+d3p5uBhsTZ5fNjB0Z7YxJs87xOHEYWH3rVGKg8BWkXBBUleFVNlLKLSj+UWfFe9eIBv1F/8xLzkcpqqYret5mrXACMZdi1AR6lK0rKtLhUy6ZuSvqNUNovLZJnz7eeQPzmRkY2QjWtJCytWA86WZPtQP8oIHZ2ziETU2dS2oqBlXteAvmECIxi31VPKIKQTRF11abwhO4sOq5/6V9UEykidp+xTuCDdNb/m/Y3TQszuBMXcnyriPYf0ekHRDI/EpWCmB3ZhnivwfSvazuy4vJ735heZORLrcx0+sDFMMtGGfa0jeepLCXEna8nwgC5ZPdfeqsh1VJbQbHhERemiXhXcJAjq0SiafK0mtwLe6Fig8xbeStrofqfyTcoJPHDw07/XagKA6vw6gLLmpps6CPw105a+BK3GVTUAqfrojvWtWzcfnut+rOKzkKH0TTAfXr23pb1lxPlBAsA0IZkovSGt+EqvrMQZ4IJsDsqKYqz17Hb2LdpuTz9bq54lGIyZg2005XaRYQIwfBuNX3/KeYrsVaj9GFfGgTn3k2o85Xgx73RMW7cB7IkneUXyzhiGQDXrglinQuA4FTqxTlr0XJcsmKBLzbkdNyhrCSjCAUG/kJhPxMyFrFeOVsVq
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(1800799024)(366016)(376014)(18002099003)(22082099003)(38070700021)(11063799006)(56012099006)(4143699003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?BKv9ZbwqD6DLhuG3B0JrxGfAqs5Md6jDEuBAXszj7hsTaLUtqNI7LcRvTiU+?=
 =?us-ascii?Q?emi3DEdJtgjLOd/DbmwfT6uWrXWikJntHHz1hO6eLu+6BDmGPRjVAlipvBJe?=
 =?us-ascii?Q?j1umur/1QGXkHBtXolWpToTveaWOTo4CjVLOtWUXXJp8IV/fgW6YnoYq30Tv?=
 =?us-ascii?Q?PjT0t0DxcQqwCYIgXVxfIGYl06PJU3i8bglTLlLjEIClN8BbUtVAYwrR2c3s?=
 =?us-ascii?Q?hTk1CcyZfiIgJrOqVUjKVP59RjyI9hMI0816crxy9uaOIOApv0+egZ6hcBWr?=
 =?us-ascii?Q?XivAY5/rXa0YVl8nzi/v31nxWtRV4HtRSExEznwrDIzP9lelCXSm3w3RReXM?=
 =?us-ascii?Q?YjphKunKXzCyZwTPHuK9je+aqBMgnzPqvcn8uFDOad+KmGJTOTNuu8T1vTHZ?=
 =?us-ascii?Q?Lsl1RECFAhXgLsZDK1WVM3r9oHamYPn+XHuCDd9w3QsU2LAh+fCbawWKD57f?=
 =?us-ascii?Q?UxHI5fXHhCLuMD5cV1D0dUxg8yKJsfhK0otUr/8YcIZnu1E7QkgeRudfGWTg?=
 =?us-ascii?Q?xRKkLqRYTtD4mrk9ebQzxHXMmwOftYzTcSwOlFBDicIzUYRNIgDoLRjgn7uP?=
 =?us-ascii?Q?1UL/ggOH4lvPRT8xiH+pBecBweiQJ2NRVW+8aT5YSBmGTVpW0rns7lmAUi5Z?=
 =?us-ascii?Q?Cj0AaASPBEAqchebAygX2cq6FgePAK7ILaoTxcmymTVfiyYhQeCS4CN264U9?=
 =?us-ascii?Q?Q2BOC64/AOJCIrtyfXYBTWaUHto5+dlnUNCmN/PChonAosXId74LNeohOPm2?=
 =?us-ascii?Q?OXyDbON7VWcCBXt5oVuA+J859PM/OaY9QzaNLyfYoix8uu773Jsl1W4PZf5U?=
 =?us-ascii?Q?1keNR2VmX6Bv+D+WA6f7QekrNTnhS8p6kCtxqJREojmF5nXMvBb54VuDqvQE?=
 =?us-ascii?Q?o9h8cgvpTHDcIL6XyPVOvY8egoxxwB6I1IhcVyRdqT/yZbp02yhHFKcC/t0T?=
 =?us-ascii?Q?Zs8XnOhXSytmieAIvBYDkJBqglJ0dzsZ3isRL/jCD/A+CGG+iFGRCyEcnEDe?=
 =?us-ascii?Q?KtRQa3wjl9iLjdu2gIemklVOHA7JNlkHRj3nfKJoxRDdenMFn9TdF0G6y39S?=
 =?us-ascii?Q?HL2rTzzxneMB2CDJ1oGk8mKNp3Jlx5GCrA+dcy0QWz5AwrlySAvMX5VjYBcl?=
 =?us-ascii?Q?L6Z0hPOZVtieedbp3fSdXEiRXeZVYovEcF64MpWCPX/I1DtvZoEMq3TREp2e?=
 =?us-ascii?Q?Vzkf7J/jUcA0x1zCag0Vqx+t6o/FH3IyJU/ehNn61bWSEaUqdGIzNjKyMa95?=
 =?us-ascii?Q?ViWcQaY1ogw9LE4RQnLYxs959sG1QCPqFGaWMQkL61ygkOTmolm7z9+GFaJO?=
 =?us-ascii?Q?2mbRoV9kc/3aqZg32YdEFjLed/ekIMEfqWmemuQdMm48pO4j/9RGWgEKsnfX?=
 =?us-ascii?Q?n943SPTPFNFkxHnWIx5D5rGjVYtpP4M3xH1uNksGgspCalPujqLIsc/uunLY?=
 =?us-ascii?Q?Kdql4Xb5G4ioQaNXLwLDRbEzcOgVV/24ZzgTPdYxOjdLm9Yo2x09GvwUn4U6?=
 =?us-ascii?Q?Yf6dWIOlfp9zzXXbCRJSSqs6mnHHWDFFTkWmNFvFAvTZdEc2M32cYD8MMM1n?=
 =?us-ascii?Q?zHvb9Uqij9rzIcbRbjnOx8dCse6TOjI6tGmW51mH/jIRY4vKl2GodDUKeXYz?=
 =?us-ascii?Q?zumzj+ZExrzV5JBmp7KbdD4eR2xQGDl56XSJjtzpxBm/NhsPfRovPi4Q/IA8?=
 =?us-ascii?Q?P5xnlcR0AITyykFbk3mPR5fl4saSNBoQdRq1wjORlAV43rJ3?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: qDIm6dZZBglhP+NR1yCYS67uj9JEK0JcHOm8SHr8n+I/NEDIZSQrd5plIGceBcNKRDaRB4/e2WpC43eFBBI0M+lO1nWXyUwse5cjV2hZ0TAabsT+EjfL2S7FIzlBOM9w5DlUa4nDOgiz3cHYrY/JD6KKPnsT8KbixabtMpBi+iSPCxybOERbcvjM7GXNQ8iuHFUYl7krNuy2tl3sAXvd0Nu8coXhEKqAwv/duCAWbvyn6UrZ58XqsvxYTtygL0CslGkjnbMS7ospf/PYmDryQBuc5QK4r+z74Vs17ChpKC630jNIzFPETBqGFMjr47Bo2xJDqMWWD2P/2FGd4c59fA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f48edf12-ed98-45ef-c91a-08dec77f0810
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2026 06:02:34.3127 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7lRCqqW26W/HMYq8h5x/6O1atrZZhJWuu6feoqA7+ciE4bwAiQIvaiC9h9s/1NS255SDB09PH9BHk/9Vt23B6Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8030
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,DM4PR11MB6360.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1275D66EDEF



> -----Original Message-----
> From: Manna, Animesh <animesh.manna@intel.com>
> Sent: Thursday, June 4, 2026 1:24 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>; ville.syrjala@linux.intel.com;
> Nikula, Jani <jani.nikula@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>
> Subject: [PATCH v8 05/20] drm/i915/display: Skip DP_MIN_HBLANK_CTL
> programming for CMTG transcoders
>=20
> DP_MIN_HBLANK_CTL is a CPU transcoder register and must not be written fo=
r
> the CMTG transcoders. Skip the programming when the target transcoder is
> TRANSCODER_CMTG0 or TRANSCODER_CMTG1.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 9031264a34fc..2c15dd4c6d66 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2761,7 +2761,9 @@ static void intel_set_transcoder_timings(const stru=
ct
> intel_crtc_state *crtc_sta
>  			       VACTIVE(crtc_vdisplay - 1) |
>  			       VTOTAL(crtc_vtotal - 1));
>=20
> -	if (DISPLAY_VER(display) >=3D 30) {
> +	if (DISPLAY_VER(display) >=3D 30 &&
> +	    transcoder !=3D TRANSCODER_CMTG0 &&
> +	    transcoder !=3D TRANSCODER_CMTG1) {
>  		/*
>  		 * Address issues for resolutions with high refresh rate that
>  		 * have small Hblank, specifically where Hblank is smaller than
> --
> 2.29.0

