Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22ABE86F954
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Mar 2024 05:49:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C25F10FC24;
	Mon,  4 Mar 2024 04:49:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UzUCUBRw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1566D10FC24
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Mar 2024 04:49:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709527793; x=1741063793;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=nKt61O/OKwyCk5Vwr3Zf4jZj2BIbMAlWaU2CC3lKjco=;
 b=UzUCUBRw+KImDM0l0/QmQGsKxQSkx4UW39D2O+yOt9wW/0Rmx3TtL9xf
 9qNJQ/Y1QQqO/LsHKOQNW+m533RRmaGVHeoRNXP56AxTmEDqQHw5a+yr6
 NkYEMtphs2B1V1NW/kS5fKpko2+2uAe3upDH9Ez7Ty6m/qklfZ+xLQLBL
 zSSXk+NTvk9tZMneDKhGSk2oniEI0x2s7rcemBNLA76v2bKdokVp0iNz5
 v1AdmL0c+lnLN+CdiZYvI/IWg+L0Kj1mX6PprT2CjRlKQZXCp9LQYoPJb
 LBxI/6jlFOoAYwh1Kejsm2kmLBWYCsGMjn1gw48x3lfUGhRaIw14965fP A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11002"; a="4126273"
X-IronPort-AV: E=Sophos;i="6.06,203,1705392000"; 
   d="scan'208";a="4126273"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2024 20:49:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,203,1705392000"; 
   d="scan'208";a="9055611"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Mar 2024 20:49:51 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 3 Mar 2024 20:49:51 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 3 Mar 2024 20:49:50 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 3 Mar 2024 20:49:50 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 3 Mar 2024 20:49:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=agUZ8Xm9brIsDxeOs7kt6N9LY0NybO+Bx/EEadr2VzVSpVpYrkVM8UyVAw11V4IRk88lRqwECk5nmWm91N57jG31/tA775eQn1AQmw1rqlwmXbpKlVa4qaA8oY8ONBYQTkkNPIpyMPq/DREWslvO8ZIrX/W5s8WqARj4HlGs82C7VqPVQ6HsMNDbfmwCobU2hWX36SKCvdbKbI7/+B4h+3iuFmGIU/QDE2FwZtUzTiWhQd3V3QZmDw5nBlw5wVnNIL2yrmw4egfXjyepVxX87hKuHoFY8DuuYs5TEP6PMLTz/GP15jSUq82dGhOqCH846lFl378KeSV3PZ284KedXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nKt61O/OKwyCk5Vwr3Zf4jZj2BIbMAlWaU2CC3lKjco=;
 b=GSmtMOIL2Vht/K4vcGy13+F3fb3okXCVJqRSR8xlKTJKygdOO2CK4SsDztdcLLARfAIQYKCwEUXmP3vrjNsA2d20rzkSe2nn2Ckjy6nSbpi6hKLHtYTmMCdisF8oToEl/6sZ4jHVhbXALnJxhXNgIYEFSf/kQ8Zd5logo3WtAhQ8vjnNl9uxYQHHTLiGBJPNMDBH4a/JMuWiHZDOpHIBkOBFYC2uSKIqYQK9iv+kS9RGP1RoF7XQHkVemrcNCqxV5WQObZNIlqLfnei/jawlD83xhB4B3hz5lmOIadmY4ZIU5h+j2AgjnKBFgzF84E8SwANAcKubkcpk9WAA2q6oAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by SA0PR11MB4557.namprd11.prod.outlook.com (2603:10b6:806:96::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.22; Mon, 4 Mar
 2024 04:49:47 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::86fd:8a6:5f86:104e]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::86fd:8a6:5f86:104e%5]) with mapi id 15.20.7362.019; Mon, 4 Mar 2024
 04:49:47 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "willy@infradead.org" <willy@infradead.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>
