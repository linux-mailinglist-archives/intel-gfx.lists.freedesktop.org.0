Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC1589C010C
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 10:21:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 010B610E7D4;
	Thu,  7 Nov 2024 09:21:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DMTGqMOq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4412110E7D4;
 Thu,  7 Nov 2024 09:21:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730971299; x=1762507299;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=0QHuBDz2TGS4uHvzPJIqoEfgLHpGgl+Rdv5GmrVxqZY=;
 b=DMTGqMOqjnWb1646q5x+FUj0pck0I3XREWl33Mf1I0Am+F8i9FLcsiZa
 /efKaaDkE+4cwjFBhe42RxMgTVBPmZx8DD0BY3Xi9qwQbRC8rm67igMfO
 fdT4phJtEyPEpMgF3WaD5cNpd5QqOQC4JnX1U5etS2TKCo4zgUqbhA4Ja
 Aken/mI2yg7pYgXhhXH7/6H1yzhgalYUHWIfuUBTHBu1EOD7RqTbB+E62
 u3S5JA8eSMDPeqVqVW5JVx6E+BzjN9HcQ9sYLt87GFlmMAIfocYMlIZVg
 m20mAqIdzvkgczCi+iFdy+v06KBKYFhT4ai/ewh1h0uY6uuPMOp8l1KgG A==;
X-CSE-ConnectionGUID: YJaAAxQESZy7pNsnZ4CdJw==
X-CSE-MsgGUID: v4mSUDogSfCcoP8zrwJFGw==
X-IronPort-AV: E=McAfee;i="6700,10204,11248"; a="18426887"
X-IronPort-AV: E=Sophos;i="6.11,265,1725346800"; d="scan'208";a="18426887"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 01:21:39 -0800
X-CSE-ConnectionGUID: TeE7q4dvRmGmzlMtP6Cj9Q==
X-CSE-MsgGUID: FOzwEpP2RBKw8LegoNAesw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,265,1725346800"; d="scan'208";a="115822110"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Nov 2024 01:21:38 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 7 Nov 2024 01:21:38 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 7 Nov 2024 01:21:38 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 7 Nov 2024 01:21:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=g/11ZIBi31wCgMZUmbONDFrgi4/ss+28iUO5sB/I2+WGJxFhXRVvfvwjJFhp+V3mC0J0TeNTpBHLNY88TSFg44Fsj0OK4DfGpMfQ2AnstKNv0WO9QMVsN49JmI1OzRajDGboj1o2We9NceTfDScN6m+wxzOUxrhofmBbZiD2LzyDnxx/UhhvisLhskMDq8LIgXEcFctJlQUbcjayQ+oflQU4iY0S+D5tLokS8hsaug068nvC1TfYbVHapXoi1iI3OIX+LmO2VB2Dbsex4Sxs7/50GlKKkzRWcUFXBpS+5LIKPdqg2eYIfC3OokP174HAMxh4OtynnbvxMNSlBXMW7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=78HABVNodWrNw2JZ9q7Vg6f1G+bVMXrX4D0dMnCWt04=;
 b=jLie6h9kL/IHN2i9+FU10cyscHB0Hj+h9x0QCTamSZTZlZyI4Tgg2WUL0dVD3/XTh8pGJeneHnY6T2Ku3aRKGUUD3cYLcdNFAtYM+f2wJFdA87HO2OUpK7IOwQxRX8gOdNF2xgeVYU2XKH9E/PFEM7A7chNJUyzGJ2Y6ec9fMJZ9GOqsEK/ss6UhUT+iwlrrDKXc+rttT7PtMZs82es2N4wFAxC8eKxEqPWMSCiUODd2TBnVQCz+iTeGlqkwrjz5CLSUSzUsXEJ++imdg3Zz5hzUxmnRNXbUUX6dYfcCJELICQ413SbBQs2V/bSdl35hfN8zPYxoDZGY/UZEAe5lGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by SA1PR11MB8595.namprd11.prod.outlook.com (2603:10b6:806:3a9::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.19; Thu, 7 Nov
 2024 09:21:35 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%4]) with mapi id 15.20.8093.027; Thu, 7 Nov 2024
 09:21:35 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCHv3] drm/i915/dp: Guarantee a minimum HBlank time
Thread-Topic: [PATCHv3] drm/i915/dp: Guarantee a minimum HBlank time
Thread-Index: AQHbKQH9e6hYD7XONEe7PlPtuwWdCLKcH3mAgA96DsA=
Date: Thu, 7 Nov 2024 09:21:35 +0000
Message-ID: <IA0PR11MB7307FA35B1CCDEA83C0998E3BA5C2@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20241028061418.3460461-1-arun.r.murthy@intel.com>
 <87frogpesc.fsf@intel.com>
