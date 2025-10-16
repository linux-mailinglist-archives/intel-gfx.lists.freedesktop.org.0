Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5ECBBE54DC
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Oct 2025 22:01:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFBCD10EA7A;
	Thu, 16 Oct 2025 20:01:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A3pLz/0K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E50B10E35C;
 Thu, 16 Oct 2025 20:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760644866; x=1792180866;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=64b/UY5C1hmpFSHsiK0qPlITwbOvgEgfjFAZXJpQhT0=;
 b=A3pLz/0KP1rwgt0fxgM/zDwDBzf7txzNUDEL9QBqFXf824aEeTKUF2PQ
 xs9pHzbbi1mQY175EMKL/ghytNLAxUpP4X0mi/oYWhPz0sKytG5A2nxJe
 BEzekek9CWUK5WiQ6gMJkmVG2rHVXRY70tboSIUD6IFUwG5HmTHaKo23g
 Bxod7GbArXL54n46tF9jo6wqqIA3luzdgGRWjDllOF1902nqMnGmKPKPC
 Dlt8NsNZ/dhdvK95J3Ntnk8DcOo+DEWphmZPsIEFgAUwHvZHQXdlVTKIX
 AkzX+gScQnRqyDTonflge/ARllscJma/24hBM7hY0I5QWLE8knDELh1nh g==;
X-CSE-ConnectionGUID: tTAh9dHqQMiKmKje5LUbpA==
X-CSE-MsgGUID: GNzT5fXCT/6/D7vQeHpGyA==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="61881471"
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="61881471"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 13:01:05 -0700
X-CSE-ConnectionGUID: Uqjww+3PQ8K5szXpoAl2/g==
X-CSE-MsgGUID: +xQAgIUuRw6k5Zvc7iSvHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="213131775"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 13:01:05 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 13:01:05 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 16 Oct 2025 13:01:05 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.61) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 13:01:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PbniewR6kGeJt+qYqAXqmXb24Cnod7ERTv5px9qXF12tSXB2NlGcAiyhUQ/mz/wAnMOc5YbbDMMw7b7xvbJ6420q16QzgjaxPGZ+C1ouKyLWaehLsoiYFXGJget6qGygz5Xc2HFJuxFJzDAb5a9AGMLfR9mXAYLZGxmIms8/WKxec7OP2rA6eBDVmFMQ6/M630KmTzqiVxJnyDhmQo0mPjyDWC/Qx04t7bsbky9SFnKGiBOIaeX+QWWGOyeXqAc3NQUcPhVPw2AoAioxYEN72H41XuINMycnLxD/UDrJpBlJ7phEkpPbioGWx9+b1Y70IPEfZ6Wug9JZn0lZOP14Fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/WRTffqloZoGko/xcAlTIvfb4/pqlhIT7Dtdjhso59o=;
 b=dy8VF/J4LVmI3r3bodteG+j7vKeYMTXMiyJy/e7O+K6uf8i03oec41gaVai6IpaYAdHYMN/xl8FlZCUmm0PdMcA9CWcotEwGl9tQiNX3xPx6Y8ZOF4sY3MaoiOR9tdhpAZPxPufTxideKw5USHRUpM1Eg4yJp9Jjv8LhhXNiqUVheUjLf6xuCzeqAFYYr3uow8neS3oyXkrppvUEsWNEnc3SQZVTK+r5foBaCcrPZXNXaewIJz8bwJAKj1i5OeegxZaEvvlOox7tyo5tbiK75EEtKQ77ytcp29sFwi65hKko8oG4/eVGynbqOYkkuLXI/S4uP936wbPYKZFnXiIEMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ0PR11MB8293.namprd11.prod.outlook.com (2603:10b6:a03:44f::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.12; Thu, 16 Oct
 2025 20:01:02 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9228.012; Thu, 16 Oct 2025
 20:01:01 +0000
Date: Thu, 16 Oct 2025 23:00:56 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jouni Hogander <jouni.hogander@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2 3/7] drm/i915/dp: Export helper to determine if FEC on
 non-UHBR links is required
