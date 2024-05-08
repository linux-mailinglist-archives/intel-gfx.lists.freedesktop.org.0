Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 781A08BF998
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2024 11:34:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C97211291F;
	Wed,  8 May 2024 09:34:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UjmjLf+X";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0B1711291F
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 May 2024 09:34:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715160893; x=1746696893;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=uJkui8aRRIy8M3qNjWDprWgtXazCMXuvryoKYH2watA=;
 b=UjmjLf+XWqDcoQxl4FD+9OmGhWmeTpSRh6V/0hz+hde7IigIL1uPFnwl
 p0OcWrRDTCa3sA9qe/KC7qXIvh5EmzKROvlETHmSaGtxX6C+P/QqzxQww
 O93RJav7ioUwXiPqLBPyCfLD7PHLFlynGFB96/xQUt7JPK2UeAxBti8po
 VcU/7IL+4p6IHWzWEMHjjtVzEOjuPxwfi62AVU+Na0TOznhBjeg5yvXxT
 LnG7RYjERyV99MRmdygTxkZsy1xkBiHB+7y3YcuHLpvTIisCvIVJK9Yja
 hc5guMfdEee5sYOTczzxXJCWmJKXIWh36ljyhz1d4egSiQ//DIasbkNSh Q==;
X-CSE-ConnectionGUID: rRxoJIpAQjmomL+L1Dr51w==
X-CSE-MsgGUID: AFRgV2FCSWuwj8jdkjRMQA==
X-IronPort-AV: E=McAfee;i="6600,9927,11066"; a="36389314"
X-IronPort-AV: E=Sophos;i="6.08,144,1712646000"; d="scan'208";a="36389314"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 02:34:51 -0700
X-CSE-ConnectionGUID: l8fWF0gwTra0bMCBMdZG6w==
X-CSE-MsgGUID: 02U+QNg2QZ+pV1CIzpfs6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,144,1712646000"; d="scan'208";a="33382359"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 May 2024 02:34:51 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 8 May 2024 02:34:50 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 8 May 2024 02:34:50 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 8 May 2024 02:34:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y49zLKbeWoWOjI4I9t9ZcBtC8kxKABkHw4iKLHmJoKQoTOtpxuvL7IuKBysryyUA9B5TL0Kd63rtjQguW3zJBaKqgYhYlY8uVhKbZ6l/2b14o6AS9IRhMysIr+iLapFSkeILAM6Dv5Bbs9ohPZmb5e8/oOdBFcN/AkkmMwjACoukPRVvW2eTo/13uU+piy5wyOwI3YotBtj3WV0BrVgaxK+A1ueAn65v2eS6BDWlnmYdZUsFhHDzSIUosJeU7lPLDZwgeD5s/s/6k9xIIOutV79AGdKFe5ykojLxMC/KFg5rTdNyT6V2uzPuLHTw2vUbvA/U6mAI2pTOcYHfz+VYsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uJkui8aRRIy8M3qNjWDprWgtXazCMXuvryoKYH2watA=;
 b=RYnLuM903YuPm3KAPCSwqiWawexDsPnBfjBUhuW3L9Q9PbxippZ3NE0/VEy/hgSdENRMYe9JYdo24/0gjMJ8iWqSZAKLeEzNQRBJ9g0pxvWsvRqoxcopMkpLRJJ1mMNiS+MRfv95d0Z2+VQxr02DUt6an0HuLiet3jPMetXUlfuBjvyufk0ZJbfl3ztUXfgu5zAVFDGHsmx7KP4h0UEaXHE0IxRS9N/hCvnSuK6bz35lHSykOF/XyjEGkZzRnn/3g5DMF72LhQ4mryPGPHvaxbIfvJR/5XeR1q8w4iqZS72CZRu081Er4rg3dhknmsRGVRMwYa01bp/Pj2Wjvfbq0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by DS0PR11MB7189.namprd11.prod.outlook.com (2603:10b6:8:137::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.45; Wed, 8 May
 2024 09:34:48 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%6]) with mapi id 15.20.7544.041; Wed, 8 May 2024
 09:34:48 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "tzimmermann@suse.de" <tzimmermann@suse.de>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>
