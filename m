Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id D7U5Dr2jTmrxRAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 21:23:41 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEA00729D9C
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 21:23:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=EDoj0CvH;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02D2B10F24C;
	Wed,  8 Jul 2026 19:23:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3084F10E658;
 Wed,  8 Jul 2026 19:23:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783538615; x=1815074615;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jrXCuPF+WDXEjzQG6dVlP6nvAK3vRaaKvXOgwVHKepA=;
 b=EDoj0CvHoe6z+HpqarveCXM3H5R7LbqYh4sd8RDVu6MxJRHTYzxFD75c
 rJY4Q/eMGfIEak1gDc1p34YuucDXHKa/YSn1KvqjzDVEv9XhYwRDWAVwj
 avFfXvR7UPACIC+Xc5IIciS0CF/fAs74nPeVDJ0uwjW3j7DF4bfFm2k4D
 4QAEGfZdyjfNWFWdLGOS2mL1bUouJoN8jI0vB2iZcAFFUG2RfWy9X/k5i
 25Nvb0q1f5dYFXD2NZKai3/iAHHSjKgytkME1JrSTCjhusawopFSe4UO4
 nYUwud3fNxcUGyAWkbK2A9st119B+DA4dZbzUQvDWB2/WP4tLtxwYCjGD g==;
