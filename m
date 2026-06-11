Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id iqGvN/T7Kmqp0gMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 20:18:28 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F70167461F
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 20:18:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Iubj1Inc;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01D8E10F078;
	Thu, 11 Jun 2026 18:18:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4A4C10F061;
 Thu, 11 Jun 2026 18:18:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781201904; x=1812737904;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nxBjwNi+i0RWt6kB3yu1FgiC+i3YngDA2hMMz/26AHw=;
 b=Iubj1IncO7zgz31Oy8/toSFBKq7Al9ITNUvga8gTxMxbmLrVyuHY+PT8
 6U2nU47jNnAbsD1Aq30ftiyvrK/8FQc+xzmVCNCWTzZ1h9gp8cr1mkMNT
 HQPMi++p8hE3raJ/CEX67Di8M/C8A6ADYueoiMSoK3lcAU5cmFcMALx3T
 xxaP1KoumUwlFALSlvKVNdkdewPXsRDVZ9Jn25f1v6Bri1GVDDHUq5mbp
 T8hPyHzH3x0/c7Ry/ZrwwRoJYWMFhc9IsiZ/CDw8122ll54BXE9Zqcmyf
 ypKL3WaPeCf5LYaBBy6+icor1Tk0LdFq9TuF04N3s1QvJ2iHRFiVYcghF w==;
X-CSE-ConnectionGUID: H7C3xI/aRxmMmJAluo1HCQ==
X-CSE-MsgGUID: aLUHPdTGRN2xiM4tlvfv/Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="84593961"
X-IronPort-AV: E=Sophos;i="6.24,199,1774335600"; d="scan'208";a="84593961"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 11:18:24 -0700
X-CSE-ConnectionGUID: OKoHMX6vTkqhCsvcJTHPyA==
X-CSE-MsgGUID: 1IqtMmlpRG6+b4xQfDPHKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,199,1774335600"; d="scan'208";a="245683023"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 11:18:24 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 11 Jun 2026 11:18:23 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 11 Jun 2026 11:18:23 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.31) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 11 Jun 2026 11:18:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qYIvuu+TYUPngD3msH/lvIW4sXezZDGniBTnYIO8Xe3L6R0RSya43yVJmgsSictQIbvOloXuiXPXEN2xpKakAiRAmUm2t6XbzstdOpzha/M/psj4pEgLO5BUIJB1VDJOhcp5vpLW/AsrRylwyzJlGBATaiATQDBv18TizKHvkBorj8WbUldEWd5MP4GhxF+fcmDzsGt0oDGJqOmSY7VjhB5y8hyiib8eV47veKYl78sBpPgZU8r1HAiN5DIz+IVNgCkLsVzyzzKmZNSnyAHyxlVrqQhwV0dx1bhq5XQ2KPMS0xATigKBJUdYM/KPZ3irR4g9ucuOevo/vh/P+9fAtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qHKaYgjKsJ8vEPg18J2F98SISYv+uSBYRdOLenoiBao=;
 b=UTDxt3N5On2EH0Ef16SVr657W/jpHd1iN4MWLlxSDpU87OLs1GRJj9CBAJzsu0cFsb6Cq33hyAb8vW3CHc/d1RM9DfJIzzpzCJaR47Crt9iFgBS2j0WaDRoy808KeV3qq2p0N02CrUwOQ2U8XWa0unUQY9sXKwcwNj21ZWwd+YO+DK3cLLbR2yJo5HBn6EccoN15cvAamV/D8j2EVeUhh8Ry1dO8L+jNaZEtsnHG0JpuPqANFohEI2ha4HuNCqFWsn5OpQwBJLucR5ehj1DqC1xJQ/1zzkFI5bCZPSUm1A1A0TO3rUpGEcRZKf4bVNW2uDxjh0o4tr2B1YOgM/lNVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 MW3PR11MB4634.namprd11.prod.outlook.com (2603:10b6:303:54::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.113.11; Thu, 11 Jun 2026 18:18:20 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.21.0092.016; Thu, 11 Jun 2026
 18:18:20 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v8 16/20] drm/i915/cmtg: Add CMTG HWGB programming
Thread-Topic: [PATCH v8 16/20] drm/i915/cmtg: Add CMTG HWGB programming
Thread-Index: AQHc85dh67PFJrAI0kqKMOaxFKgiebY5tSKw
Date: Thu, 11 Jun 2026 18:18:19 +0000
Message-ID: <DM4PR11MB6360349828BFA4BED2C260DAF41B2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260603195416.91639-1-animesh.manna@intel.com>
 <20260603195416.91639-17-animesh.manna@intel.com>
