Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01B2DB95C6A
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 14:08:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83CEA10E606;
	Tue, 23 Sep 2025 12:08:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="feTFj4/M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D38B10E605;
 Tue, 23 Sep 2025 12:08:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758629291; x=1790165291;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=bbpZy8CIuoZGO0QAFiX6oT/FYaouo7Gten9mb/eKsks=;
 b=feTFj4/MHJWx/PznRI3qU6gwmWPVBl6s3RtCcQMCKik+PVEaQ5pnc+Pq
 39TJr/LxIuXuGZwtmfrmIsbYIAWRUlmgqu3AeVKCp0Rfk2A/+feXmpEgF
 Z9SA4OO+pzleJg/foP5dUKh7tWG/MQIYMtupS03DAqyzPQVsgTUODE4yI
 Yot5FNpm2nSwsPi4JxP5WjFbpVRt6ISJmGls0bGAbsWnMZRekPGOd26xL
 XiQuAgqJcIYoiO26HZAt1xMrYsJTDVYnu0DZFvy7R6hBE/OFLTsijL0Xl
 L01/vQcKjNjx6NQrXLMJLdeukG2L1oMZJ9bxta4vLCOSJSCPKdZdDRPwh w==;
X-CSE-ConnectionGUID: w0ps05FwSw+XQ+BZqtvR7Q==
X-CSE-MsgGUID: Q0uLIrNWSVOu69sqLNNLdQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="71527898"
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="71527898"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 05:08:11 -0700
X-CSE-ConnectionGUID: 9ozRcJRWSKibPfnXojRmqQ==
X-CSE-MsgGUID: +V2Z+uf+SxaqiAOA161jdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="200450914"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 05:08:10 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 23 Sep 2025 05:08:10 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 23 Sep 2025 05:08:10 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.22) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 23 Sep 2025 05:08:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kFHEHuD/bPhCbdH2LWrsu9bCigYchLf5hcHI/6qrNepNSiSKp5WCLLuU++RDtcTUSh4jTzrv252aGcpXPJLWqhLktW29521y8s8wyg5U5Ckh3ZrortbjfIIRj7M6HzGi5nZ34pIUciXEubLqSRIetQODU9jlVlJs2ZRi628rbmWNk5u4nKFIrNPgQ7MN0b13erS8wYVxeBQ9q8pJyzkDEwORAaONx3FMpoOG5y1PyqZqktYVI/Yru9XGJPOtmDkTPKMZErBhwmrQjBs2nuXBto0UYffJyZe4YMp7avg3gPiPm9zxYY0ZZZh2k6K6R1/1DPBJ7MQlG00jSsFZDPPi7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dK/FTeJcmqvlfNnlXRYWaucLhxwDnOQ1dwhgky1DYYs=;
 b=JFWMnff9zONbWxKmxb+7rpiiinKVLQGHNvrMrBLgBjOI/gUqtoPbIJ0ct/PYbaKfHrCvVrXelaH7BCgHPcu7DZIW8acY4B2WTrKgMe1Y/mIwCvZRCv/uJ1LXKXdykMBHcOKaAxQskASzI4hmMpl419FhPJKkcE6fnbr0xADwBb/66TyF6aSVrRJJ2w3OE/b7SIRtrZHleBIP9cjv/kxCiYqsxeFDPMpWFZbtnBKPavtcQvHvjgQb+Ez/7WZsWp5QwUPPjBpLAFY85ZQ80W6zo3w0c06RuuvDpdGPY8nzjYe+hvsojYatuZTSskFsekCn2jOOC8PBbRHJP3IOcviVwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS4PPF178D5B043.namprd11.prod.outlook.com (2603:10b6:f:fc02::d)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.16; Tue, 23 Sep
 2025 12:08:07 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9137.018; Tue, 23 Sep 2025
 12:08:07 +0000
Date: Tue, 23 Sep 2025 15:08:02 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 "Vidya Srinivas" <vidya.srinivas@intel.com>, Swati Sharma
 <swati2.sharma@intel.com>
Subject: Re: [PATCH v2 5/5] drm/i915/dp: Handle Synaptics DSC throughput
 link-bpp quirk
Message-ID: <aNKNokM4y_qrsYkT@ideak-desk>
References: <20250918211223.209674-6-imre.deak@intel.com>
 <20250922134637.271999-2-imre.deak@intel.com>
 <aNGu6_6JkOKkAWpH@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aNGu6_6JkOKkAWpH@intel.com>