Message-ID: <aPFO-HXGJXSkLjy7@ideak-desk>
References: <20251015161934.262108-1-imre.deak@intel.com>
 <20251015161934.262108-4-imre.deak@intel.com>
 <55a897534e3d0ab51ebdbc56a08281e20a30e937.camel@intel.com>
 <aPEo95sLX2TSol7q@ideak-desk>
 <daf90b518850e8daf14a6aeaf173d43287dc5543.camel@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <daf90b518850e8daf14a6aeaf173d43287dc5543.camel@intel.com>
X-ClientProxiedBy: DUZPR01CA0112.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4bb::11) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ0PR11MB8293:EE_
X-MS-Office365-Filtering-Correlation-Id: a3651839-8ff8-4458-0f8d-08de0ceebadf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?h7rCc41kjbVnOwlsGQZsA+D7fpwANUecd2zIBczt41klVY5x4qGiwlRQv6?=
 =?iso-8859-1?Q?OARQ47wSWT7GF2uYRy5RuFCdloPQq5DlZAMS3ncoxOkxBvkxKPAaZbNkw3?=
 =?iso-8859-1?Q?Daf1vey/AFG3Xsrnc10YySg834vLwoYW5HSlDkMM2fa+hHOc6tAzF0J2us?=
 =?iso-8859-1?Q?6+r+39ymBS4UcRXINhEy+1i8vUZHRRl4G7un2Z6QvaSsacs4DRl+lv5XsU?=
 =?iso-8859-1?Q?+iXtIyBgwOjGAlehh8R4yPsszfnTyxZQWXzUtnPlI+ivKgTwhHSiPA/l2N?=
 =?iso-8859-1?Q?xrML/uqjNEvAnrgEi5DlEgf+x0FEbyul+x4v4bWQfkmGNYf1Q0lcwdNQmj?=
 =?iso-8859-1?Q?qYTD4M6A2TrBELFFFa0xR33s0M54iS2nUuoMr8WsO4ZV6T1s2qiHpd5ZLA?=
 =?iso-8859-1?Q?jtR99pjoCohTz5gXH5pP0elvKhsvKbGZLrx7i8JsWMEqTMlRTZQRaGRQCY?=
 =?iso-8859-1?Q?FgIUr7hd7SVV4bodqJ5XABsxt94IgpFEBuVFP41nmfW5HWfiyfvBnNTnmC?=
 =?iso-8859-1?Q?weiD9mw5/dRoMiEixfWaRULOgGDTIC6OndjpLblEocqrphQ75GIGPqsHiY?=
 =?iso-8859-1?Q?O3Gfn87fCh0uM5v6BViiRpk33KIAbm3LqalHP3WNBosdo94ef4WpnxQtol?=
 =?iso-8859-1?Q?uyRfUXIwfcVWlsq82wp0XHQqKDKWa8fCrGs3o4BXQEY+JTqCzaLagRuTJI?=
 =?iso-8859-1?Q?nTpm2Qr3/DMr4DWZew4N/Ga+/d+woxise2r1H+ILl6LVR16Lz7oo1Lb966?=
 =?iso-8859-1?Q?Ces+xA2BDN71XhlnxZC687wR6uGxjdqgwSYj78beu6bGhLbETth4zGo121?=
 =?iso-8859-1?Q?L1N5ZUwELw/78aJJd7cJGcIB4sYl03gpYGZkOyROQdq8A2LgsQp+2sy/s/?=
 =?iso-8859-1?Q?MeRit/JSCLolUB4mabqxx1DRIsDrn3NS/4lhbDia19LgBGe4JBIqpQqiMH?=
 =?iso-8859-1?Q?GBnd87BQeY6dp2Wk9QmjZObI95TqNjr8/7iN5yoourgtS499gI+Z4b961e?=
 =?iso-8859-1?Q?fMUuakw7Kyx46VfNUZdu195IceLrt6Oi0yst+6o2tIYqfMnz4BXq695HxD?=
 =?iso-8859-1?Q?xkwcaVGEqRFQ61aP6byXEMWahpFwVx9DSLqYmPwe+Di6sNdI1tf4Vy1KC/?=
 =?iso-8859-1?Q?9Opqh2VB6TueJhEGD4NYn2nGktXbW4t2SEEZnklUxL7+6cTpuhpKDI8Swd?=
 =?iso-8859-1?Q?VXcMZhfpwrCITf68Uj9UiBRwFWlp7SG8zXcthF1gyDJqtJ5+ek0lYMhzaI?=
 =?iso-8859-1?Q?aWls0OMH2FP6VCQdOubpuSHWROwhwkYivhNZKRHlRxjLcrM+cCEat1sWwQ?=
 =?iso-8859-1?Q?pD35Qhb3JsKGJUFMsYaIYaHLMv5qXo/Ha+J0N+ap0v9k4QEwaB94Ln4NBR?=
 =?iso-8859-1?Q?1IvUnvd8mGDSCLehrqafFL1zbWzCeLT5knFH+M/1xvJG/MFHusekOHHQ//?=
 =?iso-8859-1?Q?n0zArOOIpmlrFgqn54HLLABePoMMJKNGtRDoxxixzTUHPP1tUIRiz2r8lz?=
 =?iso-8859-1?Q?rxiEclYLXTxfsoS3sqzvR5?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?eYipvtbLqvikvTd1L+X7dHj/oOTEV6lh3EhlsYBPLZy43Hc7l1yA471QD2?=
 =?iso-8859-1?Q?ZFVxhPXBHxySMxkpE7VQnHunh3NIaDsVT11HyH8n2O9rXXSbJiSHmod1Zc?=
 =?iso-8859-1?Q?IpQieO3/qjnPkKBedzjWS5IGxc2hzW1a46M+ohJPZ0/rS/IzuU3f8TiEih?=
 =?iso-8859-1?Q?L1A6Gvmg90pHO1gn+DFy24oUUXAVjRxI8PuuSgDetQkxCbIE0urMegmYbB?=
 =?iso-8859-1?Q?xzwpKtC6MdJbdc0sglm3Jg5ZEn6fVqfhssNhg89lY0VLmXNUEPBz17hgXQ?=
 =?iso-8859-1?Q?3g9yThSG+ef0ExU2pzkA+P+LzllfJZ6S+iYktw2Vw5+XLnb3hlWDZA3j37?=
 =?iso-8859-1?Q?kOkchZ50BZVR7gYjVxYWMBJYTR0Q1lKRV+kiOsnDrL0lsM3nFXpWWkYf3A?=
 =?iso-8859-1?Q?s+MIUBZcDnw3gcrWCt9/JtK80qvS4sOpUw44dCQ6QN4k9Lpv44hoahhzEx?=
 =?iso-8859-1?Q?YG1622KEFep8NzkL9CwVkDWdSYwN08uOp8+YO/PsjObUQn07CqxSDOBE3G?=
 =?iso-8859-1?Q?ge7APjzrkj32A6el8u2t8nr/DrU7FjbZE5tInOHc3+xxdcqi/Y0iqtY1Lc?=
 =?iso-8859-1?Q?pODkP5C4jBKf9A1V896ojbuZZHqUlNcJS0lQquWdd6kjP7dFHhb7j5IPMA?=
 =?iso-8859-1?Q?/NVLDIg1K74Po4OyEJ4bY3FvcHIKJ7WEeIB7qc0UWVq8T/mFGaAEDf7XzC?=
 =?iso-8859-1?Q?JUBPqJsWhYlDk+JIy9A+5mVh5OZbXeBYIBiimSA7lOK1NnCnjO9Uah13io?=
 =?iso-8859-1?Q?1AK80pg+HpOrl+VTEObfw0/JWF+Uw4ZZD3HHJLjY+rORplpNVhfPAIJrz/?=
 =?iso-8859-1?Q?yf/Asa07GL1yx5V7dOGu4Naa7tuw0AsZBfP5sgGqCh2MMKeo2FCjusxoS+?=
 =?iso-8859-1?Q?5w3fkR2yf2TbmKiEwS7Za2DBWEEcsDdtxcfE5Ty0Gz/4SZOWe1tuwXBm/8?=
 =?iso-8859-1?Q?/+djeMKaqA7ozLTi15WdUIaCldoThy5ZZAUt/VWV66FHAH1Mo7hAjwM2sj?=
 =?iso-8859-1?Q?yp2QBafjcAcuCejSEhKDrkBfgno8mZ/LIpIUc+1w/m0JpjvzOFFJk9tWSN?=
 =?iso-8859-1?Q?Bugz5lLJ/JLMz3bP84x74CPZaWZkBW3A9VPZoU7lIyLKb+NJ8VWTBunndo?=
 =?iso-8859-1?Q?kUK9aR5qdyVUzUgIVjMGuIIwYR1ldJVNGHKnUlVuYoc7otfVhILBM3NyE7?=
 =?iso-8859-1?Q?iQlzoIRGzHPOc2fkak+dzrW8/Shht3P6kMtzEOJp/tnJGmPcd6dxbHb1zy?=
 =?iso-8859-1?Q?mKH2LFQ6caFvxpTNZ/1sS+JyXboZ1oIyPSKSuh8Zk9AUksJ4DaMLhI4DYu?=
 =?iso-8859-1?Q?kqmZSckIYUXcf7j1hoEfcqrQjuXkxSBIp3R937YCsXoFwcfLCD8S/opV8E?=
 =?iso-8859-1?Q?oX8B7phlhFrre6oKCzk5LjgzX9CpRImTx6FfvSI2F2wAqpTfldrcH2a4WC?=
 =?iso-8859-1?Q?mm9vSb9SD7LMTqK/N/pBY3k+HX5f2mZOi/ap4NUqZsroApi98ATPbNaAwK?=
 =?iso-8859-1?Q?tbzGJm1rKe1DGA8NPbG4kCKeG7zusFq4GZ3AZbkun1821AyDGHD8WfhWVP?=
 =?iso-8859-1?Q?/MLZsMSwmLXFcR0pzNi1xTjlkRRvsGnY6nSEusl2Hh/R8mbmybi7mEuDeO?=
 =?iso-8859-1?Q?NJUk8I5thAiL5eOEc3K8ZDSCvVLAcuA6ygHz2ACkB4ZvYOtJ7+TkhjVNJ8?=
 =?iso-8859-1?Q?1gcbf6AwDRXV+AO1KENs1l1HbgEfPN1HwP2gJF2G?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a3651839-8ff8-4458-0f8d-08de0ceebadf
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Oct 2025 20:01:01.3167 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0zseEc+o2qBhJS9QX+sf4+g4+YBdnohoEQuaL27SNp4834SwIp4zrHNS+heM7AIzJulzWga1HAOfDNDW6JSawg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB8293
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