In-Reply-To: <20260603195416.91639-17-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|MW3PR11MB4634:EE_
x-ms-office365-filtering-correlation-id: 09b00556-9cd6-4448-6821-08dec7e5d0f1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|23010399003|1800799024|4143699003|56012099006|11063799006|22082099003|38070700021|18002099003;
x-microsoft-antispam-message-info: SHDjfRKdsDXJaSeQELoSqPtDR+jzx+hhRZsSN8PnkCRGhFpFzqnlXGxvK4FNcJ7hc8A48SIKr0LfmO2pPf0Jd8TOdHCcmVOfRpFKIOGITi+3DScprrjrs+w5/lA2hK8I3ada9rdgK1hcWvbtpXq5PQgse6VgFmU5eGqadwB1QECgG3Cgt85s40e328iYJUS+7cvPMSMleOmMP12AXoGsmIH6/oF2cUXPjd0Q88HblItrNQxNCDffzPYXGxpIT+UXiePGz9sLm8bxJBpxKEbDY6EaIM2Lh59kTmtP5ZqU48V3LwsppAqD+XFhWStkuBDAHgvhQVH9eEDVqDvr9NrAiCxkW1YMzHIpKvGu+18ctFWKox7WBoDga8AKSvXnz2qreAf3w1ko/d6tShImnfKxGbz8oknM3m4ulmTNHW0o6rd6/8PdHX9x/zfSyzdcp9g1g/xFzHh32reHignjkPtW+S21yiaarPQhgeVTEPznE7puUqRB8ync3qGAXfSSnmVwUhHzAD+72g2ou9kHjwZ1Px2m6Ra+j3Xo0ItKKQd16Q2gi5O4V6CiDRxO8gHoZiHwAlckRW4ABAy5D5i9r1pAfI+H8FnvBQOV7WiBELLCcB5JYHlrJkCBLqd2PZ0PNn72zz2jmf7HzzY47BbIZXd02PrDib2rThDWccGy85WkxYwALgahp14+uF5sQpIrMTob7WrbPH605sck7QK2wWTJzVEnH4nBQDSKNTvPrpmzNOdSWuQZ8FRM4jhwfnN27kIB
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(23010399003)(1800799024)(4143699003)(56012099006)(11063799006)(22082099003)(38070700021)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?69uNWl5G3rVv3UBAphPu3FWHRJl3AlL0sVhdRHgqV0x9J7Jylglz/2yW8RVv?=
 =?us-ascii?Q?xA5zlvInYvRyVHR32TacWSAsLgvWbYPhKxbQK+fEkLR/MQW4EI/RFQQ5NkFp?=
 =?us-ascii?Q?dM/CzavHbesWcl8YMAovk7DoIN6LIPjBd3sLGGbhTwyq7tFA9H5ETeF03afj?=
 =?us-ascii?Q?OUI7SsN4xQuif+7kjVMWrFhx+5tVuqVK9aoXJESxirNyYqC8jxaTupfc6Ntv?=
 =?us-ascii?Q?ITPzyZ75mVzRYAB3w7YVBoSTCnJTPEmj74TEAH+V9pDuocVggTK2GU93zWQj?=
 =?us-ascii?Q?8IbQBbb7JO0+b09g9CoiC5SYkimomOhIJbEUGOp/MfJrSaRdD4hL9rq42nEY?=
 =?us-ascii?Q?pMR/OBiUb1vgbrN0/qeZzVUb5Zzhb3MeK/Ze2V0En1AJTHNudA1U72SxR9v5?=
 =?us-ascii?Q?3eEklisKGJTKWyikQ6mTNmx15aBB7f8JEhhEWRhKtfesTA7oUt4MpEj0p5ym?=
 =?us-ascii?Q?GpESu5URY4y7nFwt5PSqDZCmFzKF2Dfk685mNusKc0avGBQi9fd0JPK5qol+?=
 =?us-ascii?Q?qL7f8/aENkGSRcoSk7DWj8V7nM8lK1Y36dyo3kP4OiMugxo6AMPQwFJ+zuxF?=
 =?us-ascii?Q?sGegwvdgbsO67yGuSvdziX7TPkjo80p1za7+AUES6Ean4cJfm2VAY0muOwe/?=
 =?us-ascii?Q?sqFuncm5k/1x6b1r2tOmTUklfiQPZJfBKq+QeFo0pn/XsmIG+0rUyFGqpVyJ?=
 =?us-ascii?Q?3/qxAm4lw5ZkKiRUIoIGAwHenZpCvogB1ZRsOsa8FN0jfRk2c+R5FG2Hw4SZ?=
 =?us-ascii?Q?UHv/WQLOVrrXI5HHcAPrFG95dTYDh8lnpOECfCNb7lHTuD34cYjukQJm9/d7?=
 =?us-ascii?Q?nMnt5fP5lRl6stv9qoaAbk6sA5jw8L9nkELKqqH+PPAhFJQ7gWQb7jl/DU9P?=
 =?us-ascii?Q?UiJUHXzRMU2mq7SNXj/AW+9xtk5ES3x6+IIKYZkZTBlnzU0wCwAqy2Pqt2/g?=
 =?us-ascii?Q?Tqy/Ojr9NaqgRw8/HgS0wJTFDlKjApZtJqDzZw5W8lTWpgmHYSSbIyzpuh9D?=
 =?us-ascii?Q?fiZOKAXk/2hh5VQ9KPRs5UpoCB4SFvvoKxttKeLPrcWyknGNDqHDgCAksKCZ?=
 =?us-ascii?Q?rcWKZ2RNmwYeqHxwEqjj+5d+3nSFQaC7NdUaNehczFUQPfW+xeE/RYKxxKxX?=
 =?us-ascii?Q?wMpmQsa5CqSmEYBVYNrZ1k6im6gmmg9S0qSwikQM7pWFXPWMX0bJ1Asdq7iP?=
 =?us-ascii?Q?e4ArqzttP9FtFs8i95l8nBaX3DlsSOZPMUr3EbMKfnJaMyPewMGF4WsIR+nh?=
 =?us-ascii?Q?UHm3F+sO9u7o37jDxKdcaJx/zt8/rea7JPbjE5mgN1BM2YBAkrYqvroDtdhx?=
 =?us-ascii?Q?1XoDkmVHiMjiqjzJ83BH4UTss8o1Q7OlsKZGG86AGwra6aGyLXGUKFvG4Td9?=
 =?us-ascii?Q?SmBdKlgspN6Xz8v17G3fhbQ00pWI7sLQ1HfYBDVePUwqIDORnBXgl5lGlV5N?=
 =?us-ascii?Q?aWCTGCUHjeEDIFZDVkARtc55A5Wn3AldGFfcr8wC2/0mAiW+dY9fY8D6zx2X?=
 =?us-ascii?Q?USvjLLut6vLJmX1ygN4rLTBxa5hxJtSGslLmW5HXZN/QNVHCATAXVGsOKSFo?=
 =?us-ascii?Q?wYnui5iTzNxR1IpGLas/hji0sI8U//6cVvi5ChnKnenDHZkiNkOl+0dVUac5?=
 =?us-ascii?Q?9ueNtWgHpBh7oySIVvM6YmP3/v900PXo4qYhF0Xwu6YakPI7drojhtC9Pxk/?=
 =?us-ascii?Q?EFtjpXyCqWtcndaccIMGNxZyMcVuVVP5IwC/KIOVrZuLq7O5dzl5wUjwA4v2?=
 =?us-ascii?Q?CVyODhlayA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: OlzciF30tY1Uw0GTYUbTA7tvofICYBP6WX079qjTsHGSGdCpiU+dx16/m095YqLC4h5b857u3DACaHB3vcr/nnN1j0ILvCgCh6eYT/i+ypne3InBp5M/KhqjASHHdXIbcN2sfW2kC2fbSQT2nS3VZk6JyM7hBzpf5v7tBZC0UweHVgqJ2Ir9Ia8nrAsPU3J91SibVVbSPBHvqjlbnlT4B0TBFGdvfUw0F2R+CfAdpT8joj1tvVD5Ppnje6Zp7KJEQYcr/n1nhCqsPrYeZLbyl0nR/UOMKU8oCbAfoSrhdAxMyA5LqWjPf1HjRmi+deJaPInWpaf5r7GBcN3Pp5KkXQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 09b00556-9cd6-4448-6821-08dec7e5d0f1
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2026 18:18:19.9871 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /kancgCDkh/GuPrHR/ha3sdONnyEPiFuLdI18UhYhsihYcdi3Tj383Mm8UsZapq6JFUytv+OOBBB9r1H41k0Qw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4634
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
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:from_mime];
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
X-Rspamd-Queue-Id: 3F70167461F