X-ClientProxiedBy: LO4P265CA0267.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:37c::7) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS4PPF178D5B043:EE_
X-MS-Office365-Filtering-Correlation-Id: 6613f4b5-276b-47af-655d-08ddfa99db4b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|10070799003|366016|376014;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?6PL8a9NYcJJHiZYPs0NdRaaMilQRQZPu4GcORBylKDSOZcEDWkaGSGZEOX?=
 =?iso-8859-1?Q?nshWFVcZqrSBeXG5EcLUskrDHM0TnLM5BK1hEKd3P0LTFmJVFV3cZJ4K9k?=
 =?iso-8859-1?Q?p3t8OkgLBJ+dzbpxpRKFDYn3d6MHR8fEBodHBuDGge08EHtMee2CzjlOwx?=
 =?iso-8859-1?Q?whOa3awEwuXAPuMbLaSrnzV42bgVlzVBncQSvJEXs0MHpqVNbwohRgZR0k?=
 =?iso-8859-1?Q?k5q06Mw4FA32EbmEfsbDe3HGCnSmaWe2SR/v3iYfdhY26UoACV1oBItucp?=
 =?iso-8859-1?Q?eJw1muFIGgMk40KFrciwl8SDf0PL3EypuZt9tygQGsFj8vaMrrPmzeCbUb?=
 =?iso-8859-1?Q?cSw/s4bnK9HypWjCmN6UEEjXtNaetdYQqkGrMnqTbR9CdrpIXSxwTj8iNw?=
 =?iso-8859-1?Q?vG8NNwHi5YwMxNuPLigLrlvW0Lyij3waJrQI50SE6ocbvWiED97D78GMZs?=
 =?iso-8859-1?Q?+aF1R8W7wI2qIvgb+8fHJ5n8DsdSE/ObN5WW0qJGEeACXvBmxWmTGlSYoy?=
 =?iso-8859-1?Q?Z9y1SNyifEnSy4taA+2uNRoUZSd1nRmOKW/jr8wbkdpam1v5Q9EWPRThnq?=
 =?iso-8859-1?Q?KDDo+NiMCaBsySpA1sVomQwjn7sVjlZjb4qRfQQH9LC3JoFoRVgqbANxwT?=
 =?iso-8859-1?Q?bj4sx3x0Y5sNFNr7kU7i2DLAvVg25n8SD87IGDGjz7SLVi4uIwjHajcsIg?=
 =?iso-8859-1?Q?4VYSAbhJBmwbRC7jKyH+HHMfYP0zXIQExbP54rn8wH8KW21KFz8ki/8HVt?=
 =?iso-8859-1?Q?5qf5StkJjRp8aybrZ4Ca4sqkWoaZjZ1DSoznkkbXjWPB/8+CeEk94GqJuV?=
 =?iso-8859-1?Q?JAf9+JvFguhTIixaaIEaOcswF1A6A7iCDSVZxexuZir82vSI2CnV1O4Gpz?=
 =?iso-8859-1?Q?wtuaBGH70/mnGYUWSg4zqiRVgufqwYPk++6/AKnznV7FdZ4pgVbqGCo5PZ?=
 =?iso-8859-1?Q?sF59FnR7CQxyG3+PGGmeaw7AfutqDAtJq5gcZC32YxwzTsIEHw9YvezLFj?=
 =?iso-8859-1?Q?xVHQDCx11Q2Sh6nCcyE7g503OZ0GgtOLYBZ8lDx9Kbmz2sZ+VkDoJDvR+p?=
 =?iso-8859-1?Q?VWRaBJsOEuu4VqN996iAcltYsuG+fWvlICkcWhdM0xy5X4Gop1/ns9NTWo?=
 =?iso-8859-1?Q?VIfv7FSOuvsMmKjSF3/LALwdBHVofdGc+1B8pvQhjCf5vAv9xBVeD4a2ME?=
 =?iso-8859-1?Q?YF3BK6ehXQQs7sI2aRL4SjgTN8jJwW8DEB2u7pVWSXDFZn5lRPFI0EwAii?=
 =?iso-8859-1?Q?Oqy3osZ9XjSM9NbOn5TolBusdPbrBrYaf4jzieJ0U7PpJB5QqCgYlgaNs/?=
 =?iso-8859-1?Q?s5IjifnMOCNTPcv+prLRIgbu8+Afif4GJyuxg4N6kIy9Zd82pUF3QmcswK?=
 =?iso-8859-1?Q?uW98sLRj3PbpE2ygIdtd58hjw4Ya/qtX3Whz1eGD3JBGjrIsxjIj6J1D1D?=
 =?iso-8859-1?Q?gi6/RoHnV+Ej6thROTKcMIhU0I1gEY3hs+6Y55tfvHbQz1zyJ8+sVMpYcz?=
 =?iso-8859-1?Q?M=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(10070799003)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?n5vO+SJ7c56qSpjGB1nwgV5s8Vdpp2vGLvQI5ugLtLmwGW0VNx5g1PBZh6?=
 =?iso-8859-1?Q?Lx/ungXs3ChMFU+URKI64VL7q+qynoJXdUJAcHkT8SkgzSbQZsSXE+cAJZ?=
 =?iso-8859-1?Q?BqjEC3Qc6zFtKnFQ7jLi6/rFnRiLpLVjVA6s+j931jBMvduVqrN0jzYvqt?=
 =?iso-8859-1?Q?QxxQo5rvOKiyANNADfHcS+3d5cohUQx5Fu2fjWq9GP+9nOcSsAYExAao+5?=
 =?iso-8859-1?Q?WHAZB47uUrWAgpixoD7/BIPUvqeJxUm6soNXzIoiCGBU58NqcrDKQelfEO?=
 =?iso-8859-1?Q?Fxnn543UVK3EHKlJn29TvBD9oaG4DrAOfZZ+IYjRZNHGkZ1QIFh+a/yNKr?=
 =?iso-8859-1?Q?DoM7sUIIwGypRL/oewAOgE9T7gnEwZivUhoelJndG74buXtczL9mXF2Cl9?=
 =?iso-8859-1?Q?Ve51tqSu3cn/dqM5+rFfKJXyvP/8NRZgXYOmd/GLSEhptPaCtXKqjIDfUa?=
 =?iso-8859-1?Q?tLovXLPoPgX8jD6me1AK+xxHOt6VSHdxMuL/gYfsBlfgiPSW5AjftN7bVr?=
 =?iso-8859-1?Q?Hypabd3pyNEadjOsnRwtJJa25+S89Y4Hgh5cVWND9sGj5YR/7tEF8WHrVX?=
 =?iso-8859-1?Q?NX4RSnoMWZbDXyFXssNVXV+LYl/9PnlIjwbNnYg0tWnyJzhLBtwFVQNhfi?=
 =?iso-8859-1?Q?IEyrdE/4yIq9GobpdKLvOoYMGkuEf1pB258zE1gsW/C7CT5NKZuDITnSiM?=
 =?iso-8859-1?Q?PPi3QaF8jcJMW4p3+23mkvHzG7dOwvpdX1psRro9iZRIypWWBJRn9zt35x?=
 =?iso-8859-1?Q?giUy2M0t42/5krmHuVfYclsJHToJbO9O6Uoae3yM2j8oYjShpD28ia9Fp7?=
 =?iso-8859-1?Q?CB+DytW2WINcHltm4/8/AgMLQMcG2Fm37GCKtH+GD1WEiBpMWzvD2cN6OU?=
 =?iso-8859-1?Q?KpKF+cEQx94Haso1ws88CgJ/xQSvzBzfTnXzpw6WGQq7vTnxngqn+RHX/V?=
 =?iso-8859-1?Q?r0F7UWC+5ccjBSOji6+KUnVf2xPEhw9j+RaeKDdaH09tQnYJ2LucL0rYLt?=
 =?iso-8859-1?Q?5N8wKB49M3boC4t+UeVjUJvO74EJjWAEqcmGsZq/OmcAXyCaY7BxzikaY0?=
 =?iso-8859-1?Q?Ju9gB3tsRCA2phBGWxNAf37450ygxEljTK0/7dMPidXW27BQQNcFY/hNwP?=
 =?iso-8859-1?Q?gq9vHBYFEn+LOYTnFXhMfhNm9bfbHtlhqE3kuVNs3y0oUdDcNHdpWW4Imb?=
 =?iso-8859-1?Q?6uFTHdokV0gXm4Fq4oHpnzlN3saNKg9swoyJvL9MEysJvD40l4r1lbrK7x?=
 =?iso-8859-1?Q?m/R65u9/APG4oacNStAXSTXMdM2HA22kDacUkhlIRb3GvyQlmKTI0oLIzy?=
 =?iso-8859-1?Q?tvHVoBlUH89opIjLFxRdNoPpMHSW/Ka8S5tqild5eBexW7GdYLIU5yKuFW?=
 =?iso-8859-1?Q?OEAtSiVtggaZYVp3EqiR5RLSVpMYXSihFrqRusMu7hnG/dXntFmBdF8SEy?=
 =?iso-8859-1?Q?AGSN9U+Td4/5wBTxmYJkBw48OhiU9iiRjpvPazet+kHf/PAYKICmeP8E1B?=
 =?iso-8859-1?Q?Qj0D8BiAiUjD0yGRmMtq1iTKlbNQKkiNMzgOofjkzysfSIFtO9Oimzysrx?=
 =?iso-8859-1?Q?1ACX0jIhFY5L4Y3VtxjR0cv5hZoT40lXJJ8x/L0AS8RDeqof+VynpBCB24?=
 =?iso-8859-1?Q?SMCdl4F8gr9Fmayghx7kRyiIYgnsXcQAYvzho6jsQDS5ohAwHMNVSNWbBq?=
 =?iso-8859-1?Q?CQtynO7K6RW7lfsX9YZPQpYQjs1WvdeFJCpdAZ9L?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6613f4b5-276b-47af-655d-08ddfa99db4b
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Sep 2025 12:08:07.7407 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qJiR+BvbScPY7Vb8OZA4T0WlUoCRZJe6K6T9KiaZcZieri+T5JaNHsDWaGGSz+bYQJUCPx4CWlQd11TW10XieA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF178D5B043
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Sep 22, 2025 at 11:17:47PM +0300, Ville Syrjälä wrote:
> On Mon, Sep 22, 2025 at 04:46:37PM +0300, Imre Deak wrote:
> > Handle the DSC pixel throughput quirk, limiting the compressed link-bpp
> > value for Synaptics Panamera branch devices, working around a
> > blank/unstable output issue observed on docking stations containing
> > these branch devices, when using a mode with a high pixel clock and a
> > high compressed link-bpp value.
> > 
> > For now use the same mode clock limit for RGB/YUV444 and YUV422/420
> > output modes. This may result in limiting the link-bpp value for a
> > YUV422/420 output mode already at a lower than required mode clock.
> > 
> > v2: Apply the quirk only when DSC is enabled.
> > 
> > Reported-by: Vidya Srinivas <vidya.srinivas@intel.com>
> > Reported-by: Swati Sharma <swati2.sharma@intel.com>
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  .../drm/i915/display/intel_display_types.h    |  1 +
> >  drivers/gpu/drm/i915/display/intel_dp.c       | 58 +++++++++++++++++++
> >  2 files changed, 59 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index 73bdafae604f..aff63bf0f229 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -551,6 +551,7 @@ struct intel_connector {
> >  		u8 fec_capability;
> >  
> >  		u8 dsc_hblank_expansion_quirk:1;
> > +		u8 dsc_throughput_quirk:1;
> >  		u8 dsc_decompression_enabled:1;
> >  
> >  		struct {
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index dd082d2fcc96..5e7aea560910 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -2509,6 +2509,56 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
> >  	return 0;
> >  }
> >  
> > +static void
> > +adjust_limits_for_dsc_throughput_quirk(const struct intel_connector *connector,
> > +				       const struct intel_crtc_state *crtc_state,
> > +				       struct link_config_limits *limits)
> > +{
> > +	struct intel_display *display = to_intel_display(connector);
> > +	const struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> > +	const struct drm_display_mode *adjusted_mode =
> > +		&crtc_state->hw.adjusted_mode;
> > +	int max_bpp_x16;
> > +
> > +	if (!connector->dp.dsc_throughput_quirk)
> > +		return;
> > +
> > +	/*
> > +	 * Synaptics Panamera branch devices have a problem decompressing a
> > +	 * stream with a compressed link-bpp higher than 12, if the pixel
> > +	 * clock is higher than ~50 % of the maximum overall throughput
> > +	 * reported by the branch device. Work around this by limiting the
> > +	 * maximum link bpp for such pixel clocks.
> > +	 *
> > +	 * TODO: Use the throughput value specific to the actual RGB/YUV
> > +	 * format of the output, after determining the pixel clock limit for
> > +	 * YUV modes. For now use the smaller of the throughput values, which
> > +	 * may result in limiting the link-bpp value already at a lower than
> > +	 * required mode clock in case of native YUV422/420 output formats.
> > +	 * The RGB/YUV444 throughput value should be always either equal or
> > +	 * smaller than the YUV422/420 value, but let's not depend on this
> > +	 * assumption.
> > +	 */
> > +	if (adjusted_mode->crtc_clock <
> > +	    min(connector->dp.dsc_branch_caps.overall_throughput.rgb_yuv444,
> > +		connector->dp.dsc_branch_caps.overall_throughput.yuv422_420) / 2)
> > +		return;
> > +
> > +	max_bpp_x16 = clamp(fxp_q4_from_int(12),
> > +			    limits->link.min_bpp_x16, limits->link.max_bpp_x16);
> > +
> > +	if (max_bpp_x16 >= limits->link.max_bpp_x16)
> > +		return;
> > +
> > +	drm_dbg_kms(display->drm,
> > +		    "[CRTC:%d:%s][CONNECTOR:%d:%s] Decreasing link max bpp to " FXP_Q4_FMT " due to DSC throughput quirk\n",
> > +		    crtc->base.base.id, crtc->base.name,
> > +		    connector->base.base.id, connector->base.name,
> > +		    FXP_Q4_ARGS(max_bpp_x16));
> > +
> > +	limits->link.max_bpp_x16 = max_bpp_x16;
> > +}
> > +
> >  /*
> >   * Calculate the output link min, max bpp values in limits based on the pipe bpp
> >   * range, crtc_state and dsc mode. Return true on success.
> > @@ -2558,6 +2608,9 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
> >  
> >  	limits->link.max_bpp_x16 = max_link_bpp_x16;
> >  
> > +	if (dsc)
> > +		adjust_limits_for_dsc_throughput_quirk(connector, crtc_state, limits);
> 
> Would feel cleaner if we did this in the actual dsc==true branch above.
> Maybe the actual thing that determines that max bpp should be some kind
> of pure function that returns the max acceptable bpp, and then the
> caller can deal with it.

Ok, did this now as in
https://github.com/ideak/linux/commit/25edc09658439

> Or at least move the 'limits->link.max_bpp_x16 = max_link_bpp_x16' into both
> !dsc and dsc branches. That way we don't have this strange looking drop out
> from the if statement just to do the single assignment, and then going back in.
> 
> > +
> >  	drm_dbg_kms(display->drm,
> >  		    "[ENCODER:%d:%s][CRTC:%d:%s] DP link limits: pixel clock %d kHz DSC %s max lanes %d max rate %d max pipe_bpp %d max link_bpp " FXP_Q4_FMT "\n",
> >  		    encoder->base.base.id, encoder->base.name,
> > @@ -4272,6 +4325,7 @@ void intel_dp_get_dsc_sink_cap(u8 dpcd_rev,
> >  	connector->dp.fec_capability = 0;
> >  
> >  	memset(&connector->dp.dsc_branch_caps, 0, sizeof(connector->dp.dsc_branch_caps));
> > +	connector->dp.dsc_throughput_quirk = false;
> >  
> >  	if (dpcd_rev < DP_DPCD_REV_14)
> >  		return;
> > @@ -4292,6 +4346,10 @@ void intel_dp_get_dsc_sink_cap(u8 dpcd_rev,
> >  		return;
> >  
> >  	init_dsc_overall_throughput_limits(connector, is_branch);
> > +
> > +	if (drm_dp_has_quirk(desc, DP_DPCD_QUIRK_DSC_THROUGHPUT_BPP_LIMIT) &&
> > +	    desc->ident.hw_rev == 0x10)
> 
> Rather annoying to have part of the detection here and part in the
> quirk list. Can we extend the quirk framework to support hw revisions
> as well?
> 
> Could be a followup.

Yes, agreed that this should be part of the DRM quirk table. I'd like to
get a clarification about the list of affected devices. Based on that
clarification this rev check may not be required. So for now I'd leave
this here with a TODO comment.

> 
> > +		connector->dp.dsc_throughput_quirk = true;
> >  }
> >  
> >  static void intel_edp_get_dsc_sink_cap(u8 edp_dpcd_rev, struct intel_connector *connector)
> > -- 
> > 2.49.1
> 
> -- 
> Ville Syrjälä
> Intel