On Thu, Oct 16, 2025 at 09:23:26PM +0300, Jouni Hogander wrote:
> On Thu, 2025-10-16 at 20:18 +0300, Imre Deak wrote:
> > On Thu, Oct 16, 2025 at 07:56:32PM +0300, Jouni Hogander wrote:
> > > On Wed, 2025-10-15 at 19:19 +0300, Imre Deak wrote:
> > > > Export the helper function to determine if FEC is required on a
> > > > non- UHBR (8b10b) SST or MST link. A follow up change will take
> > > > this into use for MST as well.
> > > > 
> > > > While at it determine the output type from the CRTC state, which
> > > > allows dropping the intel_dp argument. Also make the function
> > > > return the required FEC state, instead of setting this in the
> > > > CRTC state, which allows only querying this requirement, without
> > > > changing the state.
> > > > 
> > > > Also rename the function to intel_dp_needs_8b10b_fec(), to
> > > > clarify that the function determines if FEC is required on an
> > > > 8b10b link (on 128b132b links FEC is always enabled by the HW
> > > > implicitly, so the function will return false for that case).
> > > > 
> > > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_dp.c     | 21 +++++++++++++--
> > > > ----
> > > > --
> > > >  drivers/gpu/drm/i915/display/intel_dp.h     |  2 ++
> > > >  drivers/gpu/drm/i915/display/intel_dp_mst.c |  2 +-
> > > >  3 files changed, 16 insertions(+), 9 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > index b523c4e661412..3ffb015004c54 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > @@ -2365,24 +2365,29 @@ static int
> > > > intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
> > > >  	return 0;
> > > >  }
> > > >  
> > > > -static void intel_dp_fec_compute_config(struct intel_dp *intel_dp,
> > > > -					struct intel_crtc_state *crtc_state)
> > > > +/*
> > > > + * Return whether FEC must be enabled for 8b10b SST or MST links. On 128b132b
> > > > + * links FEC is always enabled implicitly by the HW, so this function returns
> > > > + * false for that case.
> > > > + */
> > > > +bool intel_dp_needs_8b10b_fec(const struct intel_crtc_state *crtc_state,
> > > > +			      bool dsc_enabled_on_crtc)
> > > >  {
> > > >  	if (intel_dp_is_uhbr(crtc_state))
> > > > -		return;
> > > > +		return false;
> > > >  
> > > >  	if (crtc_state->fec_enable)
> > > > -		return;
> > > > +		return true;
> > > 
> > > Not really changed in this patch: Do you know in what kind of case
> > > "crtc_state->fec_enable == true" before intel_dp_needs_8b10b_fec is
> > > called?
> > 
> > Yes, that's another corner which should've been documented at least:
> > that's the case when there are two or more CRTCs on a 8b10b MST
> > link, only one/some of them enabling DSC (but not all). For
> > instance, CRTC#1 enables DSC, but CRTC#0 does not enable DSC. First
> > CRTC#0's state is computed (due to the regular order of CRTC#0/1
> > etc. state computation) and since DSC is not enabled on it, it will
> > compute intel_crtc_state::fec_enable=false. Then CRTC#1 will compute
> > fec_enable=true, due to it enabling DSC.
> > 
> > After all CRTCs computed their state, through
> > intel_atomic_check_config_and_link() -> intel_atomic_check_config(),
> > the following path will detect that the FEC enabled state is
> > different for the CRTCs on the same MST link (whereas the FEC
> > enabled state should be the same for all the CRTCs on the link,
> > since FEC is the property of the link encoding). After detecting
> > this, the state of all the CRTCs on the link will be recomputed with
> > FEC forced on now for all (forced, even if DSC is not enabled for a
> > CRTC):
> > 
> > intel_atomic_check_config_and_link() -> intel_link_bw_atomic_check() -> 
> > check_all_link_config() -> intel_dp_mst_atomic_check_link() ->
> > intel_dp_mst_check_fec_change().
> > 
> > The above will set the intel_link_bw_limits::force_fec_pipes mask for
> > both CRTC#0 and CRTC#1, then both CRTCs' state gets recomputed,
> > during which intel_crtc_state::fec_enable will be set upfront in
> > intel_modeset_pipe_config(). The above intel_dp_dsc_compute_config() ->
> > intel_dp_needs_8b10b_fec() will be called after all the above (during
> > the second round of state computation) and so with
> > intel_crtc_state::fec_enable already set. This set state must be
> > preserved for CRTC#0 as well, even though it doesn't enable DSC.
> 
> Thank you for the clarification. Patch 6 converts
> intel_dp_mst_check_fec_change -> intel_dp_mst_check_dsc_change. I.e.
> force_fec_pipes mask is not set and it doesn't exist. Instead there is
> force_dsc_pipes mask. Maybe this could be dropped in patch 6 as
> intel_modeset_pipe_config is setting compression_enabled_on_link
> instead and this is also checked in intel_dp_needs_8b10b_fec?

Yes, I missed this, thanks for noticing it. Yes, it can be removed after
patch 6. There is a subtle interaction between
(a) intel_dp_dsc_compute_config() -> intel_dp_needs_8b10b_fec() and
(b) intel_dp_mtp_tu_compute_config() -> intel_dp_needs_8b10b_fec(),
whereby (b) can see intel_crtc_state::fec_enable being set, because (a)
has set it. Then (b) has to reset it for UHBR, as patch 2 and 3
explains. Removing the if (fec_enable) return true; case above reduces
that subtlety actually, which is good.

However, the check above shouldn't cause an issue (after patch 2) and
intel_crtc_state::fec_enable will still be computed twice in the end.
That's still a bit subtle and so I'd remove the check in a separate
patch, as a follow-up, to keep things isolated. Would you be ok with
that?

> BR,
> 
> Jouni Högander
