Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id /ezUMASojmlFDgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 05:26:44 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 079A5132E2C
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 05:26:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A862D10E795;
	Fri, 13 Feb 2026 04:26:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KBhOsHJS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCD7910E7A2;
 Fri, 13 Feb 2026 04:26:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770956800; x=1802492800;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JeXQBWocV9MrefAMz/PpSowQB7eifYQr2Uwa1aDL7kA=;
 b=KBhOsHJSDfBmh8bcZ0eWpQjkNNW9CusEriKnwAfcSxHjYFstwnR4Uu7L
 fRvQxZrOZAO6Oszr+dphWPTGlPvq3BnuAw8F2/qHL/r4LGe3OdY6hX6Ij
 EVSzUIV7Ni5/bA387Ej0yuMOlTsQsTZSgVlYBt933t8qVV1RBFTk5t5ix
 TRFeKN0mt6Zi64/8IkEQH+cz4Tt2nHysoi6+pYICRqy1+s/REob4qYbBK
 cDu931NiH0VGcB3Ht2fJa2DPrCmx1R2reYX8HtTQq4mLqpKJ/c8wsjfmn
 3HuuZ/i241k2yEr4sotsVCKX+ukAOhe4364NCfXKpv3S7DZU9/ZezkmuH Q==;
X-CSE-ConnectionGUID: Zdw3i7JTR/yN6eMdKiOmPw==
X-CSE-MsgGUID: daYo2UV+SdaPDEwNDS9gHA==
X-IronPort-AV: E=McAfee;i="6800,10657,11699"; a="82775994"
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="82775994"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2026 20:26:39 -0800
X-CSE-ConnectionGUID: K/2MhV5fSQ2CZJ/6UgzPeA==
X-CSE-MsgGUID: Sj0mx7u6QHGgSb41wYDewg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="211552764"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2026 20:26:38 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 12 Feb 2026 20:26:38 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 12 Feb 2026 20:26:38 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.16) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 12 Feb 2026 20:26:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qEwy6h1hqqy1x9QTLVHQinuJpb/05lnG5INvpgGuPSIpwxur43cuzR3qcx+5gO48LOybgDVhvj306rj88PL9Q09s9U9cW9cThtqUE9vNI93Jn8HTfSW+z/Git5j3vmi1VUWUBOtc4AE8+UqkppXZEdfiu2st44IX/rg8XKIoXjV1RLvm7y+YHJ7SVZzpbRVuhC0nqVg2UayIQFZXMdLejknZvKYAuEPZv1vEd5bRO+mFj2xOpYKOGNQRh2o3ye/VX8fplTKMGjyqH4DVYDARhXFPGU+S+NWhpSj64A55AWNdjqs+RgUiFi7OrgaBla10jJ4xqllme+g7JjzM9JS5Ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4TJLKB4hBASHhNcm/Qo8PRvxv8NhzxJyeaRMwEHZDkY=;
 b=pGqrj7J5GbtZcDzeOa8b2YhWI8jKySzMG7v5pAKF9xJgXMOtk2cwe2HrVEjr0Ytv0H9uCtdYY4nJTcaREXSNTh+LkyjlnpflS6LL/MUyfrs0BxxycIKfRoh7K+vbQ+Wywg6U2ZngAw06DKaGJdGmpvgFHgtl7RJ+wMANMsGg2QT34BQ6pwIAMYFdZBqkK9fUhqFHp3a7qf+LlkG/u5K5C5c+SGjsTznWrUqtra+jV/pRgdxVvHh5fyNYVA6+JCd+ZfXmXn42lw2HL1tC7xMPJvF0gHQSrBkeaWX6P510jJlRoIfGYSOkM7vboB2oaFm5LTxS/UNDpPAjJG3B2+InOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by PH0PR11MB4998.namprd11.prod.outlook.com
 (2603:10b6:510:32::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.13; Fri, 13 Feb
 2026 04:26:31 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035%5]) with mapi id 15.20.9611.012; Fri, 13 Feb 2026
 04:26:31 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Coelho, Luciano" <luciano.coelho@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 15/15] drm/i915/display: convert W/As in
 skl_watermark.c to new framework
Thread-Topic: [PATCH v2 15/15] drm/i915/display: convert W/As in
 skl_watermark.c to new framework
Thread-Index: AQHcnFLauT2rCs2tk0itc+MCz3gld7WACOVQ
Date: Fri, 13 Feb 2026 04:26:31 +0000
Message-ID: <DM3PPF208195D8D09D92F658B54F7D36D39E361A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260212184737.352515-1-luciano.coelho@intel.com>
 <20260212184737.352515-16-luciano.coelho@intel.com>