In-Reply-To: <87frogpesc.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|SA1PR11MB8595:EE_
x-ms-office365-filtering-correlation-id: 762958c4-30b5-449a-dbcf-08dcff0d93c4
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|10070799003|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?YWvgEj0FlQuwXVLHFby7R4S3d/WPO6VDSNbpXJtSTWjjBZ0qkEbY7JVSnAQ+?=
 =?us-ascii?Q?92wlSpUYUgkwvf5Z/Iol5QrNuv+/Nc4Dm3sbMa4kHZjDhfzjQfrbFQaqfqSB?=
 =?us-ascii?Q?vFGFlVY1wTgpHROIdPblInMK1UkzlUfmkAOKMOyFa/mkU37ROsRu5NfdQSOS?=
 =?us-ascii?Q?H5qFtAbbrUNdN+Pwj3McJuV+L7gIh1sR7CY7uFjA25SOp2/+13cLHcXOce3c?=
 =?us-ascii?Q?rfA/lCPiGZx+Wn1OQcYs/HyveM+CKsluELBO0MMfovfjx1o8GvK9R14zKKHa?=
 =?us-ascii?Q?SQTuqn/EC4zfp+bsWVKyRDPObW68aX4Hmn1FRGUvMPTXiMY70sex378ZDAgd?=
 =?us-ascii?Q?1Jx9JUe7g9/jzruvlz/OspNAg7t/Mq+sCihoZZDBxryEc4LjCj8WmDy3yql+?=
 =?us-ascii?Q?vFYuBw9NoVr+i60v5XSI1VoesIBHqO/Ww3LHNA97wWu+L3YYh8AsT4ZrTOWr?=
 =?us-ascii?Q?xLjPUN+yu94nprrIZ6ZlGmjtCX8V0PuF8dViYttBpAvUxYDziMucWkc7vJmR?=
 =?us-ascii?Q?UOwSRao2ktpALxlJZA6yTNyvoOmL7HvRPONCam7Bs0iZlxnn8VZ7s3FHrSGb?=
 =?us-ascii?Q?4SK/3E8TSveROVtXyl0y9QOBxlZBuV/dmh3hrwyWV0rXmo3QY2j1fV6zEJoc?=
 =?us-ascii?Q?jEjYFLMN0vNDlQAc29OqZKrpZDzaNtxtTyD5y8RAou8Qo51TEqy2nQ5KZSU9?=
 =?us-ascii?Q?rgtPbE5nHbHTehrv4q9bWV+M2LdVKhS17TQvhfiYSy73PkRUXdzz1RriaNSn?=
 =?us-ascii?Q?ycqKIYYZw2f+R8YLTXvYN2BAMUkgz6ppVR+TmumYUvZYv50GTHqpPT5N1rNP?=
 =?us-ascii?Q?3/jvBcD3gxnzJ08VwclCYEa3JhqiP1JUk43Yql2K+cS5KHToo1uj+IzzzD/8?=
 =?us-ascii?Q?XUEwJWV+m0CXmdLsuSNlIKEhouQefJhN0gR04epsr9hSq5H3UOXfoi4KqYfc?=
 =?us-ascii?Q?d0G56rcdtQVzFJaOCvMSDNIj3YeMYIKP7mvtWjcQHCKlOKoqwKXDZsTLGkYU?=
 =?us-ascii?Q?1yFkFHVkwP5ptpf4bP43SUvAjKkzlQucHwT3B0EEyG1XoMwVvBfYslXAnmXP?=
 =?us-ascii?Q?vFs1x1PwE6ai2o5FKFcg4fX0duD9mlsZdrrp1DP7QDNQvwxT+79Y2OOxglbR?=
 =?us-ascii?Q?TD3OZAYq03ssAsPmqe8VmE8e5nsnKiqmbTrov/vQVqLCuYPlW9x99ccJrMes?=
 =?us-ascii?Q?wu9uRZCC5N9REb1F4QVHNGpB8Pj9/ZcDSeMsbr7kdhRE8geFlXInc+ekMiKo?=
 =?us-ascii?Q?Wx2S3n+GPyC1rEQZebSej5rryn3OzzTn+p2LOTsSBFCQuQsouqu8sNg/uQZV?=
 =?us-ascii?Q?4xUvTzUvThMBBMO2f3bFa9eZrIdRSW9eP16XSOc9mVPQ0ny0evH52vZ8bFNa?=
 =?us-ascii?Q?tImbfUc=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(10070799003)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?jW1MxRubmD63QcCke6nSKDmd/cK7gfamt0JOM2js8VBzajZT3q3T3HBgrymI?=
 =?us-ascii?Q?h3tpLZ3mHMBXvsq1vKnMmmAYhpaTy4Fpl9Kh137zqf9GgMVAHbu39gKORNUX?=
 =?us-ascii?Q?LcxNyq97y28LH5ggJeXBD3opLy06+Chst/ymksz+Xu5Ayg+XP7QeinFOHaRy?=
 =?us-ascii?Q?aDUccvbN5881aBKYCZl8aED5WaCKiv2cphKNHOT9z3XkvprP8awMJDWMniT0?=
 =?us-ascii?Q?lkcxGBRgwWJOgpTxfkkcP4SVyAVU7u0c2leLcAjL44wQtY+l4ktg4RybncTY?=
 =?us-ascii?Q?QCT/i2Qn1e37HaACfnO/gmz7tsCZq6sTDDzb7MLDIphnI8yJ6RkTgnOca6Sc?=
 =?us-ascii?Q?t7zjeK749PBPuofx1Vw94w16DPoZ5dHGXo/uleGBG1WfUq2mBGAHb4eTb400?=
 =?us-ascii?Q?qo+YmhkjaAn3gDduQ/9tZC++SdMAfmDXL5fd/Tb610u1G8wAbyx0ACtoipCr?=
 =?us-ascii?Q?zRgjdUcpgBWvudMKyzdQjtFrA65ARCKsdzOOPVY9IYUO0XRDo0feHgpmtyrs?=
 =?us-ascii?Q?N9xD4dfJMdRCEwKS4U0j6AwCY3L3ZDL1Yk2/brvnybAm0ghVB0For2eCR9tY?=
 =?us-ascii?Q?1PhohOvlag44lwMvAv9UafOHJKrwFtNlz+i5vUv39o21UFnHbkiDNUXM+VEH?=
 =?us-ascii?Q?GRpmC1dZRWDz3eHbNoupL6puEHY1vRGav2v6qNmJBlg/iZMr0a+vv2Va3Wps?=
 =?us-ascii?Q?j9gPlhvrmtwI14rTPSw47afj7ObHZ4et0woFLKCSqOQd4uNkK8U3abr294jx?=
 =?us-ascii?Q?AChWAuHgdWEO8vpLKgtFZ4LiWOzwsVqFI2xv2Nj0paUkWmgrji5m3l3cYPpw?=
 =?us-ascii?Q?AycZfDa08Wehh0KpOwDzq23S7q+PLvRLnDV8Sj7KP+BNBdgv7pjBWfWvLrLO?=
 =?us-ascii?Q?hpqIQP7OtBuQ7SYuiFMlpAWJsIlmsJyAJKHQ83gxR4W/r0vANTQhQtOjoTE9?=
 =?us-ascii?Q?ZLUAq3rMtSpS3vg5eykfK4wwjwwvWPVb6jjJehWfSQTR7DTtvkf/Wo6R+6Dh?=
 =?us-ascii?Q?C5JEUlSXzO+ruMsQbxtaxmd7DuGvYSk+mpBLRc2ZaU+GCfd5vnDr32EvTx0J?=
 =?us-ascii?Q?O+0IGlcI7SoZCzgheWUQ1Er4DUNjbd3MAXyuuTEtgZCfqNUk3tscgV+ICuWr?=
 =?us-ascii?Q?oHJZ0fl+AU7xI0tOpYv0UNTg4W4YQ80r4pGEg045u5W3i4pUdLxZudkJECmd?=
 =?us-ascii?Q?z0P1SnEdrex+A2eUC/rWJULgTDFtkAHk8tsmnbMQWlfOx62GDjIJ4VRo5lEF?=
 =?us-ascii?Q?zvcHQ+34QRKbEE5WzYfIRmT9N8cYnWOaeZKRZUsXBknEl9Q3E9jhxoEwwUTY?=
 =?us-ascii?Q?z/4j3snp5DlOLqcAyzZWRLQadlPAb3+v5ZprEIPAa4TN3xGG3aQrXwUV38A6?=
 =?us-ascii?Q?VyG04mISXfx790PuyQwJ8JfzaY1/xpzTLhQBS+9c9rU7yoMk7JnDLKObxtPf?=
 =?us-ascii?Q?aMgz82GqOtRuIhVddAoHxyAj6/jMRX/PSbK5SJCJ42K7fxAq2G/CAKvNQTO+?=
 =?us-ascii?Q?I0Co9Fgm25wZ0urCcR/7snQE+8/tR4CN7gHsb6CXHTguIiiFN2qeg2RrwG29?=
 =?us-ascii?Q?8Dsnrruk6px29RpmU9+cy6brZ5QmP5tHoRYBWCTiOgPN5K1rEzh3H4Vb6D3j?=
 =?us-ascii?Q?qlXOSu/xMMPK0CjvDYlEz20BjI5bPzsobkqVCWu8r9vK?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 762958c4-30b5-449a-dbcf-08dcff0d93c4
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Nov 2024 09:21:35.8320 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6S2T3tpMwGGg05T0Umds2zq0xlvrDtTboaHDBch0fcUBQzI+WPk9zx3F+wW1NajhWVmbJY/jz/PA6qzQpdsEbA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8595
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

> > +
> > +	if (DISPLAY_VER(intel_display) < 20)
> > +		return;
> > +
> > +	/* Calculate min Hblank Link Layer Symbol Cycle Count for 8b/10b MST
> & 128b/132b */
> > +	hblank =3D DIV_ROUND_UP((DIV_ROUND_UP(adjusted_mode->htotal -
> > +adjusted_mode->hdisplay, 4) * bpp_x16), symbol_size);
>=20
> Okay so I didn't really think this through, but 1) do we lose precision b=
y dividing
> by 4 first, and multiplying by bpp_x16 next, and 2) how does this take in=
to
> account that bpp_x16 is in fact the x16 value?
>=20
Spec doesn't highlight more on precision, so should be fine losing the prec=
ision.
x16 is obtained from fxp_q4_form_int

Thanks and Regards,
Arun R Murthy
-------------------