Subject: Regression on linux-next (next-20240506)
Thread-Topic: Regression on linux-next (next-20240506)
Thread-Index: Adpt7cuPPMBR1f+2T1On00uzl1C9NA==
Date: Wed, 8 May 2024 09:34:48 +0000
Message-ID: <SJ1PR11MB61294E38C4405716DE9BE2CBB9E52@SJ1PR11MB6129.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|DS0PR11MB7189:EE_
x-ms-office365-filtering-correlation-id: 2018f3c4-a960-4aa0-7e9b-08dc6f421a65
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|1800799015|366007|38070700009;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?lwQoNk/PoDJAn/cHi7W1L2Q6Zb0qe2mJlYL1Wm+TLYJL535ncZso6LfUZO?=
 =?iso-8859-1?Q?bBnFoP9WLk4j0jr3PiMfOqia8q4M3BBpUYvzlnq7ua3T4i7TOwq8zwhn7Y?=
 =?iso-8859-1?Q?NvjBWos2au84WmFJXHjsX2nB7/x7j4Qi9mivRbBG+po9FV2BfrU4yflHsb?=
 =?iso-8859-1?Q?QvObG3BNz3QAI9nu4aaoR/PcaBYa0zVMOKm2NelKsILgOzU1qXwIVioiJT?=
 =?iso-8859-1?Q?El69LS1EDbyU9baTd4PB7le8ccrk4yRXP5C+1p9yv3mz4Dz03DSdcWkEne?=
 =?iso-8859-1?Q?5G5fuRTDVQnnQCusCCPb5I4WrsEiBXepgbmjXEuvMevnwDxVBImpJN/9pt?=
 =?iso-8859-1?Q?m+3fD+aNb6y+u42bvfJVgDGBOEZVx4Ra9IdGVA1AKWTWIaDqx1Potv/cy/?=
 =?iso-8859-1?Q?ZEAFY8gyc9y2zHJJ+zledpsYQ435J42UTKs1OEsVpglJjuZM84N4LrFoRj?=
 =?iso-8859-1?Q?VsEvx4CLO/ypyAGjoOG993e0P6gSdWzt27n1s3y0TVeBqWB2qrEC2dQux3?=
 =?iso-8859-1?Q?L1afEWfkJGT5T5Rf0pmtAXLAvJihkQ+tD2eI8wMnnkt33Q5LAQEnu0YppK?=
 =?iso-8859-1?Q?vKrDdY1bqtn/JuI0gQjZt7rzZvDVZD9wAmkdG6+CwxKfQB1JEysQunWNM6?=
 =?iso-8859-1?Q?/kK5BVUVJ5JrlJzJK1sTnDRwtXg5PXLAsm/eYHnfp5GuW02V54SZnKVfJq?=
 =?iso-8859-1?Q?DPeyh+vuQgF3EONcNRY767w+cSpwbgnEAuP7VfpP8HiGsH9m3BCo+SNmgR?=
 =?iso-8859-1?Q?nVAL9t+gH35fgHeH8kNOmqNDOG/1BkiqlViNDMRuZqxXhrB2Tfl3Vq6385?=
 =?iso-8859-1?Q?mc5LIZHSwd2cTSUeTr6chcKfgefZ5C1Y0aXjK5XlWweB7nJ5ia+imVvz1b?=
 =?iso-8859-1?Q?bh9FPJFFODWgE5rawQkl44XC0RWHPpQe+hBeG3UL/rTQKIZ9WP122vNMgb?=
 =?iso-8859-1?Q?an8VRfLb/0XYklbp7tguV+KZrPmoQP2ywodcR+kGfKh0GDgvvlja0v73CR?=
 =?iso-8859-1?Q?hxspw98HG68Va79B5hkziCAhj9oeIeZS2zhypCLte8U9UMZphTFlm3iU/i?=
 =?iso-8859-1?Q?+L3Xg8hE/w/R5wN55L8X+Z1b3gfXlZ9SNa2k3KmOixF8OJ6ILLXki3FCqX?=
 =?iso-8859-1?Q?TfFHA5bI09QN6yJFRYq97fQzY2ElJ/7bQiOSN11+IAi8ID5MW6rDnw2PSC?=
 =?iso-8859-1?Q?eu90WCq7tdi1hmtx1JJISH980OTSdi+ICSJ6NDGARwoT9OyLKpUVcPLYEa?=
 =?iso-8859-1?Q?4nt9hLtftbiYXswHtWFpdX0qyA15XbD/qoEDguzz2Pvrz8tQw2T7USg8zh?=
 =?iso-8859-1?Q?7UIUaGweJV0isw9X77YE9c2//Cv0UkBLjIjUtYmIZIBTw6o=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?Z1o7Wl7cdNbc8wLTjuIKcNCZhCWuGlwottWtBGWAjH71mkmaW5lJpvM7ll?=
 =?iso-8859-1?Q?Dzad20z1Vc5JuHj3a9TOzuWwxDWPmBeC8YSW49qS5irdTfZPd3NLqaQvKr?=
 =?iso-8859-1?Q?J6+AGcvRVG2pHah5TDX2k2Ft9hs8l3ostHpL0iV61VQA2QW9GckMtlW9e6?=
 =?iso-8859-1?Q?PenohzjQNBe72ZV0CKN81b3V5XwkV+urfjoqWRBZhyNNbgRMjKzrizQ+23?=
 =?iso-8859-1?Q?X5gYqsrvngCAt4LZsW0cYD6CDgRj+reTJO1XASZ0NodIbsJ0FT6sAKOjXy?=
 =?iso-8859-1?Q?CaoRbswradcm+t8KFFewVy2I8WtychnpmJpvQ/33OnAoIEgPFu13qwD10f?=
 =?iso-8859-1?Q?VlIWW/WFdi20GO3w1YWmmJxWz6D/TG2cXAQTxgjvXeMt7DW+HlMUkHEM8U?=
 =?iso-8859-1?Q?DIAJPPnV2VAw5Yc3byU63tqgpdqmIfABBYBhLi5YQtgbpRm9kuSBekfVoz?=
 =?iso-8859-1?Q?TUPP3ffPQszxOgkc8vbo0Bad/Gbxj4HzzKbUquGPiGGgvE+sjp9DugyL6Q?=
 =?iso-8859-1?Q?0gLzNSHGwwCD5NLPyoCEN92U5Wp6hGf6PsB+iPFdvW6PpEajOX2zkC65o+?=
 =?iso-8859-1?Q?IfgmU2OCRPz+RXC4Djud++wiX2WKZFoxFSeAJkcdwfQ96+r3LCaORuCoo3?=
 =?iso-8859-1?Q?LUWXKazj5kQVDh+mpKp+9yxAiQDD+3yxVwFcmWdtXbwrfw/uFLOhvbCLeA?=
 =?iso-8859-1?Q?kI+7bc5W9XRm1JFj2AMou6+whXHbXIKxOx4L4z28GQUpUXe1gdK0NmDyQR?=
 =?iso-8859-1?Q?eNyLHkXW/ISDHYvomYKKvWn91pjz77Tn2ypSwOE4TFnpsrkcbtEQ/yYOQP?=
 =?iso-8859-1?Q?fRnQrGVqvUMcrsk4T/MzIrZwlTeUIi2FZx/6s7m9IvPOZZR6QekA8vnKE9?=
 =?iso-8859-1?Q?CRsLBL8VYI7xWBePHozfKnCcoC54Ll0QRvwkKIIFXVmKzUSyszPtgKbbmp?=
 =?iso-8859-1?Q?T1HWuGIrvV4jQcX1OytZ/rB9+YjZCJT1lqC5k2hZ6BkirD5WKKJcM856vq?=
 =?iso-8859-1?Q?qe00t2myN6fDF2vCsygfRUJ+PdM9eeyXodsrUVIRfIL/UcCkEp+RT5UcbD?=
 =?iso-8859-1?Q?bdD3GCBvLCp9NkOTD5xH/lrWQ8kWAvaFBO7jxOtgyXjaM1vkRnPz76Sbm3?=
 =?iso-8859-1?Q?figCxsuPbZIeG9fogGF6QM3Tm7bpv3UckgOzAnAa4flR29JGz5iWHfYHhm?=
 =?iso-8859-1?Q?bIomxdK+uDCblzRHOdfGtvaylVNtrEz6nhwGUXKHN2Hy4N1m0+vfKezg7Q?=
 =?iso-8859-1?Q?sw725T3Uz7Yu1OuKTinne8bafUJ/oWYeY1VR5sdInM++iHRQbn1ikfW+x+?=
 =?iso-8859-1?Q?bj1yoeckySuK9u9t29YWHKBhoBHivIEqKchd8v48zH8DtUoQjBj9Xmp2/x?=
 =?iso-8859-1?Q?HLJfK+z4HQx6teL+fWEzRuNnv33y99a5MqSGFITYfG9qI8QUh9xSQJufzn?=
 =?iso-8859-1?Q?UL8lfceCeNCCLozgl7ldJbx59B63Q40s+EbzNc1R64oNhJG/83oKUZgZ0+?=
 =?iso-8859-1?Q?wCTZtZ7JhBIqPbNlMPZ/s7ry5bw1h7lq7w/Q/8nSSW0bZPYHq5y9uJEyxN?=
 =?iso-8859-1?Q?8GnD/PexfT6yquIhrB6k95wnUqgQwp6aYyJ4YfC4HH62M/KKuLVovif+uG?=
 =?iso-8859-1?Q?5WVjE/MJqZD4J851jAPKnPawjK00luMseGozNgeisu5Msc+3EOiRiq/g?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2018f3c4-a960-4aa0-7e9b-08dc6f421a65
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2024 09:34:48.1048 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UZF5qd+McxXgBkyGupmvhGghgUxoMoZXLbMzqn4qty7bQowgVDL3SbGogmWJImC+8tVNNtRdsH/7nMLJyTVmP0VhMygLKPhI351T4boxP1k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7189
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

