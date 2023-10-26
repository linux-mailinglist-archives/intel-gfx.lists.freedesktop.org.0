Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E6AF7D8628
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Oct 2023 17:47:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08A24892C1;
	Thu, 26 Oct 2023 15:47:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0642F10E125
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Oct 2023 15:47:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698335240; x=1729871240;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=J4JHmEVJ+IvngFhNOW2asO2zpdVCzxbkB7uQNb8gsBU=;
 b=Cgx0Gnso+PJlLJdKHpgljhZXmASWhUziAICAEBElv8aSveVz5PVHXKCj
 r1PKIDB1C4d0eHDSVA/fQnADzSF4unlspz36h5SoExcZO5pi0r+OGQxsX
 //0g19cN5Kx2ftZUAJuLbLe84ZDmigD9fvCUfgIqZmiFb4YBCghye060y
 cKGYd3t4LRvvCoJMawY1Z1tmOeec/vp7oKvfbRHICS58K1DXuuBJwWnVe
 ckFGUjzDPlri9JBdw6OKh/9/qJWBGty9nO2UU/9H//c9AVTJr1Nr7ZX3d
 Tguo7KmXrV9wy69AQDuoRnExNh4aHB5jh6tjRKiI7t3I6AYyUsJbU1CIB w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="473822432"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="473822432"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 08:47:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; 
   d="scan'208";a="7321007"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Oct 2023 08:47:07 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 26 Oct 2023 08:47:17 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 26 Oct 2023 08:47:17 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 26 Oct 2023 08:47:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U1OtXXdqygapUnDedUCGBI/lC7j4Uiq+TWuhSb0NvXVQVZ0vxZ42/7IeawNECqrr/89dG2HfipJ/YPgOuwfU5/zlTXR8A+uCo+u6OZ+XkEYtESrHEJbn0O7SInjIhgLv3Z4BbH8xu1RLcaFHEjV10+0L8ghf3dDZMIg8Is+vzcpNAOlX0VPX+LnhDnVX4iiWD3SuLKIY/juP4SCI2SmsqlnVYSCu8vBXnU386jhwCJcYfeXpIH3gPCpJFXgWZjq9XCB2X+3EfVhqsg+1m3rcWND2j7qZ0uXW7vwZdO91miCmrQe2rkCXCT9gBBjq4cqI4TDMd3NApiUP/OTM7zNsDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lX+YgMcfFgEvP4EyVZWgEy1NB4H5RyF/vo2xaug8YIA=;
 b=LxcgJAOCv/Pn2MxYryxePDuN9JfMvGv6PFAUpOLuVYYZ1MpHJs8PeoBhnGNrWfdg6jpQezJt1slC+OvGNdhiTxlL14hlwuVOLDrbiAseXvqXlDwIrDXgMEns4QFSiV1i1gqtgHNkVbGDjSMZ9Z10i44sP1IpMuH85KXYpelZ2VA5Ww1v9zV3JWjwnDwlcRJTBkcX9dZkK2zSHWHZe1ptB+PD7u8S3j6Q3HtoqF/gnvf9dACf45ilTgu9ORiVbstyrteeaneI8nt2U9C8KHtP4vIsq0R4l57uZpIuo++fWg2ZYAhsTjrI4haJhufkWVJUwJzcF8TKm1nUmUnH66i9iQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by SA2PR11MB4795.namprd11.prod.outlook.com (2603:10b6:806:118::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6933.22; Thu, 26 Oct
 2023 15:47:14 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d89f:e7e6:dbb3:3ddf]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d89f:e7e6:dbb3:3ddf%6]) with mapi id 15.20.6886.034; Thu, 26 Oct 2023
 15:47:14 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <yxff6fwmnunox42h4iohgaxirvnjbyadd535xjjvyq5dte27wf@rbq3h6hzlo5f>
References: <20231018222441.4131237-1-lucas.demarchi@intel.com>
 <20231018222441.4131237-3-lucas.demarchi@intel.com>
 <169773148009.1959.9111774447308795723@gjsousa-mobl2>
 <kdxpremxa22f3ds3uzrtp2cohkkos3nef7vcfi5c7ikr5ojl22@ihkv6bktqett>
 <169807492642.2127.3806840422910041530@gjsousa-mobl2>
 <yxff6fwmnunox42h4iohgaxirvnjbyadd535xjjvyq5dte27wf@rbq3h6hzlo5f>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Date: Thu, 26 Oct 2023 12:47:08 -0300
