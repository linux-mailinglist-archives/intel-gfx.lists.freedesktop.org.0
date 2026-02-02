Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yHnAIK4JgWkCDwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 21:31:42 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B52EED11A3
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 21:31:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EE8E10E2C0;
	Mon,  2 Feb 2026 20:31:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kZqS3nlB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1B4B10E2C0;
 Mon,  2 Feb 2026 20:31:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770064299; x=1801600299;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=E3WlcnOWyCQ0dP138Fxm8SEGkHjU8qfeOY/rn8lZVQ4=;
 b=kZqS3nlB19u8lgubwdw8K12WKYD+RDLIgx596CJ7QU/Ad3nx0gXw7iqL
 o3cJoUKpZ94u2qLG3EiANlioiXjcWpKW0Ujad6dn4QJrm3y6+oY33memU
 B4kYLMG9sszaTMqLvzhM8rysTi0V34kz5bcTbc51Bx6o9NyHnrlvLE6QK
 dht5mSONDjQOoFxyorIEFTPu9E+7XEoDi5B9GieyxJsCsfhNGXbEhYIQb
 7uXr490YzRfmGr6+8r0jsgxkYtOj69AzsyhfywXDELjQH9BrVNDa21BJH
 1r7dMxWJ8AH+F+kgdMlTb1ThnQfdOkPQU9LMfw+Us3g070WVLhhydE5Tj Q==;
X-CSE-ConnectionGUID: 6a+CRvpDRA66eEd6O6R/cQ==
X-CSE-MsgGUID: 2V0MiSHRSKalGneZ9AIlCg==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="70435200"
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="70435200"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 12:31:39 -0800
X-CSE-ConnectionGUID: dPSXT0HnQhCjaQRsml6srw==
X-CSE-MsgGUID: ktwaCqqgQSKrzsNvKz2fYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="209107504"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 12:31:38 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 12:31:38 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 2 Feb 2026 12:31:38 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.62) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 12:31:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xFhhSRenNM1NjnfDTtUxgKoIA+NtJRGS9afOV4GONEX5TpWZPNqAF6jDfrVViq6sZCphm3p1Cu6vy24lfrf9WSen0iRUBrWLVs4GZObBmFiQfgAnKCjMjY+ex9Hk7V9TzkuIZLDTCBTwgO8ck76uMNzg5OwLIKo3palyD0eR8I8ea1aUceRWU/Htq8AKhzQDO9MTfCDPzY+GosO7cNvZpPMwAiRp7tIzg1bk8SpD90JP2wor6bqOT75BAZtn92UlTwMVWLdf88p3Qcndpl+2E4bK5jM8IS+NeLlPobrnX1CWR+ZlLIAQD0epWyVMCepuMvwAlJecd0FoI6l3GrH+uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QYC1rE0Wv+GNNokxQdNJSw27yFiIEntests5Cd2ypMI=;
 b=fYvXljQVV+jKYOe5TXM0MKnL3wzuKydHCf5/FiNEEZZ7gsDgeB8nNeIrJvVE1oTjebQwrIw2dWVCp40zhWbMZzsIzdjaaT7UVt8aeoVJdHJQbzqjFLpL9baYQWKInqE5qg7NmvH8hrJOUk52fHUPI+PXJVOpXVgvjYFYaJWZSCNPAUWVISbzvmcMu66UvAhzC0JfLOu/uS+fZn7FgY/8Nf5Jyl8TZXTldFIGvP5TiA+XKQg6sVBMnD07lu63y0vyx6hGnd6MA8Q0fAJqvLTiRY9Qilzf9R+HkbZaHcUeI/9p+qKXb9Qn3RV+SADCMXOZA7hZlYBfTR3WZrBL7ivNYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CO1PR11MB5090.namprd11.prod.outlook.com (2603:10b6:303:96::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9564.16; Mon, 2 Feb 2026 20:31:17 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%3]) with mapi id 15.20.9564.016; Mon, 2 Feb 2026
 20:31:16 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Maarten Lankhorst <dev@lankhorst.se>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [i915-rt v5 08/21] drm/i915/display: Make icl_dsi_frame_update
 use _fw too