Hello Thomas,=0A=
=A0=0A=
Hope you are doing well.=0A=
=A0=0A=
This mail is regarding a regression we are seeing in our CI runs[1] on=0A=
linux-next repository.=0A=
=A0=0A=
Since the version next-20240506=A0[2], we are seeing the following regressi=
on=0A=
=A0=0A=
```````````````````````````````````````````````````````````````````````````=
``````=0A=
Starting dynamic subtest: gt_contexts=0A=
(i915_selftest:1107) igt_kmod-WARNING: i915: Unknown symbol acpi_video_unre=
gister (err -2)=0A=
(i915_selftest:1107) igt_kmod-WARNING: i915: Unknown symbol acpi_video_regi=
ster_backlight (err -2)=0A=
(i915_selftest:1107) igt_kmod-WARNING: i915: Unknown symbol __acpi_video_ge=
t_backlight_type (err -2)=0A=
(i915_selftest:1107) igt_kmod-WARNING: i915: Unknown symbol acpi_video_regi=
ster (err -2)=0A=
(i915_selftest:1107) igt_kmod-CRITICAL: Test assertion failure function igt=
_kselftest_execute, file ../../../usr/src/igt-gpu-tools/lib/igt_kmod.c:1594=
:=0A=
(i915_selftest:1107) igt_kmod-CRITICAL: Failed assertion: err =3D=3D 0=0A=
(i915_selftest:1107) igt_kmod-CRITICAL: kselftest "i915 igt__23__live_gt_co=
ntexts=3D1 live_selftests=3D-1 disable_display=3D1 st_filter=3D" failed: No=
 such file or directory [2]=0A=
Dynamic subtest gt_contexts failed.=0A=
```````````````````````````````````````````````````````````````````````````=
``````=0A=
Details log can be found in [3].=0A=
=A0=0A=
After bisecting the tree, the following patch [4] seems to be the first "ba=
d" commit=0A=
=A0=0A=
```````````````````````````````````````````````````````````````````````````=
``````````````````````````````=0A=
2fd001cd36005846caa6456fff1008c6f5bae9d4 is the first bad commit=0A=
commit 2fd001cd36005846caa6456fff1008c6f5bae9d4=0A=
Author: Thomas Zimmermann tzimmermann@suse.de=0A=
Date:=A0=A0 Fri Mar 29 21:32:12 2024 +0100=0A=
=A0=0A=
=A0=A0=A0 arch: Rename fbdev header and source files=0A=
```````````````````````````````````````````````````````````````````````````=
``````````````````````````````=0A=
=A0=0A=
We also verified that if we revert the patch the issue is not seen.=0A=
=A0=0A=
Could you please check why the patch causes this regression and provide a f=
ix if necessary?=0A=
=A0=0A=
Thank you.=0A=
=A0=0A=
Regards=0A=
=A0=0A=
Chaitanya=0A=
=A0=0A=
[1] https://intel-gfx-ci.01.org/tree/linux-next/combined-alt.html?=0A=
[2] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/com=
mit/?h=3Dnext-20240506=0A=
[3] https://intel-gfx-ci.01.org/tree/linux-next/next-20240506/bat-mtlp-9/ig=
t@i915_selftest@live@gt_contexts.html=0A=
[4] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/com=
mit/?h=3Dnext-20240506&id=3D2fd001cd36005846caa6456fff1008c6f5bae9d4=A0=