> -----Original Message-----
> From: Manna, Animesh <animesh.manna@intel.com>
> Sent: Thursday, June 4, 2026 1:24 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>; ville.syrjala@linux.intel.com;
> Nikula, Jani <jani.nikula@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>
> Subject: [PATCH v8 16/20] drm/i915/cmtg: Add CMTG HWGB programming
>=20
> From: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
>=20
> Program CMTG guardband to generate the Lower/Upper and early entry
> guardband indicators to the DMC for DC3co control.
>=20
> Bspec: 75253
> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cmtg.c     | 31 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_cmtg.h     |  1 +
>  .../gpu/drm/i915/display/intel_cmtg_regs.h    |  8 +++++
>  3 files changed, 40 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
> b/drivers/gpu/drm/i915/display/intel_cmtg.c
> index fb57fa41f721..cc36784e5253 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> @@ -400,3 +400,34 @@ void intel_cmtg_disable_interrupt(const struct
> intel_crtc_state *crtc_state)
>  	intel_cmtg_mask_interrupt(crtc_state, true);
>  	spin_unlock_irq(&display->irq.lock);
>  }
> +
> +#define DC3CO_ENTRY_LATENCY	55
> +#define DC3CO_EXIT_LATENCY	40

Add the bspec reference for this. Also indicate what unit this latency is i=
n.