Thread-Topic: [i915-rt v5 08/21] drm/i915/display: Make icl_dsi_frame_update
 use _fw too
Thread-Index: AQHcit1mYODJR93il0anPTpySVQvArVv7+Rg
Date: Mon, 2 Feb 2026 20:31:16 +0000
Message-ID: <DM4PR11MB63608AEC111C443FAE61ABE5F49AA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260121135318.651622-1-dev@lankhorst.se>
 <20260121135318.651622-9-dev@lankhorst.se>
In-Reply-To: <20260121135318.651622-9-dev@lankhorst.se>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CO1PR11MB5090:EE_
x-ms-office365-filtering-correlation-id: e3d57233-ec50-4cc3-c646-08de629a042b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?G71IJ9uQt5nNirZPOW0Av517k0v2B3MZcA/hDQVrfXydWqjkUqmpgvU8XtFX?=
 =?us-ascii?Q?j2vxsda0xcqlfLu+hhN4rzq8l7dstD73835v5oWfT4U0DIZonxmw7i9elNHm?=
 =?us-ascii?Q?FnL6T66JreASfaJlK5QNuLVAGaTxddh/4mA/cueO+FVpGuIK9aSXIK6QrAPw?=
 =?us-ascii?Q?wuHlLfb55PGOOBKEBx4ut3dFl5rGN36yNX1OUFPn7ewEG+Ndl6/7guNUcozk?=
 =?us-ascii?Q?bz6YrUFswnGFy/h5PUOwOOhtXPsd7s29tyiWh4EefWyj6oCNZYYY+TFWtB8R?=
 =?us-ascii?Q?2AJDVgpddapO1BSOUPYih4VzIbpmo9XFZKucQGN99tP6uF5m7d14H4zcIxNG?=
 =?us-ascii?Q?GaTxvluhsVUr4nUoYdhbP+/UyEmEm8q//z4sw9AMR9JFR7URzUy7ANRgnTh0?=
 =?us-ascii?Q?Vug3Fa1S/QOPU08WKQmVP+rlzreFLX71WWhEf2Xn/FuN654CsSglgBGbTOuk?=
 =?us-ascii?Q?HqdHvxeEscw/WBUXd4F5wWZcR8aWBb8+gtAZfRzSaZjM+hRnFE7ASUA7JK7k?=
 =?us-ascii?Q?n+89uqXSKEVbA238Rlts9TPo2fR44Aldu21/WZcos2wxWiQQ4oCbKPQQJlk/?=
 =?us-ascii?Q?+vWkTmzUlYoi2zScrfjuT7xaykw7miAhIxt8ntigfF+8QM6O9/ktigG7zcT/?=
 =?us-ascii?Q?QAGYtdNqhYq0v/oLlzXvdUksWfw6mYz0RMrkBIttesZ5b2myU1WNgAHdHNlO?=
 =?us-ascii?Q?QU3Vw6+O3Xd448382NCWGQqsPTRNVl1TrrlETJSbN5xbz/lstFGXTghX6Rau?=
 =?us-ascii?Q?WjDAW1yvO0PP8XRu76kzZXoVvP9z3/ZKxZevmbUgEJjvCf+oB6vXP1bmnBKE?=
 =?us-ascii?Q?ngIpAa40BhLES2YGu9SfQZzrFZimdA+c+ekUwTAQ3YdIW8wFsYB7da/rUWBq?=
 =?us-ascii?Q?Wj2CbZ3XDGmlS4cZ7+HEez7RcxTbUNp1VNPYrBWh6cusGXX1txac2/vr215N?=
 =?us-ascii?Q?rXYtUypnt2kAAox607KkOX2x+MBxNCYzxIvi/rAUQtl9VEDAPrxB9lXteqLp?=
 =?us-ascii?Q?bC8c2Msn3pU3XNwIzK2xMame56pivPJIyh4V64FoDRpr09x32/aCOYuWLSRf?=
 =?us-ascii?Q?DFuZYFhYK4tMjj68+Qh4cVxBiPrDl1Hq4urf2mlccGdEOa05IefrVQdsvmak?=
 =?us-ascii?Q?DSvguW7IP51Gw6edt59lDlYlOhYpwCH4hCayybEvF+1EsG4hugg7+edwHAnm?=
 =?us-ascii?Q?K5gy0wjxzOv2IDVH1S2SnSPyn7iBeo1LM/H6nEAkL2FT2Gxg34I40BD6qEd2?=
 =?us-ascii?Q?BknnpQhpf228yfOsmvzI4Q7CNNCiWccdUBok46VGP29oI8CtpqXI0CcHMyaW?=
 =?us-ascii?Q?/Kv4dVwUW966TL6JSUzPLPa2Ic798Y7VnP4yx3s1ma+7ySY3Lk5JBKxBiDfC?=
 =?us-ascii?Q?Yj3X7zT6DwToZkQk+wZcdpV0YWjK4uTPzuWQ/rY9/5UfZGB8hjNtGf8sDKxo?=
 =?us-ascii?Q?dWuFlsnsFSJFpzAbdSyGMtiWWRvkNGhtJ7Pcaxv7rAdDanjmULka8iKjaJOK?=
 =?us-ascii?Q?NKPorBizzZJmhNGDeqlCw3Xi+6Yi/Scg7Yg6naydM77yYVlAEk3dW10ZVXG/?=
 =?us-ascii?Q?J4L1WPrViGdD7yvC8CzvcLiE7dtFm1u18l8X799IqeBHccX3+Q7RyfWIA8G0?=
 =?us-ascii?Q?+UIhTY+UIQPp8GiwA5xeyiA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ylTYMmYLIadUz3p/mH5R1TcuoK7zVuDsE9PZ+qysaa40fB/KDJIBikiT8MX2?=
 =?us-ascii?Q?T3yqp4PU4udWFN65XwGl51V5m+pkZNevUKBHz12lBkXgJNe/bZY16S/SdSNo?=
 =?us-ascii?Q?KZLFjKyKlzRrJnu6BeFDLNjJjAJRbhXNTnjIr5Td3Gq2SGEogC4Ux1x+8Q2g?=
 =?us-ascii?Q?G5M0aa0tv5fMDDNTkGljPc9JlJ/9OGosgrmk1loADFd3eaywu+/WCSny9e74?=
 =?us-ascii?Q?rmyHwm01TDbR5VwPr3Qyn+I0ydEJCwBDfXJjUgQyg4e3Q2YRd3ADUmLi2BtW?=
 =?us-ascii?Q?bAOdCAXPCFcHd71NXmdcJh9vzEcdqZzqyNlpDhFCbw/cow/k4pHURkrJBEQ1?=
 =?us-ascii?Q?f23xDL0Om6XXRtpHn1ebEB257kY2j7tSnX1smQDQ6/MW9TofhTyfZmAJgb9I?=
 =?us-ascii?Q?6/bCRccb/71OR86N+CSEBfb9VsmeWVXoUgZSY8h5h342IxSV3tGAeHLQY5qU?=
 =?us-ascii?Q?qmH0z2r8EhqqzMwsZ1tKfSklq0FinRVcj7QuOreR7wx2B/WzoWs8ugkKk4Xw?=
 =?us-ascii?Q?eEzGEsKDIcyDFGFOqXdZKiwwa2xsCwQd5FXZsi9EADN7iUigG4Vi02PYcWCw?=
 =?us-ascii?Q?mwYrdws/iTgjEfPNdar2c2f2GERWLeEwR0gOhetgQCAuZleZinGTxQdehaSr?=
 =?us-ascii?Q?T1XnlMvR6IO+8hNqrMHOigUpk4gLfIgC36+RcP/J5jQ87V/v6h2IJ3r2e1xY?=
 =?us-ascii?Q?kFvGgkaek8Nltj5ICbtq/APYvcPq9manRlYXLKUQKI54EzSiU5xn5t2Yhwvx?=
 =?us-ascii?Q?QkBOXd9+Rdcp47GnT6zI2Mnds+7pGtgP8RxMvPIAbvnJWL656gSQNmu6imNn?=
 =?us-ascii?Q?H2pZr5Ibs4DzNoZMVhzvXcuoab9iIyVHDYRXRLdYGIRrTUtg2387AGIppAS+?=
 =?us-ascii?Q?nE/E7V4tePRxS7g0nM2W3ZxatViK3OAJzYnvLWskYPPZg2noXSzl7JGQC/Lt?=
 =?us-ascii?Q?szkkp5efcGIOfYh0dqAF6eFXqOZRMoc61cjkU3A2OdC16DRSrI5mr2JiZVGm?=
 =?us-ascii?Q?ke+lZLgeg7j1W1IkbBuu1PyakXcWt0fn8aiH6PKcq90qfcYQD4JiK5c2IXVF?=
 =?us-ascii?Q?oSwqymw3jE1eyaf8F9Kw+8J/oHGieSgfuEhY76OwwNRZPfObENjLinoexjEV?=
 =?us-ascii?Q?5VzEbmW1zZWXYzmzWmRQcd4MTliIxCucgv4j8AWTlP4gwhZ5rW6WPABxMXQW?=
 =?us-ascii?Q?K9usRSPJ19phbEg9mzTR2zPgFmuN/EC/ZzxQHn72RlJffZRDR5Tcdl1ajDB9?=
 =?us-ascii?Q?fKo1s5moFxNJVWyx4bsKHgRllBGF3AxfIsZDQtYcZNEH8zJDU+hG+3DF5T6g?=
 =?us-ascii?Q?0FsGpwMU1bjJkgWA1x4yBgCDS8xTU1DZ8i6EFFo6pzKNb94IdAsCxoGFGXwW?=
 =?us-ascii?Q?H90h+eObV1pZNLJbFTEJX+iyjMp8HtJTuv6CwRrXJq8qAq0j0KmBETMsXLlS?=
 =?us-ascii?Q?nkrLE5g59PlmnWL6Km+u8Rlyjdm71aUe22rldF10ZUw9o6q+Rl/PMK9tvFPX?=
 =?us-ascii?Q?iFA3x5Bl33AnBqDfx+ss3UQG4x9h5Lb+wAzjFY0ruBCciDRuaQzOi4mci3+o?=
 =?us-ascii?Q?we7eiPIEufScE/Ias1HMWPY7WF2k+gH3/S+UMbgENTSvGEE1V0xrNbyBclJi?=
 =?us-ascii?Q?FJXm+J9lCMowKDFdV3FdkPsQZMMakdoWpoOEoVL1vNVoZX+Lrb40u5CQLShK?=
 =?us-ascii?Q?S/6lowvulh7+wk65ZZ3a51Shv2xwTFWZgTVxri27kup1ekv0nLQ4FF4FVTmN?=
 =?us-ascii?Q?8NMT/Od49Q=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e3d57233-ec50-4cc3-c646-08de629a042b
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2026 20:31:16.7091 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: arYJd/IgavLju4JAytha0w1AiDNBEC7wQAMgriTDrhdXumuTD2iJoDh7hKCgrTuayBBdircfEmXZW7tYQfORXQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5090
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lankhorst.se:email,DM4PR11MB6360.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: B52EED11A3
X-Rspamd-Action: no action



> -----Original Message-----
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Maar=
ten
> Lankhorst
> Sent: Wednesday, January 21, 2026 7:23 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Maarten Lankhorst <dev@lankhorst.se>
> Subject: [i915-rt v5 08/21] drm/i915/display: Make icl_dsi_frame_update u=
se _fw
> too
>=20
> Don't use the dmc lock inside the vblank critical section, not even as la=
st call.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
> b/drivers/gpu/drm/i915/display/icl_dsi.c
> index c8e0333706c1e..1df2f347a13be 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -243,8 +243,8 @@ void icl_dsi_frame_update(struct intel_crtc_state
> *crtc_state)
>  	else
>  		return;
>=20
> -	intel_de_rmw(display, DSI_CMD_FRMCTL(port), 0,
> -		     DSI_FRAME_UPDATE_REQUEST);
> +	intel_de_rmw_fw(display, DSI_CMD_FRMCTL(port), 0,
> +			DSI_FRAME_UPDATE_REQUEST);
>  }
>=20
>  static void dsi_program_swing_and_deemphasis(struct intel_encoder *encod=
er)
> --
> 2.51.0

