Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD4F65F2F49
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Oct 2022 13:08:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B272410E2FB;
	Mon,  3 Oct 2022 11:08:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65E5710E2FB
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Oct 2022 11:08:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664795291; x=1696331291;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=JN25HF+w98jXEXQYS3a1m0WhNlsdci7Uk3f1ZRUmUos=;
 b=Eom1CgNV3AzKteChrakphTk1SE78q+rh5XmYnFSOvDiikYrS/oM6xswW
 NHZMNZeSbozuOb0maGmSkDicdXWKEWPfNhfPGeCJaZTfGpSEwv8TqzXwU
 jnyIJG4s/4OJQ9CjdVD+y41/Qz6gi/zkXFLGN4Ynk4LIoZLH0Z250/n9/
 6lXi4uCCw3zRbWq3Wb3NXBuQgOba1ah1osAlM/xFJKeOkw2Yh6qJft3S2
 9TQct5V5eP6nink7Rb416q/4oUcHUBBjW51yj1CLGiWBC3N5JQO/A1X9D
 tiQLBWvrVphy/tQYJDKXGiHFLX4+Gl8DgKm5PKdYEq/IXeQOlNp+zA8fK w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10488"; a="300208887"
X-IronPort-AV: E=Sophos;i="5.93,365,1654585200"; d="scan'208";a="300208887"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 04:08:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10488"; a="748946685"
X-IronPort-AV: E=Sophos;i="5.93,365,1654585200"; d="scan'208";a="748946685"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP; 03 Oct 2022 04:08:10 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 3 Oct 2022 04:08:10 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 3 Oct 2022 04:08:10 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.107)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 3 Oct 2022 04:08:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j7sl/jDdU1ZPIOmi3pNNDCayKnkWLPZGOO9Ce/wn7HB9TZbTjRWni81iCP8kLLuqednxoaG638I41iZIUEbhywnFIidY7Scc9fIdhhHCmEo1+B41YQd7jm3jh8W+pCX63UXobZob0nHf8xOnOKm6QHSpnZ+bdppXO4fAnzBaaSYdL3wF6cedQBm+epKID2iwv7I/s757zTn5YpxMFIpUd4AS0acky/zNjjC+HdVn7lM26A9UYgqI/l68pDg5DPIyK2hO1UqN4kkoyFRN4Qg0MtJpwSV95q76GK1d7jdJ3fY+PEEKB+5+DL0AI/NCqyHqbkX32T5J4SU/mBKmCmvy6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tkkF8qk9ify6lXN3PPEbrmTM4tF/lHZhGjWnhuVc1k8=;
 b=UeUw/eQK5ewAFKNZ8zFAmXW5y+6MOy56eK31FcBuJ+BNWl6wwttSqRiIdCQlq+QvE80bim5EtdXyGAloislaoEjeZn6Mh0DWkyESe31yNq8d6IpMOEbctPSLoMUauK5SHdL/w3FEAeC6MRc9Z/k/xL5OcGGiqTbpTqwb9TFz73c/9eZG570Kuj6GyLjoIOSKgcyFK2Rf5+CBIOGrLkUtTgG5n39oBbmBwKOAhajV3ooBXrlY3Q/1Dz+NGACbHCQXWhn9oT9FXNzkdAM2DDCQxIr0eo0hBOGjCITwEXcs/GvBNV/yCquwm0Kzw0PnPogOX30OkDfhQTOcxkoCddf1Vg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1897.namprd11.prod.outlook.com (2603:10b6:3:112::9) by
 PH7PR11MB6476.namprd11.prod.outlook.com (2603:10b6:510:1f0::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.28; Mon, 3 Oct
 2022 11:08:07 +0000
Received: from DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67]) by DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67%3]) with mapi id 15.20.5676.028; Mon, 3 Oct 2022
 11:08:06 +0000
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Mon, 3 Oct 2022 16:37:53 +0530
Message-ID: <20221003110759.140398-1-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.34.1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0055.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:22::30) To DM5PR11MB1897.namprd11.prod.outlook.com
 (2603:10b6:3:112::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR11MB1897:EE_|PH7PR11MB6476:EE_
X-MS-Office365-Filtering-Correlation-Id: 6bb323ac-c72d-4d48-7ffa-08daa52f8c57
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0la0cOac6r+UKIWBn4BY67pJ7v01kGItuQN7DY4XHYr4hcsWUwriyM9zfhIiWNoDmHZEZk8SZLyZH/XIh10cJgZzYWSwKT3BJXNHsnyDbR8SrV6gMljlL6BlWQu5A3Tl6ghth2gRnEtvtM5so+11L4xmC1XN6DpZo7hfF0fm7wlPE6lort8RQQn+P4rGHL+VX39Lw9l0fOSuJ9VMoJUddIHDLGTuDpshlyU/p6/FVeYPBRr/zX1f2dZSVUNw9FyIkYUHLOosfCJOe3GZdl8RXl+b85vsgzveND4n8rxwz8I9o7Xsy9i0uMuP21gJygRunOq40ruAV8hbSQ9fxpanToxIjIU9fHSxqge1tZv/A48WvWxIMTBfEPdZmwDmElGBqpMGRUH2pBiwmDQLSQVBXq6I3PLRVqVE0KfB2ZeRAEsjHWKG15f9dUSKKied4F6TSek7Ai4MKgBcVP1CEbmwEwZoccIJP0+tthYj8Vt3zGSqfIbZ9OkcJ25BKxEh+fU9IvNie582gWOPkkbKBIaJvEblZ2w0pieqQIYqzyFqZSgxyvBni3EhCMRWc8MTI1xy5VGiByEwm+oXFsX2suTxV+RF7SKoE3B7VjdummJlyX9AvtobTTezKpH1SdvjfS0KTnfdi4r+vMnDGJx5idHOzPeAx7Sf/5v1mw+93CIjht82m+JEa0yW6O9xXjOgXCa7DAcCCHecijxZcoasYldnyg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1897.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(366004)(136003)(346002)(376002)(39860400002)(451199015)(26005)(54906003)(36756003)(6666004)(8936002)(5660300002)(44832011)(6512007)(6506007)(478600001)(6486002)(2906002)(66574015)(82960400001)(38100700002)(2616005)(1076003)(186003)(86362001)(83380400001)(4326008)(316002)(8676002)(66946007)(66476007)(66556008)(41300700001)(6916009);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NTYzajdYSjUwcS9WUUFqVy9BL2FmUWtBcVhVRTVyUEVYdEI3Q0RRTDVKOENj?=
 =?utf-8?B?TDBOSUcrR0E4VVVudFhadXVHS0JjL1l0b0QzbmZJYVc4NHl0aFQ0dDlrQXZz?=
 =?utf-8?B?Z3IwV0hmdWt6QzZOQWFBYzk4L1BxcnYyaTdGREc4WThHbUFoWFpNeG1tL0Zx?=
 =?utf-8?B?WHVTUXFCRkRycEQrOE9TYnBnV1U5VWgzUllEWWxKRUg1VDBvRlB3RXZxM21r?=
 =?utf-8?B?dDdsQ0VWTVB0Q01DbUMvQjdOc2RiM0kreFc2NjdBcHhUcW5tU1BJd0Zick9B?=
 =?utf-8?B?aGt3K0hIcmVjYkhwb2JIUDJQdlVGTldCRW1uRkV0am5EUkNncXJiLzVJRDNT?=
 =?utf-8?B?VFhhRmdmdlI3eHNPK1BiaStzMStQNmNCazlvVXl4WnBRV29FYkNKUGpXSjhU?=
 =?utf-8?B?VDBXWXFLUU1aTTBQanJUZTZickYxK3lRcVdsR0w1a1R3d3BpWVM1TVF1TW4z?=
 =?utf-8?B?RzVEdmxhVExSWDY3TkpycE4xcXNucXZTR01hdTJqaERyRWNRRExsZjQxMGpo?=
 =?utf-8?B?TWIyRTJsL2UvTWdMTVFEV1FUYlM2Vzg3U1NLV1Q3NkpqeFdGL1VHSlhTaFdS?=
 =?utf-8?B?RTBLOW5Kcmt3bzRobUNlSkkwSDNtd0dqTS9TYkdPUUFNTEFNWWxsNWdLUlJT?=
 =?utf-8?B?N2FuK2xRVjlUZllyOW12bElvdmc3bUVnbjhUc09EcXNQMk1weUJySk5EaW5q?=
 =?utf-8?B?NUV2WWkrdGZkeG5ZY1FEWm1PZzQ2SGhiS1J6elpFRzd0S3FERVUxbVZUaG1z?=
 =?utf-8?B?L3NZc052UE9vSXlVVHRuYlRsankyNzFJbDNqTngxSXczd0hmSVo4cFNXTGxn?=
 =?utf-8?B?VjMvcG82UDZGMko5YmN0a2JacDVlNmNhT1BYN2xJSkZ1KzBHaExHMWRPZlY4?=
 =?utf-8?B?eE53QlFBNVZVMFJKK2lsZjlmYjh0QjFGSURxOUVhcGlMS05QZGFCUDJtSXVQ?=
 =?utf-8?B?UkJld1RXU0lZY3JCaytaeFMyNXRJUVV3WVNkeEE1ZkUvUFkvZmhEZEthUTVm?=
 =?utf-8?B?NjE0YTBJb3hZU2srUXU2WFlsVng0SDR2SmtkR0lQRDNWM1ZDSkhFZnY5enkw?=
 =?utf-8?B?eTR2TFh6YkhoRjZzdFViTktFOThrUTk4VVY3am9lQnZCQWVHOG1sanB5UzV6?=
 =?utf-8?B?enQzZlNObDJ6d05zZEppMTZhcTVXdHcyaDdqT3VQNUJad1lxUU94OVh2QXJX?=
 =?utf-8?B?bkl0U0pFb2pHQk5IdmhtczdVdGJFVFJTcU1oclcxU2JmdzlJeEhYMDhqZTA3?=
 =?utf-8?B?TUdFV2hiaEp4M1F2cVZWOHBkMnR4M002MGxOc3p3bmZ5cnlSTlNJb2l1dVkw?=
 =?utf-8?B?TWVlc2JNSVRuZGNoYXJWREptOFgwVVhYYkI1WlR5TDBiSEx3SEdLQTVLMzF6?=
 =?utf-8?B?V2ZoR3hOVHJ4UFUzZmZabnlnN21tbDVqMzRvSFZFemxmRFpqQ0k3OEFXM0hY?=
 =?utf-8?B?SERkWjdjeVQzbmRaTUsySmdrWlF0NGl3ZXBCejR0VEJNK3A2TExXd1RGaG1h?=
 =?utf-8?B?TGhKcGNxc3Z0YUVrbTFiaFM2eEJjVzZRSUJXVXdYWHJIN3pVckIwbWtrbUoy?=
 =?utf-8?B?VVRJd2xFdFFBcnhld2NrSnBISHAxNHBhUy80MXZCeFl2akJZV0dnQlV0dTh3?=
 =?utf-8?B?VDFMY2w1T2hLZkNWNUYwdFhHQnRkK1M1U0tXSDdTL20xTElNZWxMZjljWFNC?=
 =?utf-8?B?b01xaGowL2ZuTytQYnZGR0thVVlLd25Fc1VwMzBQa3M4T2YwYWsyM1B4a09Y?=
 =?utf-8?B?aWsvaWNaUTJFM2RLdERlcTFaaGYrM1FIaDVpeWdkQkdUZHRYbkczbldjUjFG?=
 =?utf-8?B?REcvd2lndmpMRVI0OWdlTmlwQzdxclQ3NDM3UHVFWnRMMG8zZGIrSEVFZzJx?=
 =?utf-8?B?Q1BNUllUbW5mWmhRY0RFUVhGZGl2UFNONG1sOXhyQzllZ3M3QVZDMzJ1ZzlB?=
 =?utf-8?B?WWFMRnEyYWRzYWN0NzBJdjdvRXpCNWIvOGNTb05xTE9XTE94L0E4UXozSTdw?=
 =?utf-8?B?TFJsUWlqd2NHKzVFTUZaeEsxRlEvMVlZaWZWY2lNeFFjY0cycXNkS1EwTW1q?=
 =?utf-8?B?UVRYY0dJaVhkYUtPMFRpY1ZMeURkMDhidGd6VHlicGdLaC8rblZRaEx3cStX?=
 =?utf-8?B?S3FVUURPa3RTVzd4czBoRUIybmU5b1MyWU9FMjhxTVdIdHg3MXA0Z0pxTUg4?=
 =?utf-8?Q?/SifvLuY4fxazzwSMKCyMhY=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6bb323ac-c72d-4d48-7ffa-08daa52f8c57
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1897.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Oct 2022 11:08:06.4186 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vGZjiVMjRw9E21rWyIpHVhmqbkZ9wQLGOD02AKIFTWOdmTYwjAWo+IvTGefBnOpYO4M7Vv6KJ2KLhoJUPr6Li4MlA/QmAw7P4zF2MXUNIpkQZPajQyNJVkk81klUFmPN
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6476
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [PATCH v4 0/6] drm/i915/display: Don't use port enum as
 register offset
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

Prior to display version 12, platforms had DDI ports A,B,C,D,E,F                  
represented by enums PORT_A,PORT_B...PORT_F. The DDI register offsets of          
the ports were in the same order as the ports. So the port enums                   
were directly used as index to calculate the register offset of the               
ports.                                                                            
Starting in display version 12, TypeC ports were introduced in the                
platforms. These were defined as new enums PORT_TC1,PORT_TC2... The               
later generation platforms had DDI register offests of TypeC and                  
non-TypeC ports interleaved and the existing port enums didn't match the          
order of the DDI register offests. So the enums could no more be used as          
index to calculate the register offest.                                           
This led to the creation of new platform specific enums for the ports             
like PORT_D_XELPD, PORT_E_XELPD to match the index of the ports in those          
platforms and additional code to handle the special enums.                        
                                                                                  
So we want to make the port enums not tied to DDI register offset and             
use the index from somewhere else to calculate the register offsets.              
The index of the DDI ports in the platform is now defined as part of              
device info.

Series includes few patches at the end which does some cleanup and
fixing made possible because of unique enums for the ports.

v2: ddi_index defined for platforms starting from Gen75. Many platforms
from Gen75 has ddi support.

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>

Balasubramani Vivekanandan (6):
  drm/i915/display: Pass struct drm_i915_private to DDI_BUF_CTL macro
  drm/i915/display: Define the DDI port indices inside device info
  drm/i915/display: Free port enums from tied to register offset
  drm/i915/display: Remove PORT_D_XELPD/PORT_E_XELPD platform specific
    defintions
  drm/i915/display: Fix port_identifier function
  drm/i915/display: cleanup unused DDI port enums

 drivers/gpu/drm/i915/display/icl_dsi.c        | 12 ++--
 drivers/gpu/drm/i915/display/intel_bios.c     |  7 +--
 drivers/gpu/drm/i915/display/intel_ddi.c      | 63 +++++++------------
 drivers/gpu/drm/i915/display/intel_display.c  | 12 ++--
 drivers/gpu/drm/i915/display/intel_display.h  | 29 +++++----
 .../drm/i915/display/intel_display_power.c    | 40 +-----------
 drivers/gpu/drm/i915/display/intel_fdi.c      | 14 ++---
 drivers/gpu/drm/i915/display/intel_tc.c       |  6 +-
 drivers/gpu/drm/i915/gvt/display.c            | 30 ++++-----
 drivers/gpu/drm/i915/gvt/handlers.c           | 17 ++---
 drivers/gpu/drm/i915/i915_pci.c               | 46 +++++++++++++-
 drivers/gpu/drm/i915/i915_reg.h               |  4 +-
 drivers/gpu/drm/i915/intel_device_info.h      |  1 +
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   | 10 +--
 include/drm/i915_component.h                  |  2 +-
 15 files changed, 140 insertions(+), 153 deletions(-)

-- 
2.34.1