> +void intel_cmtg_set_hwgb(const struct intel_crtc_state *crtc_state) {
> +	struct intel_display *display =3D to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> +	u32 breakeven_gb;
> +	u32 dc5_exit_latency;
> +	u32 line_time_us =3D 75;

From where this 75 come from, add a comment.

> +	u32 val;
> +
> +	if (!intel_cmtg_is_allowed(crtc_state))
> +		return;
> +
> +	if (crtc_state->linetime)
> +		line_time_us =3D DIV_ROUND_UP(crtc_state->linetime, 8);
> +
> +	/* Break Even Guardband - DC3co Entry Latency / linetime */
> +	breakeven_gb =3D DIV_ROUND_UP(DC3CO_ENTRY_LATENCY,
> line_time_us);
> +
> +	/* DC5 Exit Latency - DC3co Exit Latency / linetime */
> +	dc5_exit_latency =3D DIV_ROUND_UP(DC3CO_EXIT_LATENCY,
> line_time_us);
> +
> +	val =3D REG_FIELD_PREP(CMTG_HW_GB_BREAKEVEN_MASK,
> breakeven_gb) |
> +	      REG_FIELD_PREP(CMTG_HW_GB_DC5_EXIT_LATENCY_MASK,
> dc5_exit_latency) |
> +	      REG_FIELD_PREP(CMTG_HW_GB_UP_LW_BG_DIFF_MASK, 1);
> +
> +	intel_de_write(display, CMTG_HW_GB(cpu_transcoder), val);=20

Should it be cpu_transcoder or cmtg_transcoder ?=20


With above fixed, this is
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

}
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h
> b/drivers/gpu/drm/i915/display/intel_cmtg.h
> index 8fcb44d6398f..2c801a74acf9 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.h
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
> @@ -23,5 +23,6 @@ void intel_cmtg_sanitize(struct intel_display *display)=
;  bool
> intel_cmtg_is_allowed(const struct intel_crtc_state *crtc_state);  void
> intel_cmtg_enable_interrupt(const struct intel_crtc_state *crtc_state);  =
void
> intel_cmtg_disable_interrupt(const struct intel_crtc_state *crtc_state);
> +void intel_cmtg_set_hwgb(const struct intel_crtc_state *crtc_state);
>=20
>  #endif /* __INTEL_CMTG_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> index 240a02cd4a3a..a4a2a2fe6b66 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> @@ -24,4 +24,12 @@
>  #define  CMTG_SYNC_TO_PORT		REG_BIT(29)
>  #define  CMTG_STATE			REG_BIT(23)
>=20
> +#define _CMTG_HW_GB_A				0x6fa8c
> +#define _CMTG_HW_GB_B				0x6fb8c
> +#define CMTG_HW_GB(trans)			_MMIO_TRANS((trans), \
> +							    _CMTG_HW_GB_A,
> _CMTG_HW_GB_B)
> +#define CMTG_HW_GB_BREAKEVEN_MASK		REG_GENMASK(11, 0)
> +#define CMTG_HW_GB_DC5_EXIT_LATENCY_MASK	REG_GENMASK(27, 16)
> +#define CMTG_HW_GB_UP_LW_BG_DIFF_MASK
> 	REG_GENMASK(31, 28)
> +
>  #endif /* __INTEL_CMTG_REGS_H__ */
> --
> 2.29.0