In-Reply-To: <20260212184737.352515-16-luciano.coelho@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|PH0PR11MB4998:EE_
x-ms-office365-filtering-correlation-id: 1680ee12-cfd9-4364-7153-08de6ab81039
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?04EXSJLquJ9+v4aQoK82JNdriZzDEYSHRXchQE8jX8s7qJfFUSIxDawcMIMO?=
 =?us-ascii?Q?CdlvZ0Ix80BLzQifmxcC8XYJAo0jzZ1g6pqvSDCFr3V9Pqbiv2V/RIPYSThK?=
 =?us-ascii?Q?k7ItyxYhrfHk6cPE67nj6zokTAdt96lGnQp68gJKqJD1L794Idj53N/WAn+U?=
 =?us-ascii?Q?LIuBQeVVOfWqW9OW0Bvuvlq87iw1dghg6iXaCCNWdlFDvM+/f0SD7/F41SQV?=
 =?us-ascii?Q?Jdbxf1BFBg8+emN/9JOSwyryhjh2jvM+vkNokHbFNeOtagYpdXyM/sB8USYh?=
 =?us-ascii?Q?IP8B97xeWtdEn+tjEQcwCLAnbNPni+mWOwTWWQs6azMiW+LgZL3B11XszYhK?=
 =?us-ascii?Q?xZFqkrmhzIFY0PzgHz2M7wrEkxGY9UIXiRWOoquO8Z1/AVQVxN976hIqjLd8?=
 =?us-ascii?Q?NupnpHebVv6IHm6YgL1gxXAFXLup+vM9WlCsCVZ/BuypiANZVnjbr58Tw6OH?=
 =?us-ascii?Q?gdVF9U2AxLbIfYmQ7M6Hb74Qsq2bZCYAAUqH7UFyDsEYeJCl6lYkF9S+yMWK?=
 =?us-ascii?Q?sPZL8d12w5Pj0i+pupRxGDo2NNlrd8WDLl/eu3bM/vWnvuCoJOubDxbq+9Ge?=
 =?us-ascii?Q?sFuSx8pZ1NmQdJkgN7en3OPhsfenjGi1cYNv6YNIXUkf1NXex5AXo7ZTCb2v?=
 =?us-ascii?Q?5T9UJPRlYWi/UmJGP6rMQqhlcKUZfD7EDdbyn+DbbfckLNalonuZbxaTpx13?=
 =?us-ascii?Q?IzmznmzoEJKD7GeClzp6Viwwn0EapOiR07RxZieMtDaVUt2NMNeJnyvrrZYg?=
 =?us-ascii?Q?dtGeYJmmN7Jui9EM4Sl7qnDD2o+mekXIKXNENGuOMlWAv3Aw1p1EGl9Sv43B?=
 =?us-ascii?Q?f6JNYOSXzXrKusS2LtGRshHnuVNwwQ4vTsPHAeznd+7MFEuEXbsHDAk5zrpt?=
 =?us-ascii?Q?ok2xXVEuggBYf382uv1SV0Luv89z7T4nu6TjXjbEeIDatT2i3mktyriHTGKZ?=
 =?us-ascii?Q?oCmMK0wctUcIuGmtLKtVy1J3qRKd3fZMD56qflCUokdPONb8xODSS72uwYS5?=
 =?us-ascii?Q?fvP5EIzW5f5/9LuzHHWPxyIyaJcDr2/T+rnxaVoX79gPyNN2O/LS4QvQedeb?=
 =?us-ascii?Q?lVhfgeXZqKW7TLCwtsPAbVOBbZgwgeAmwpysBjFIZ1scmBi3uS0DJx9tIjvU?=
 =?us-ascii?Q?DH3UjYNrvMNtCgkr7dbofghDTnJ5Nlg6Dh7GsV45CaF/bbjMYW0ad5u2KEx1?=
 =?us-ascii?Q?RwsIbWLSfdgYOkH74ItqANikQZ1h6xMrnLeQOX7+AwfQsvsQBlwsaYrbrOZB?=
 =?us-ascii?Q?q1DXS+j9Jh+thtMA7jHJxj18pCFlmEDbaSw+3iY/o68NgE8Lyl27MzVkYluS?=
 =?us-ascii?Q?mXpv+ow3RoMDIMjtQxfOqMCFnuYj89DEiczZ4Xui9/P6BxQDT27ae7Sr2Qid?=
 =?us-ascii?Q?Z9nFOt1uFd3q5OdVSAkiwVZ/+S8LUz8W3NH22i/zsoi2iyxkKc4nsLvpE48u?=
 =?us-ascii?Q?HXvW6p4oMwLhu/MpxaH3th4eBz/HsAI6HksruH76s8/8Z2RH+Zh8O9+q5VYp?=
 =?us-ascii?Q?MY4vq2y8a9CClmjz37oaLViYGBLyJPUts2LycBjsq5uFC8QRnI0mEqDJ5Msb?=
 =?us-ascii?Q?ewNu76TQY7EOgres3aQ4n/SYBVo3sPBJ9hnnHkMksynD05y8uf8JxCxhtiW+?=
 =?us-ascii?Q?F5o2dpPz6Bgr4b2hSPUfew4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?U7+KgDvxYKygQfCjmz8GeS9BOGdxJKhlESotKmVZF6y/T0jP5/pzBNdJCjTt?=
 =?us-ascii?Q?+G4kkaHrzMnEIQWsA1ozTFq4uLkwvPfNi+raNk7uYPyTAlTQ0HKNJ1FCMXwm?=
 =?us-ascii?Q?M2wsMTKGaiBOx4hlvWoUr5/vpwJRpyd4wdnE5jBYTOTQeH849/CEJ8mxh/Of?=
 =?us-ascii?Q?utsYYNmqEoSkwVQxirUAQA7tmuMVclPJQFXV4YivRwBPzclvzkS615b+ZUNQ?=
 =?us-ascii?Q?sJD5WtUuJVsFfv6LJQyxPtQ5Co0cYGRBHwWGecUXLYfyvLkeBovixr0PNDCd?=
 =?us-ascii?Q?iX0nT/bKQ78cIlfCZvuEYNEN/AWKXomLuH4RUzzY1BmVrspBdWZC87OVPVvl?=
 =?us-ascii?Q?9o/I2kzqUkSrqL8fq/HYyTaj6Jj7KTX0PeUSvYTIE8Rd9BK7te38Dn5JOckQ?=
 =?us-ascii?Q?m4hKQ9Y7KZLQHbSts2u9iLUN5nHis0qg6TJVaMZ5hVGN0X44JOR91cf4DvSw?=
 =?us-ascii?Q?6HMisaN10BwHz9C6sC+CpAlgXgpHbBB6QdseBADlVMgLfgNMscuXJbFLCPus?=
 =?us-ascii?Q?G8+tu669M5X3E1+2HYhzQg0zIh13CyW13di/QjALuPg4UawAkakK0VhsjU1l?=
 =?us-ascii?Q?MtYzELCE1tzIV+GA81mEdVjhwLPoZScFuEhybRLk+MAvgcegu7JG4jVD/iUm?=
 =?us-ascii?Q?LDNEFuyZvj6UPGc7ztreOXep3/lth3nGSCWBsz0WXbXPB0lMZLoTsg4Uw6Ma?=
 =?us-ascii?Q?iO83VyAbvH+HRomI7hBI+KT/10MK3ufjUjCZDDocvY6ZXyqp0Awdle8ZlwgN?=
 =?us-ascii?Q?egr5qxh2UaT5BWb9gwxNZODQlAb0ZXTVKjPcMhgmU23jIXqU7msVXr9MrU+Z?=
 =?us-ascii?Q?wqJ3ZIAthMwdetx/5HRleu0h9FpDV5g1cBlByESnydJndBJ/jeThpglwpxEf?=
 =?us-ascii?Q?MIc/Nq3tLK4CF/OBhBA+jiUYGNMSps246chXwPuS453GC4ubFseVMufoYMnB?=
 =?us-ascii?Q?d/lpJHekMbKT2RFnC4FCYeIl+uop1oDv7EqWm+wY+HSjaNHJqjcxPb1lZX2h?=
 =?us-ascii?Q?sPjETIeuJI9PMPhNTKs8GIg4tgUHvEsSYbGYVVhtbPTUQ58/kXipolLb7IfK?=
 =?us-ascii?Q?JTm/QQXOg4g9S2o0U9XK7ZjaMsdHqvnu4KSiS4TvIjAV0Pyq7s8XpyP7TwbN?=
 =?us-ascii?Q?vdPKANn902gSwBiLZKCvr2Jbg4js2MvEaQ79k0d5FJgBBkEAI7weSLz8gQtc?=
 =?us-ascii?Q?IQoz5LGWoSjqDKlrHbChG0dXOuQNuOpYKLSuAvg63yNAyw6d79m9fCnm10GL?=
 =?us-ascii?Q?0TLXwo9CSmls0vLP63AWeKT1oF8XsUs8DHuAiEsuurd+ysqtobIbzPlnojqW?=
 =?us-ascii?Q?HDXi/sFEze+yirjWPhABQPfEIslJDuvFDI07FZSiK4aR5eCFRzaF1/RT2Fkn?=
 =?us-ascii?Q?XDwFrThm+PfWyauwDn5fyuJJmGpWKzlJ9Y11zSJGCxVd7ZAC5VLB0IFfS5mL?=
 =?us-ascii?Q?G6NUVliIGEyD64z4/4oSce1ef33jccKSPaUPFUvEmvtX7pGVuvlcgU5tVk6s?=
 =?us-ascii?Q?9KAiOlq8XYxqh1hDGHU1JmlQMxjHaS49zK3toZRu6SiR05bGHqB1J+/q/jDp?=
 =?us-ascii?Q?k0rgm2TxoZjAx9vL3bwScHtV8E63BhJyxOK3R78ZoAra6OKVYSw0owvlckIa?=
 =?us-ascii?Q?i4EEEeX8B+o5zKznfFYesRzKtxUPJUl3N7aPxN3x8J89VSjsjceppoXmC/bv?=
 =?us-ascii?Q?/biySENxGcOvO/KxvOqWslErXKJ5O60pthVGSIrMvWOoyi2h2m53mNtprpCi?=
 =?us-ascii?Q?xtXKzKHV7w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1680ee12-cfd9-4364-7153-08de6ab81039
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2026 04:26:31.1560 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: h0tZ527tcRWJVOrtU3PtT6cby0gWM/Uh/kyQqwN5xPXGaDEg09F4KHrsoWkJhucOcxZcF/MLG6aVKxw72uGeOQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4998
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 079A5132E2C
X-Rspamd-Action: no action