X-CSE-ConnectionGUID: LvnRX7CUSkCytqPVbkQU8g==
X-CSE-MsgGUID: omVccVTMQwWyVBeeyV6xpA==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="84091413"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="84091413"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 12:23:33 -0700
X-CSE-ConnectionGUID: oyDXdWKARDuVEntf9hhyIQ==
X-CSE-MsgGUID: RJR+F8KBTOSrhiBKAwVCBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="250376501"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 12:23:34 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 8 Jul 2026 12:23:34 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 8 Jul 2026 12:23:34 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.40)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 8 Jul 2026 12:23:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XSjpPmawPonXnnlwc6ulTGk+P3G0Un2sp57nwXKr9r4BwkI/+w08EFc293TLwt4bOvkJ8eti15+Ti6X/9gFDPQSRziGBPHpI2+t0RHlsVndzCyW08birsaAi3f2FIW3jcMDv3nhOOd87jxqa+dJ3b6ei85bmY/SlruoMfc0YnvKmLfPbwuNCA6b3NqAM42QQ+FJj53QkKnX0kNzHSS83EBQ0i4KbakLEI881E++6R8LQkoaPBeX1tHngxnQ6OtlnLU/XMQj/0nOWNyp6YuAq++XIUsdaZ0n0Gpi6o8lxv7f0NOAewKrzDo+tax43+sIxGa5a2w+Gr0ob/iVoKcJMIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=F8VjOjFJFpolQI36OUn5IOc2z92v4gtchiD1NCLDSXA=;
 b=kO/bAEDtfCf3u2ridqtTyzQ88wFoxRNoKsZpMmn5amoseHGNp49gChwhEFP+mm+SVCGPWguvW/bLJdB9j9NyYgisNeamYZ4vrwv0/K3oRG6fst9oZrKwHrox4QBboBp/OeJCm17nmO8HXfl+UcqTRa+2mchX9b9QWkxQ/q0IiuXo3spYS76Mok7F1AHuBqRosnLhCcyqI8d4dRBMUfo/busF9kcjAmasVTHGp2n3lsIDuyD3x7gDLmUtp+r1L31q1OeTBLJcNwknuyGOkigUpUO2IXdp+14xHXtrC5+olGsSLSStRDDdw2qpW/zSeBR9n12sg5IkhWgB2/IhdGURkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CH3PR11MB8212.namprd11.prod.outlook.com (2603:10b6:610:164::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.10; Wed, 8 Jul
 2026 19:23:29 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.21.0181.008; Wed, 8 Jul 2026
 19:23:29 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Subject: RE: [v3 14/14] drm/i915/color: Add color pipeline support for SDR
 planes
Thread-Topic: [v3 14/14] drm/i915/color: Add color pipeline support for SDR
 planes
Thread-Index: AQHc/j0vRfaczEi+IE+4OP0OqLkvb7ZkIe+Q
Date: Wed, 8 Jul 2026 19:23:28 +0000
Message-ID: <DM4PR11MB6360F64712ADD108D756CE7BF4FF2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260617090819.1735153-1-chaitanya.kumar.borah@intel.com>
 <20260617090819.1735153-15-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260617090819.1735153-15-chaitanya.kumar.borah@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CH3PR11MB8212:EE_
x-ms-office365-filtering-correlation-id: 897d9110-589b-44f3-398f-08dedd2663ed
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|23010399003|366016|1800799024|38070700021|4143699003|22082099003|11063799006|6133799003|18002099003|56012099006;
x-microsoft-antispam-message-info: R05gcHzAK1QielRyD1FwQzpJwglhKe2fGpFVeo6TEQUvhFJSSY1lKX9abq0yvkr4j2O1q7qCi5YN+whH0kPzWf15c1KzcTK5deBEcV9uJbMEZcSRoMZL1ZsWe+UHUqMcxin7fHZ7gJMCqUa9yYXdlK7ooFXpEC7mop3w+TL4RgQKLwo0wvre9ZjfNpMBmtuTo3DimN96OLNGgFABH5M5RQuKNnZFZRtqDBsjIAC0Vrp8Enf3bjZWZOvWkizQ3VPgXzRMPrmjKb53AUJ9kIrBMaf70sfDT3fFDvylAVelWRv0pnuxry0tO34wpmkuCzDKVA2r+5TgAUFz8dKh/mHZmf10TpKvKspmJHunaH5UoU53JOEocxKlaYqzKQsqeZvRV/tMlyqXycO3cDg6cWW2YLGTIp8Dz+IdUiSUNC0ZMElB3l2TnmKzau9Ko7g9PjYgpyrj2UXPmGRBD9xkr6X1i+T1yD4+hN1ZdUlPPX+mSacjZ9p2PRlkyVdm9M5RPiLr4kWp3FC3VkCFOuoIrdWPYU3rd2wzDKr1K9X9XyAC9TWZr+pRQksBe4szo6DygUs7nnwxLyibQ/nsIgPzGDYIlo9jgSm6rLUAeLS5tK8psox0TQppcittHI85MsBEh9/EPgGLET4kUfh5+Mblpfq478gH3iHX4GiBRJwsT6IXgaXoxuOWUskiZ+N4oOxBcQ4zhOpPu4SU/CoUm5RfpGzxcaDDf5xxEVhlLP5wN3nBS/w=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(23010399003)(366016)(1800799024)(38070700021)(4143699003)(22082099003)(11063799006)(6133799003)(18002099003)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/qg85wDZLheUoJbFqwawm00/YMLq6bsr+OdNH4wlAsL0xAzHgeM8j3rugnad?=
 =?us-ascii?Q?8pL1TxUEPIDElRznez/zTOkfuqwGbSwaUFSp6koNLoYLDYUi5ALcp2MCvqm3?=
 =?us-ascii?Q?zg7F2vu+3Ectc7PO6mXQRC5C2fCkMXsnFoOpa0nOxv+gqR1J5DzdFGMHat0e?=
 =?us-ascii?Q?XPvmOPW6laZNQplZhgXIDCZkkI1uGu0tNxkSpjmR9MFMapxtgjCHEPVa6bqj?=
 =?us-ascii?Q?S6AHWa2bV8fVUl+xc6W7mpugpVw38uzxnnVvl3uncwTSSa1lit4zchWgqVkT?=
 =?us-ascii?Q?lnvXPMAXXxu4U83FU4MNGIr0RiBUgfX8mE9+uifWmo0EaIAkOQMzvWo+ZNTK?=
 =?us-ascii?Q?KxwlaoG5/ibxp/vExWXH/lL9lGgwFWU4gSdL175/CYtGbVDsJMjEULWgXUCt?=
 =?us-ascii?Q?k2Li9lWCG57kjBilgsQPqgxJu/h6vjs4HKgAJHc3MGwrjTCussrwWSrXkCvE?=
 =?us-ascii?Q?0XaBHM1CiHBGQvO0YyvDqL0P3HXH9ZndOL+18zQaoKkr94kfIciTp/85G5ts?=
 =?us-ascii?Q?Vvk6oaOKVRxwCjfVEGae7V2JEkwDa5BWLr1BKcOTcXx1JkFiyRk1uTTCIhuN?=
 =?us-ascii?Q?ig1k/ESwTBRHwcBly2w2MWGCMIvpVVOKuzIyCu01bvDkyZydzlHe+C5SzdHv?=
 =?us-ascii?Q?kvN0Iy50vjXeLFVEwjKg/EK08n+v9fdiKu/anJ0NKj9IsEqaXn733us2sKpm?=
 =?us-ascii?Q?PGl+sDayc54cZhk6cJfmFuCNCOLORd7dKejAQLp+BcCwW93cy+YLeQpStaqP?=
 =?us-ascii?Q?s3zkxrk/RRmJZk5b7HWgvsn0bTsoe2Hi+dTFO3Izr88fZZWn8u3dvlMiVMxp?=
 =?us-ascii?Q?13Bwu2OsF1PUSY0wAO3jXqUGn2dbAgEpb1eGGZRU2n8pm6v35Wh/50kuZNQ1?=
 =?us-ascii?Q?HdnRuyudom7OwlP30OYmVE8rt902yvWi73zeajDIW7+EkwRkDRWZXaJ6alZm?=
 =?us-ascii?Q?hsqJUUokRcrr4NN/CiUwX1nB26AucIKIRBYVLzz5vnU6KUsbG2N5qanXdICa?=
 =?us-ascii?Q?/MNA+w2R8oZd2SFkDtpSTQ6cfw+m74Eb7JR1+Ic1cMNM2q17Hi1SY23KWxBu?=
 =?us-ascii?Q?Se0nmUvCtEqbHKwuT5H9u2Gtgz6DhG0Jt0uve+jQDlJaRmCT8VHiBshs5+Ge?=
 =?us-ascii?Q?DvWX5OlteohFDJt20lQ2NFnqgK/LMsOmir7bXJNTBYk5ThXRj9a0cHJwm2eE?=
 =?us-ascii?Q?GlKr7Pj0fj422fM3piNdvWQ+g9hJvJ/EbtZtqPX/Jp+HLODbRV8z4p4mNnaS?=
 =?us-ascii?Q?5q8IgLtvsOGb/wqrh9K1q1eR1ppeDQJEa0n6et8IiiD6Sq9S0Z8otMMNysh0?=
 =?us-ascii?Q?T/XRlKfj1nkr1eax7+Wt8qhoo0oyctKSvUKZSiG336qVUHngCmnfAm9IckiM?=
 =?us-ascii?Q?r3cWsc+akKRyd3Eu4BCAsPBZ5Z/f+vf7fjfdHC+5ZPnDM3bWsisDVxZWMbeD?=
 =?us-ascii?Q?ENinN3PBwsB5zdvgvrkPpVvZwpR11VFE/M4dUa+kSbTYG3uJF6II2KbMamca?=
 =?us-ascii?Q?qUuZTKfop60lZ9DsJgA0WNd1hB+C6+i3lXaIdTQy5LgJ+PjkP5RRMBgmOvtJ?=
 =?us-ascii?Q?ZCjJHgxyZUtb7K5/fU2GO0Y13Rpo/9UqaqAkzWNwHde/fBOTd3w9w4BLCgM1?=
 =?us-ascii?Q?n95Ir5B2SjXcZMBS7DCZWW5y0KcxyFwIA775uWjTc8zGG20xr60AzLYWMgFT?=
 =?us-ascii?Q?XTCAjPk416w/euG7qL151d/ay0kVSwkr1PercuAsvGvAbncBz/7PhHj7ZDVu?=
 =?us-ascii?Q?RVo5Dtd/GQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: kRA4TfwlahAJJEptQnu++sxJQHZKd78oTIp+xGQVksjgxU9aM2S5IYFz54rwpkW8UsTxFMCWrXrqdB02xQJ0X0NAMG7EgHO2rG9kNsQE8t1ZGuD4zxnCFivP/n02am1nVa9yGB9DctsRupNr+I92EeVCzIsKeu7VPimf8lsOSiXKksL3YSEtq7oGt2zVSaYNnS8SDEV8L6DmbjaCbPMcWnYZqY+m9iXLPchURaEijf6nhNFwj3/2bfjgu3P3LO+28Cum7nmAgpQyqgxRVSKvNgBvzDE197I9WJV8uKZX5unFq0jBwG1g/FT25+SjHKSh0ctAcKKDq9ukkHoHzzp7RA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 897d9110-589b-44f3-398f-08dedd2663ed
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jul 2026 19:23:28.6865 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VxbGdR30rUeOYPF5K2w9lBwrG9GlEkUela4yjc2gPv3hs1ynN4aAloGSK0VRIpOIoeu/Nk/Rtexx8oJYRqer7Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8212
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CEA00729D9C



> -----Original Message-----
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Chai=
tanya
> Kumar Borah
> Sent: Wednesday, June 17, 2026 2:38 PM
> To: dri-devel@lists.freedesktop.org; intel-gfx@lists.freedesktop.org; int=
el-
> xe@lists.freedesktop.org
> Cc: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Subject: [v3 14/14] drm/i915/color: Add color pipeline support for SDR pl=
anes
>=20
> Now that everything is in place expose the SDR plane color pipeline to us=
er-
> space.

Changes Look Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_color_pipeline.c | 6 ------
>  1 file changed, 6 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_color_pipeline.c
> b/drivers/gpu/drm/i915/display/intel_color_pipeline.c
> index 136b9378ca48..a99b6eb20448 100644
> --- a/drivers/gpu/drm/i915/display/intel_color_pipeline.c
> +++ b/drivers/gpu/drm/i915/display/intel_color_pipeline.c
> @@ -188,17 +188,11 @@ int _intel_color_pipeline_plane_init(struct drm_pla=
ne
> *plane, struct drm_prop_en
>=20
>  int intel_color_pipeline_plane_init(struct drm_plane *plane, enum pipe p=
ipe)  {
> -	struct drm_device *dev =3D plane->dev;
> -	struct intel_display *display =3D to_intel_display(dev);
>  	struct drm_prop_enum_list pipelines[MAX_COLOR_PIPELINES] =3D {};
>  	int len =3D 0;
>  	int ret =3D 0;
>  	int i;
>=20
> -	/* Currently expose pipeline only for HDR planes */
> -	if (!icl_is_hdr_plane(display, to_intel_plane(plane)->id))
> -		return 0;
> -
>  	/* Add pipeline consisting of transfer functions */
>  	ret =3D _intel_color_pipeline_plane_init(plane, &pipelines[len], pipe);
>  	if (ret)
> --
> 2.25.1