Subject: Regression on linux-next (next-20240228)
Thread-Topic: Regression on linux-next (next-20240228)
Thread-Index: Adpt7cuPPMBR1f+2T1On00uzl1C9NA==
Date: Mon, 4 Mar 2024 04:49:47 +0000
Message-ID: <SJ1PR11MB61292145F3B79DA58ADDDA63B9232@SJ1PR11MB6129.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|SA0PR11MB4557:EE_
x-ms-office365-filtering-correlation-id: f9755bbf-41af-45db-c6d6-08dc3c0684bf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SYDSPtpvN1CGcZbbCbm8ezXb6GQCDsA58R/L9e52Y/In9HJbbT3dVz+u0a9olWbMroht69lui1XyZurcfY0TNhzno1kg617sHP/S1CSWLQWJg3huwMYT14bsfsvtCiKfjQj/Oe+v+sheOAK7fIaV5jdLLGH6q9Jzf8cmqMRKWOM76GA7Ak/1HrtbZ1rdBCohwYdxyx/NoNSqnub2C6p5wLboaUq8RnQ/dpVrzlX31LGIOHwwil5k+VXkDVN0oR6iWk5YqJr+iIG5C/muWV/JqMivsqFaiQRySAQAtAQJjmnN/7vT8z58DcaS2apEjzKrobe2oxO89szSINSJCIb9a7+btoB9vg7mt2iD12tAGjW56iF1VOgkqtsZfk7HsngPJs3o/F46j1NbS5NxduYehMfMX/YM7u2RvHGcL0HwZs+t+p1pm2vwIzuex7jp1fuu9ARx80KCj9tgXzN65URIli4d3pjJ1d7rpPbqFl4vQw+eZAyt0wLcSbldxoro74W6/CexhvLIf9Ndbhe5hknhOFjmh3QY86ZonhlxBgHhoar2tAYk1S9eJX03nDPYEEOXY7nsqTjEMEQ19YTPA60UfMw40W3RdEFNrFNV6vYdtluxa5BTd7moPb+62ERS40UEysykekEyKaViuJVa5ffw799MHIa9g+rdfi3JBIWGajC87XkcxqC5KR4W9R5H4yrQ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?XAVyjA5H1Jyxus4sVLOk8WNRwlWwFhEzt7t5jCAjGtC2XCOU2WMO2T6NqP?=
 =?iso-8859-1?Q?1YNtHqnPx2JOhjVtDdRKJ3CYs6gcGgOf4W94EQGnGIYaTeWuDcJchO1fDw?=
 =?iso-8859-1?Q?T/qFQRrF/0qPEPlArSlbBBYROpDgGQZHSJrXl2kxzH3mcqeBXm6Bh7U93e?=
 =?iso-8859-1?Q?pqWZx/V6vHXTBU54yVvkzGs7H2uDMGPWIi6czIdqnVeeCsxMLmvoTUS0Wv?=
 =?iso-8859-1?Q?ByL/HH7notXIXbCBkIqKi6Fa77bh6UFHMmoBjcTYneSFFf31678WsV5MRx?=
 =?iso-8859-1?Q?Nl81d8XuhI7i7AvWzbR/j4U1RlE5gt2hEQNFEh/vj2F5XLgOlUcS+LAGNm?=
 =?iso-8859-1?Q?SvE3dYDL5reypRr3jwWuyo6X5/8Fy0HLgGwjY+y63rAD+E2Plv6a2Bt7gF?=
 =?iso-8859-1?Q?lIdWuWN2khdeDeyb0Y0WpD6fBWXJTNbYlPR+Il3ub6psxWFt/N0iy3RcYP?=
 =?iso-8859-1?Q?LRDaJ9TwP77KaC55DRY/T2HNWevb2ANchcLdZoFtji0MhP5g2mYx92TxFy?=
 =?iso-8859-1?Q?PIA+g6xYbayfzn2tF0rAyf1p2tW7cuh9b/oSSrt/E1NqSzPslb08NaB/+T?=
 =?iso-8859-1?Q?GgKhfhg45ed/nZ8Lqx8JV5gisqOJfrgVhh7Kdvc+ixQkK/UjGBFisUlV3I?=
 =?iso-8859-1?Q?gNvm2d+rLTp/1jW1sLNbDeBdzsxaY3loC3iEuKfq4dHMIZopkjpR4N4li7?=
 =?iso-8859-1?Q?jQp+tVe2Ks7abPmowm89FNIHyigt2TTKMjDEQ5XNxiD6tjua+BXF/q5+4n?=
 =?iso-8859-1?Q?FdOW6sXL6LYbIKZAMH6b2sgIbL8rznqhRehkDNFdM2qWqeAlipwhYkC+wi?=
 =?iso-8859-1?Q?BGg1Y1Oa+EPNHtLb8g2JcA6UNDLKw18T4tiR8a2btcPlhow+EDw33EO8LN?=
 =?iso-8859-1?Q?BLEo/4DvMTY9HS4MQfIv/a6mqGze8J32ToMVDU4dx6urEHtSZNPAzHMk5a?=
 =?iso-8859-1?Q?FgMPmbcPNEVw8gLsgnW76t0uzKPeh4Do/yMOGnskGolmzOSfRqeIUPXsR4?=
 =?iso-8859-1?Q?zYqP+wdsda+hlqrV2hDmxx2r1VMHHde3dEZiXEZZxurljzstgppnYU6pfJ?=
 =?iso-8859-1?Q?puIO0EVKaPH2Jm4MfeHquCVft14NySQLgCw5XoEpE70cl7eM88SSzi8x/d?=
 =?iso-8859-1?Q?8RWwLj9aQxZtwJ4twIZVjwsJDebhExSo/XaOv87KUFm6nVvQiptH+CrRvZ?=
 =?iso-8859-1?Q?ST5hcZljUaCYyJqOAL7ZsvUkeHpgLCQmaV3Zy4dxT1e/jrbfVZ8MYGbw/3?=
 =?iso-8859-1?Q?IHZxyUWHnow3a3rnLm4db4T9kjgtrzg8J0Ot4WaN8/AGAerEcnmtLeHBaK?=
 =?iso-8859-1?Q?nuPuRdvFR3ERHUJDdoeWf9Ac0HpeT9kUG9Ra2bMl3Kj4Lcub/oF42C79Kd?=
 =?iso-8859-1?Q?vV04tAiaXgyScXKlTflQY/hPE+cwJb2CLSnr16S9RpCFkuqajFBbIdTeQS?=
 =?iso-8859-1?Q?pCUiy8/r5L2jrXV1cpGvbNx53ppONgPV33tmCFYPmUIxDJWFsLjjF3tyEp?=
 =?iso-8859-1?Q?NhLBSJWDYERPnk40wnD303RWxcoBXQa0smAC7OcW436Fyp2SWR1C0469FS?=
 =?iso-8859-1?Q?/XeVO5cjblc9q/NdXWD6GYoA0XDMbbpFRfMqJdWVWA/7kzsOtOlXtA+NJk?=
 =?iso-8859-1?Q?cw3oYyRy8VD+edLe3OnTTPPK+Uhst6wJjUXdAQrS2iVDhFaAaHWbld0A?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f9755bbf-41af-45db-c6d6-08dc3c0684bf
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2024 04:49:47.3773 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7uXWHf8dmlPqd3mY/YQRQPDDESxIFPNwVHqnHZ0FA5Y0au2MQ15WnvBkufx9jPAihM63zKWdS3kdEvAWSCfBbysZoS53jWJt9Yir/0uK4oM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4557
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