> Subject: [PATCH v2 15/15] drm/i915/display: convert W/As in skl_watermark=
.c
> to new framework
>=20
> Convert the low-hanging fruits of workaround checks to the workaround
> framework.  Instead of having display structure checks for the workaround=
s all
> over, concentrate the checks in intel_wa.c.

I think you  mean intel_display_wa.c
With that fixed,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

>=20
> Acked-by: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_wa.c | 2 ++
> drivers/gpu/drm/i915/display/intel_display_wa.h | 1 +
>  drivers/gpu/drm/i915/display/skl_watermark.c    | 3 ++-
>  3 files changed, 5 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c
> b/drivers/gpu/drm/i915/display/intel_display_wa.c
> index 20216514c085..99a2097275b7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
> @@ -142,6 +142,8 @@ bool __intel_display_wa(struct intel_display *display=
,
> enum intel_display_wa wa,
>  			 IS_DISPLAY_STEP(display, STEP_A0, STEP_B0));
>  	case INTEL_DISPLAY_WA_22010178259:
>  		return DISPLAY_VER(display) =3D=3D 12;
> +	case INTEL_DISPLAY_WA_22010947358:
> +		return display->platform.alderlake_p;
>  	case INTEL_DISPLAY_WA_22012278275:
>  		return display->platform.alderlake_p &&
>  			IS_DISPLAY_STEP(display, STEP_A0, STEP_E0); diff --
> git a/drivers/gpu/drm/i915/display/intel_display_wa.h
> b/drivers/gpu/drm/i915/display/intel_display_wa.h
> index 784baf66222b..52c3e3ebdeab 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
> @@ -54,6 +54,7 @@ enum intel_display_wa {
>  	INTEL_DISPLAY_WA_16025596647,
>  	INTEL_DISPLAY_WA_18034343758,
>  	INTEL_DISPLAY_WA_22010178259,
> +	INTEL_DISPLAY_WA_22010947358,
>  	INTEL_DISPLAY_WA_22011320316,
>  	INTEL_DISPLAY_WA_22012278275,
>  	INTEL_DISPLAY_WA_22012358565,
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
> b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 8e3031adb09f..1940d914ddd5 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -22,6 +22,7 @@
>  #include "intel_display_rpm.h"
>  #include "intel_display_types.h"
>  #include "intel_display_utils.h"
> +#include "intel_display_wa.h"
>  #include "intel_dram.h"
>  #include "intel_fb.h"
>  #include "intel_fixed.h"
> @@ -3412,7 +3413,7 @@ static u32 pipe_mbus_dbox_ctl(const struct
> intel_crtc *crtc,
>  	if (DISPLAY_VER(display) >=3D 14)
>  		val |=3D dbuf_state->joined_mbus ?
>  			MBUS_DBOX_A_CREDIT(12) :
> MBUS_DBOX_A_CREDIT(8);
> -	else if (display->platform.alderlake_p)
> +	else if (intel_display_wa(display, 22010947358))
>  		/* Wa_22010947358:adl-p */
>  		val |=3D dbuf_state->joined_mbus ?
>  			MBUS_DBOX_A_CREDIT(6) :
> MBUS_DBOX_A_CREDIT(4);
> --
> 2.51.0