Message-ID: <169833522897.1500.2121672159673338500@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BY3PR05CA0050.namprd05.prod.outlook.com
 (2603:10b6:a03:39b::25) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|SA2PR11MB4795:EE_
X-MS-Office365-Filtering-Correlation-Id: b00ad3ce-f622-412d-2426-08dbd63ad330
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: L2xKj79gExrdi6rsX+EWRZKe95sbG2/Wi0SZcu+A/RfAmt8hXt5J5lv+/q+O9hmx+f0M/CJqfJb8qRrxGwDnNTyAyBUFxy5MJKIYvYxlYQChjjcNFJPFGTmjam4bjqyurD080sY9+CLOqa2gvOEgXOLK6GNqPi2aloix7PPs+8z2TIP869zCCIJFOtxxcIQMZv27f9ys2zbq/uzY+HPZ1C0IwqgFpVj6CdJBwTuJjuSav5lCaEk7t8xfq0UI6PaFYqWzJ+MmqAXdxJg8l9SZ732yI96WtZY0GBkh32nd9LaD+sulSGHH6FbzDCVZov2XvkPPC2krZXGyYuPGpJ5XSydI2DR0/i0hN4tB162UyB7fBOSs12CupCZPUkdj8rOMp/vr1YHbtTuaD+Gcug+d7nfh+SSLi6GHOLIFwdL1RI8w8wCEF4UNpbDQByWeN9lhkWLr1NoppBDLR815t4/DGVYmbccuPeMElyhFH73HfcOSkA7pFqoTw9VZKlLkXrY+oGfNA56kaS8wYhpamqmgQx3jrWwTUmsv8K90nGj5H7y1UlXttdtbbVZ2JVn2oANT
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(396003)(39860400002)(376002)(366004)(346002)(136003)(230922051799003)(451199024)(186009)(1800799009)(64100799003)(38100700002)(2906002)(86362001)(83380400001)(4001150100001)(107886003)(5660300002)(6512007)(9686003)(82960400001)(41300700001)(44832011)(66556008)(66476007)(6636002)(66946007)(316002)(6666004)(33716001)(6506007)(6486002)(8676002)(26005)(478600001)(8936002)(4326008)(6862004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VmV2WDBIK3cxb1YyeHRZcW5KQlp5UlUvbGovZzdyT3FNOUpuS05uRzdnVTdw?=
 =?utf-8?B?YVNhL1hKZzRGZUVXdzJSWDdYckJBVkd4Rmw5b1VNZU1rc3JxeVRGS2puUi94?=
 =?utf-8?B?R1NzU3YvQzVadzFpRTJUOHJUY2Y1clhrVk9UM0xpK1dmdjFjamhkTVJFSHVN?=
 =?utf-8?B?bUVQNTVsaUI5VUNEQW9QUTdHc2VZWFNUNkVmbFZiT0RIc0pzQzd5bU50RzRp?=
 =?utf-8?B?cUlkNlltRlQ5c2FaZ25iWlp1MGsxanVkQURINWlVRFp3TlZvZ2l0S05OaTQ5?=
 =?utf-8?B?K1hOUWtJVEpQODRKQ3BWemUzMjVCelV4TjFZRDVHSy9CaXJGaWsxcmQxM3JX?=
 =?utf-8?B?U0ZMK3VndXUwTDlGbEJJeHpyRCtFQ3NSZ2JSaVJ0UlJKZndqaHZKYzBxVGhI?=
 =?utf-8?B?QnMvdlp1QnFhYXdvalBLNFZWQlM1WE5yVUNydG5UMkhMSEpVNnhOdlF5ejBG?=
 =?utf-8?B?dHRhdHljSFZxZlNxaHNTNVh2bXN5dDc1VURGeWhzVkNmd1Y2YnpKVnhsNGwy?=
 =?utf-8?B?OGk2YVI4ekRzTk5HeXdmZHZ4Z3F6QWlzWWRjMXlyWHUzZmdMVzhxeUtScWdh?=
 =?utf-8?B?a05LZGcxWkIxOEM5ZmRuSWtsSmpMNVZENy9CTHVPRmJTdmlUOUpPb1pickVv?=
 =?utf-8?B?WTdRWE9OL3FtYytLV3BtZ0RmS0krb1JvQ1pELzF1eVBrNXY4ZkZuaDQvbElM?=
 =?utf-8?B?WWNtRlpqckpOUWxzMGdqVFpwRURuRldWMStaOWRTRXRFakN6ZkVBRnZhMDhJ?=
 =?utf-8?B?Z3hmOWtnRjJyRHJuTTlteWU4RCtXaTY0bzdhYjVPNklpamY1RTJjSEgycVpY?=
 =?utf-8?B?eHVZbnNsUytjRXd5dWlzU3ErVFZXaVEzczZyVDhUY2VhSGEzSE5zSlhBVG5T?=
 =?utf-8?B?NHluVi9BclpDV0w1RTJiVFhITU5uWE12dUVwM211eGwxNDFoTUxsYTMwYkkw?=
 =?utf-8?B?VktoY0N4a0pJN3BZeXY2UlB4WFA4RGVJQnRwcDNYbXVTdFVkMkZLUVV5SjQ0?=
 =?utf-8?B?cVpiRmNqME5ucUk2RjU1L2NhZlRjNTBqcEE2NERlZUEwL2E1aXBwNEVtOFds?=
 =?utf-8?B?bnpvQUQ1SGFpaUhTU0xOWVBEK1ZsQWZoK2crN1NSUjBUeXNNbWdncmI1Ym1H?=
 =?utf-8?B?aFVpb1NpYlJWbkZtRWJBU0dNNHdGcG1HdDdKbXNVaTVySmN0ZnJvUEVBcVpO?=
 =?utf-8?B?Tk5iQStDeFkzMWVGZks3V3pZOHdUaXBuLzExOWJDMXdKVzZMSXZaakQ3QUNs?=
 =?utf-8?B?a25adjEzTGlpNXU5N2hJcTYrd3JzMXZPQVhnUGRTWXNFeXZheENQSFR6MzQ4?=
 =?utf-8?B?SGR4OUdFL0lobzQzQWlGdi9nVEdtd3EwOXZ1V1Bma2g4RjZUQ2NoczVCbTFa?=
 =?utf-8?B?UnZmQTlBTURrYVpQZmtJNlRCaWg0bjMyWUltamxKcWpNdERPYlhTbWtaWnE0?=
 =?utf-8?B?TmNITnhMK2J0VTNTYUpkdG1lZm9CN2xab2c3MmFWRnlFbXpGR1liaUdJRDBJ?=
 =?utf-8?B?d2ZIb1FqMHo1WVp1Q202dVp4Ky9uZmZrQjFoM1l1NHlORVk0RUNGeHQ0NDJr?=
 =?utf-8?B?TnBWdzVZSzJzV1BWeEw3SkN0dzBsRDhYQ21QQ3JaeWRPOVo5SHVFclRtM3F3?=
 =?utf-8?B?OHVsY3hIdW9vR05xUUxTS3d0KzQ2U1VyZFJLOHZIUU92Z3l0S0V4WmRQMEpx?=
 =?utf-8?B?RzYrODhCSHVySnE3NDQyalp1WmoyNktSU1ZPeWEydjZMUW81ZVBaUVdySHZn?=
 =?utf-8?B?WXhGS2xVcnZ0REFHSkxubVBVbGtXcHVPcW9vNkM2YWlaemFSdk5sM203aVEy?=
 =?utf-8?B?Qkl4a3dteE5nZEpISDJwZ3lwQThmanVyQ24xZTIySDcxbVh3RFpuQTdoZ1Fh?=
 =?utf-8?B?bXQyaUV4TGFWT2FLU3NLSUY4VTVUbHdFKzdvUzh1L295Qm5CcmhDUnowdWUr?=
 =?utf-8?B?ZTY5WjNpWTFwbGtMa2hyU0lEcVhoZC9YZ1BGbFRJM3hGdFhIWlF3OVVhSExl?=
 =?utf-8?B?WUMwZkY2M0FvMnk2WWJSSCsrL3lSQklZcVQ0cWV0Y2lmaUJqYzJ6ckhPVWVq?=
 =?utf-8?B?dEZucElIWGt2YU9GQk5RcmhYSm5sYWY2MW13OGZkY2lxa3BZVldyYXlaQTJB?=
 =?utf-8?B?U0hieXBCTWhUaVh1dTZ2NVR4U1ZvRkpJT1dITDRKOEEvdHR3clpWSEx5dXBB?=
 =?utf-8?B?emc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b00ad3ce-f622-412d-2426-08dbd63ad330
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Oct 2023 15:47:14.6957 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LTa1S2LYD7W6K+KoFNslb5+CTQhcgKzSPUKN9wjQbqM/1bH5NwTKn0q533xdmJIYljDBw4efSX5GedLKtl3KkA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4795
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/lnl: Fix check for TC phy
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
Cc: intel-gfx@lists.freedesktop.org, Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Lucas De Marchi (2023-10-25 12:44:09-03:00)
>On Mon, Oct 23, 2023 at 12:28:46PM -0300, Gustavo Sousa wrote:
>>Quoting Lucas De Marchi (2023-10-20 13:04:48-03:00)
>>>On Thu, Oct 19, 2023 at 01:04:40PM -0300, Gustavo Sousa wrote:
>>>>Quoting Lucas De Marchi (2023-10-18 19:24:41-03:00)
>>>>>With MTL adding PICA between the port and the real phy, the path
>>>>>add for DG2 stopped being followed and newer platforms are simply usin=
g
>>>>>the older path for TC phys. LNL is no different than MTL in this aspec=
t,
>>>>>so just add it to the mess. In future the phy and port designation and
>>>>>deciding if it's TC should better be cleaned up.
>>>>>
>>>>>To make it just a bit better, also change intel_phy_is_snps() to show
>>>>>this is DG2-only.
>>>>>
>>>>>Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>>>>>---
>>>>> drivers/gpu/drm/i915/display/intel_display.c | 29 ++++++++++---------=
-
>>>>> 1 file changed, 15 insertions(+), 14 deletions(-)
>>>>>
>>>>>diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gp=
u/drm/i915/display/intel_display.c
>>>>>index 28d85e1e858e..0797ace31417 100644
>>>>>--- a/drivers/gpu/drm/i915/display/intel_display.c
>>>>>+++ b/drivers/gpu/drm/i915/display/intel_display.c
>>>>>@@ -1784,31 +1784,32 @@ bool intel_phy_is_combo(struct drm_i915_privat=
e *dev_priv, enum phy phy)
>>>>>
>>>>> bool intel_phy_is_tc(struct drm_i915_private *dev_priv, enum phy phy)
>>>>> {
>>>>>+        /* DG2's "TC1" output uses a SNPS PHY and is handled separate=
ly */
>>>>>         if (IS_DG2(dev_priv))
>>>>>-                /* DG2's "TC1" output uses a SNPS PHY */
>>>>>                 return false;
>>>>>-        else if (IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER_FULL(dev_pri=
v) =3D=3D IP_VER(14, 0))
>>>>>+
>>>>>+        /*
>>>>>+         * TODO: This should mostly match intel_port_to_phy(), consid=
ering the
>>>>>+         * ports already encode if they are connected to a TC phy in =
their name.
>>>>>+         */
>>>>>+        if (IS_LUNARLAKE(dev_priv) || IS_METEORLAKE(dev_priv) ||
>>>>>+            IS_ALDERLAKE_P(dev_priv))
>>>>
>>>>Just like already done with the previous patch, I think we should have =
a
>>>>paragraph in the commit message justifying s/DISPLAY_VER_FULL(dev_priv)=
 =3D=3D
>>>>IP_VER(14, 0)/IS_METEORLAKE(dev_priv)/.
>>>
>>>humn... after giving this a second thought, I will take this back.
>>>intel_phy_is_tc() is different than the check in the first patch and
>>>it's actually something dependent on display engine. Here the check is
>>>about is this a DDIA/DDIB or a TC1-TC4? This will change how some
>>>registers in the display engine are programmed:
>>
>>Hm, yeah. I overlooked that... But we are looking into the PHY
>>regardless. Is the mapping "phy number -> port type" really associated
>>to the display engine rather than to the SoC?
>
>we are converting back and forth. The phy number always come from the
>port by using intel_port_to_phy(). See intel_ddi_init() for example:
>
>        intel_ddi_init()
>        {
>                port =3D intel_bios_encoder_port(devdata);
>                ...
>                phy =3D intel_port_to_phy(dev_priv, port);
>        }
>
>intel_port_to_phy() does use the display engine version and a
>platform-based check in a few cases. Looking at the history, this was
>added for EHL, where the ports DDI-A and DDI-D are muxed to one PHY,
>called PHY-A.  Then some registers need to use that number to configure
>the registers.
>
>4+ years later I don't see the bspec doing any better job on the
>registers that are using the phy vs port and this is derived mostly on a
>case by case basis :(
>
>Looking at intel_port_to_phy() and ignoring EHL/JSL as outlier, all the
>others are basically answering the question "from the display pov, where
>does the native/combo port end and we start the ports connected to "TC
>ports". From those, then DG2 starts to be the outlier as it identifies
>itself as neither combo nor tc, but rather snps. XeLPD is very
>"creative" as we assigned a PORT_D_XELPD =3D PORT_TC5 to make it work
>with the register offsets from the display engine pov they replaced
>TC5/TC6. Then the phy_is_tc() also has to workaround that, as those are
>not TC phys :-/

Thanks for the history! :-)

>
>I think a better abstraction looking back would be to nuke this
>intel_port_to_* / intel_phy_to_* / intel_phy_is_tc. Then we only set
>that during ddi init.
>
>Note that this is all different than the is this a C10 or C20 phy
>question.  The display engine has no idea about that and doesn't care.
>Until a few days ago it was not even documented in bspec as this is a
>SoC characteristics.

Got it.

>
>To summarize: I think here we should keep the display engine version
>check, resorting to platform checks for the exceptions to match what
>intel_port_to_phy() does.  Long term we need to better abstract/document
>that, but that is for another day.
>
>Lucas De Marchi
>
>>
>>--
>>Gustavo Sousa
>>
>>>
>>>        $ git grep intel_phy_is_tc -- drivers/gpu/drm/i915/display/intel=
_ddi.c
>>>        drivers/gpu/drm/i915/display/intel_ddi.c:               if (inte=
l_phy_is_tc(dev_priv, phy))
>>>        drivers/gpu/drm/i915/display/intel_ddi.c:       if (IS_ALDERLAKE=
_P(i915) && intel_phy_is_tc(i915, phy)) {
>>>        drivers/gpu/drm/i915/display/intel_ddi.c:                 intel_=
phy_is_tc(i915, phy)))
>>>        drivers/gpu/drm/i915/display/intel_ddi.c:       if (!intel_phy_i=
s_tc(dev_priv, phy) ||
>>>        drivers/gpu/drm/i915/display/intel_ddi.c:       bool is_tc_port =
=3D intel_phy_is_tc(i915, phy);
>>>        drivers/gpu/drm/i915/display/intel_ddi.c:       } else if (IS_AL=
DERLAKE_P(dev_priv) && intel_phy_is_tc(dev_priv, phy)) {
>>>        drivers/gpu/drm/i915/display/intel_ddi.c:       if (DISPLAY_VER(=
i915) >=3D 14 || !intel_phy_is_tc(i915, phy))
>>>        drivers/gpu/drm/i915/display/intel_ddi.c:       bool is_tc_port =
=3D intel_phy_is_tc(dev_priv, phy);
>>>        drivers/gpu/drm/i915/display/intel_ddi.c:       if (intel_phy_is=
_tc(i915, phy))
>>>        drivers/gpu/drm/i915/display/intel_ddi.c:       if (intel_phy_is=
_tc(i915, phy)) {
>>>        drivers/gpu/drm/i915/display/intel_ddi.c:       if (intel_phy_is=
_tc(i915, phy))
>>>        drivers/gpu/drm/i915/display/intel_ddi.c:       if (intel_phy_is=
_tc(i915, phy))
>>>        drivers/gpu/drm/i915/display/intel_ddi.c:       bool is_tc =3D i=
ntel_phy_is_tc(i915, phy);
>>>        drivers/gpu/drm/i915/display/intel_ddi.c:       return init_dp |=
| intel_phy_is_tc(i915, phy);
>>>        drivers/gpu/drm/i915/display/intel_ddi.c:       if (intel_phy_is=
_tc(dev_priv, phy)) {
>>>        drivers/gpu/drm/i915/display/intel_ddi.c:               if (inte=
l_phy_is_tc(dev_priv, phy))
>>>
>>>and particularly the creation of intel_tc, which we do want to happen.
>>>
>>>I think we will really need to rollback the port -> phy conversions all
>>>around the code and simplify it. While we don't do that, my proposal
>>>here is to turn this commit into:
>>>
>>>-----------------8<--------------------
>>>Subject: [PATCH] drm/i915/lnl: Fix check for TC phy
>>>
>>>With MTL adding PICA between the port and the real phy, the path
>>>add for DG2 stopped being followed and newer platforms are simply using
>>>the older path for TC phys. LNL is no different than MTL in this aspect,
>>>so just add it to the mess. In future the phy and port designation and
>>>deciding if it's TC should better be cleaned up.
>>>
>>>To make it just a bit better, also change intel_phy_is_snps() to show
>>>this is DG2-only.
>>>
>>>Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>>>Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

Given the above explanation, the r-b above stands.

--
Gustavo Sousa

>>>---
>>>  drivers/gpu/drm/i915/display/intel_display.c | 28 ++++++++++----------
>>>  1 file changed, 14 insertions(+), 14 deletions(-)
>>>
>>>diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/=
drm/i915/display/intel_display.c
>>>index 28d85e1e858e..1caf46e3e569 100644
>>>--- a/drivers/gpu/drm/i915/display/intel_display.c
>>>+++ b/drivers/gpu/drm/i915/display/intel_display.c
>>>@@ -1784,31 +1784,31 @@ bool intel_phy_is_combo(struct drm_i915_private =
*dev_priv, enum phy phy)
>>>
>>>  bool intel_phy_is_tc(struct drm_i915_private *dev_priv, enum phy phy)
>>>  {
>>>+        /*
>>>+         * DG2's "TC1", although TC-capable output, doesn't share the s=
ame flow
>>>+         * as other platforms on the display engine side and rather rel=
y on the
>>>+         * SNPS PHY, that is programmed separately
>>>+         */
>>>          if (IS_DG2(dev_priv))
>>>-                /* DG2's "TC1" output uses a SNPS PHY */
>>>                  return false;
>>>-        else if (IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER_FULL(dev_priv)=
 =3D=3D IP_VER(14, 0))
>>>+
>>>+        if (DISPLAY_VER(dev_priv) >=3D 13)
>>>                  return phy >=3D PHY_F && phy <=3D PHY_I;
>>>          else if (IS_TIGERLAKE(dev_priv))
>>>                  return phy >=3D PHY_D && phy <=3D PHY_I;
>>>          else if (IS_ICELAKE(dev_priv))
>>>                  return phy >=3D PHY_C && phy <=3D PHY_F;
>>>-        else
>>>-                return false;
>>>+
>>>+        return false;
>>>  }
>>>
>>>  bool intel_phy_is_snps(struct drm_i915_private *dev_priv, enum phy phy=
)
>>>  {
>>>-        if (phy =3D=3D PHY_NONE)
>>>-                return false;
>>>-        else if (IS_DG2(dev_priv))
>>>-                /*
>>>-                 * All four "combo" ports and the TC1 port (PHY E) use
>>>-                 * Synopsis PHYs.
>>>-                 */
>>>-                return phy <=3D PHY_E;
>>>-
>>>-        return false;
>>>+        /*
>>>+         * For DG2, and for DG2 only, all four "combo" ports and the TC=
1 port
>>>+         * (PHY E) use Synopsis PHYs. See intel_phy_is_tc().
>>>+         */
>>>+        return IS_DG2(dev_priv) && phy > PHY_NONE && phy <=3D PHY_E;
>>>  }
>>>
>>>  enum phy intel_port_to_phy(struct drm_i915_private *i915, enum port po=
rt)
>>>--
>>>2.40.1
>>>-----------------8<--------------------
>>>
>>>This would at make intel_phy_is_tc() match intel_port_to_phy(), at least
>>>for display version >=3D 13.
>>>
>>>Lucas De Marchi