Hello Matthew,

Hope you are doing well. I am Chaitanya from the linux graphics team in Int=
el.

This mail is regarding a regression we are seeing in our CI runs[1] on linu=
x-next repository.

Since the version next-20240228 [2], we are seeing the following regression

```````````````````````````````````````````````````````````````````````````=
``````
<6> [388.274691] i915: Running intel_migrate_live_selftests/live_migrate_co=
py
<7> [388.274790] i915 0000:00:02.0: [drm:gsc_work [i915]] GT1: GSC Proxy in=
itialized
<4> [388.540070] page:ffffea0004666880 refcount:0 mapcount:0 mapping:000000=
0000000000 index:0x0 pfn:0x1199a2
<4> [388.540111] flags: 0x8000000000000000(zone=3D2)
<4> [388.540117] page_type: 0xffffffff()
<4> [388.540123] raw: 8000000000000000 ffffea0004524008 ffffea0005f68e08 00=
00000000000000
<4> [388.540127] raw: 0000000000000000 0000000000000000 00000000ffffffff 00=
00000000000000
<4> [388.540130] page dumped because: VM_BUG_ON_PAGE(page_ref_count(page) =
=3D=3D 0)
<4> [388.540140] ------------[ cut here ]------------
<2> [388.540143] kernel BUG at include/linux/mm.h:1134!
<4> [388.544999] invalid opcode: 0000 [#1] PREEMPT SMP NOPTI
<4> [388.550187] CPU: 0 PID: 0 Comm: swapper/0 Tainted: G=A0=A0=A0=A0 U=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 6.8.0-rc6-next-20240228-next-20240228-g20=
af1ca418d2+ #1
<4> [388.561471] Hardware name: Intel Corporation Meteor Lake Client Platfo=
rm/MTL-P DDR5 SODIMM SBS RVP, BIOS MTLPFWI1.R00.3471.D91.2401310918 01/31/2=
024
<4> [388.574636] RIP: 0010:put_pages_list+0x92/0xe0
```````````````````````````````````````````````````````````````````````````=
``````
Details log can be found in [3].

After bisecting the tree, the following patch [4] seems to be the first "ba=
d"
commit

```````````````````````````````````````````````````````````````````````````=
``````````````````````````````
commit ac7130117e8860081be88149061b5abb654d5759
Author: Matthew Wilcox (Oracle) mailto:willy@infradead.org
Date:=A0=A0 Tue Feb 27 17:42:41 2024 +0000

=A0=A0=A0 mm: use free_unref_folios() in put_pages_list()

=A0=A0=A0 Break up the list of folios into batches here so that the folios =
are more
=A0=A0=A0 likely to be cache hot when doing the rest of the processing.

=A0=A0=A0 Link: https://lkml.kernel.org/r/20240227174254.710559-8-willy@inf=
radead.org
=A0=A0=A0 Signed-off-by: Matthew Wilcox (Oracle) mailto:willy@infradead.org
```````````````````````````````````````````````````````````````````````````=
``````````````````````````````

We could not revert the patch because of a build errors but resetting to th=
e parent of the commit seems to fix the issue

Could you please check why the patch causes this regression and provide a f=
ix if necessary?

Thank you.

Regards

Chaitanya

[1] https://intel-gfx-ci.01.org/tree/linux-next/combined-alt.html?
[2] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/com=
mit/?h=3Dnext-20240228
[3] https://intel-gfx-ci.01.org/tree/linux-next/next-20240228/bat-mtlp-8/ig=
t@i915_selftest@live@migrate.html
[4] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/com=
mit/?h=3Dnext-20240228&id=3Dac7130117e8860081be88149061b5abb654d5759
