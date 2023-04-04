Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 23CFB6D62A1
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Apr 2023 15:19:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91CFF10E140;
	Tue,  4 Apr 2023 13:19:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E174B10E079;
 Tue,  4 Apr 2023 13:19:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680614366; x=1712150366;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=B4vhp5dLY7DXUiBARJvrBwfUaKHvjm3yup5eN6yEpyw=;
 b=flIKSIO1MEZjeeUVxGXx0QD+yTE7li1/WJS7eLVa69qet35WFaZLvlsH
 Bhpxe6HcNPg9PzDrmAh+mKkM0XO0tJCC2kfcukXLrnFBrz55Le0pHvRiN
 A6LiNZwvv8wcQiCSMqOAlsud34wVbfXx0c9J8AKz9sNAHb8yKp2DjOMk4
 0hFW+ErJ4w1ccXHiYTmi8jAj2fNFhnDZ4IojsdC6hD+yUXG2zLQVLjebd
 RlrdpewC0MI+jmMVI74pIHIJf1hBzjMVmbhsFQxLAwmgjVw0lYOhYDNit
 l6kMlMmqFP3vy+paTnxdT22bX7F5i+BQPSaosO/cDhaK74P85T2hJAB+4 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="326195822"
X-IronPort-AV: E=Sophos;i="5.98,317,1673942400"; d="scan'208";a="326195822"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 06:19:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="716646372"
X-IronPort-AV: E=Sophos;i="5.98,317,1673942400"; d="scan'208";a="716646372"
Received: from kchojnow-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.213.14.97])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 06:19:24 -0700
Date: Tue, 4 Apr 2023 15:19:22 +0200
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <20230404131922.onfjzmhrnc3bcw3z@kamilkon-desk1>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>
References: <20230403202437.1816411-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230403202437.1816411-1-lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [PATCH i-g-t] tools: Add tool to dump GuC/HuC CSS
 header
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2023-04-03 at 13:24:37 -0700, Lucas De Marchi wrote:
> Since we are now using unversioned GuC/HuC, it's useful to be able to
> dump the firmware blob and get that information from the CSS header.
> Add a tool that decodes that information and dumps the raw header.
> 
> Example output:
> 
> 	$ tools/intel-gfx-fw-info /lib/firmware/i915/tgl_guc_70.bin
> 	version: 70.5.1
> 	date: 2022-09-09
> 	raw dump:
> 	00000000  06 00 00 00 a1 00 00 00  00 00 01 00 00 00 00 00   ................
> 	00000010  86 80 00 00 09 09 22 20  71 17 01 00 40 00 00 00   ......" q...@...
> 	00000020  40 00 00 00 01 00 00 00  09 21 45 00 73 79 73 5f   @........!E.sys_
> 	00000030  67 62 73 62 50 43 2d 31  2e 30 2e 33 31 35 30 00   gbsbPC-1.0.3150.
> 	00000040  01 05 46 00 00 00 00 00  00 00 00 00 00 00 00 00   ..F.............
> 	00000050  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00   ................
> 	00000060  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00   ................
> 	00000070  00 00 00 00 00 00 00 00  00 10 80 00 00 01 40 00   ..............@.
> 
> 	struct uc_css_header:
> 	- module_type: 0x6
> 	- header_size_dw: 0xa1
> 	- header_version: 0x10000
> 	- module_id: 0x0
> 	- module_vendor: 0x8086
> 	- date: 0x20220909
> 	- size_dw: 0x11771
> 	- key_size_dw: 0x40
> 	- modulus_size_dw: 0x40
> 	- exponent_size_dw: 0x1
> 	- time: 0x452109
> 	- username: b'sys_gbsb'
> 	- buildnumber: b'PC-1.0.3150\x00'
> 	- sw_version: 0x460501
> 	- vf_version: 0x0
> 	- reserved0: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
> 	- rsvd: <rsvd private_data_size=0x801000, reserved1=0x801000>
> 	- header_info: 0x400100
> 
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Acked-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

--
Kamil

> ---
>  tools/intel-gfx-fw-info | 120 ++++++++++++++++++++++++++++++++++++++++
>  tools/meson.build       |   2 +-
>  2 files changed, 121 insertions(+), 1 deletion(-)
>  create mode 100755 tools/intel-gfx-fw-info
> 
> diff --git a/tools/intel-gfx-fw-info b/tools/intel-gfx-fw-info
> new file mode 100755
> index 000000000..fc1fafdf5
> --- /dev/null
> +++ b/tools/intel-gfx-fw-info
> @@ -0,0 +1,120 @@
> +#!/usr/bin/env python3
> +# pylint: disable=C0301
> +# SPDX-License-Identifier: (GPL-2.0 OR MIT)
> +#
> +# Copyright (C) 2023    Intel Corporation
> +
> +import argparse
> +import logging
> +import pprint
> +import sys
> +import typing
> +
> +from dissect import cstruct
> +
> +# struct definition below should match the one from i915
> +# (drivers/gpu/drm/i915/gt/uc/intel_uc_fw_abi.h) and xe
> +# (drivers/gpu/drm/xe/xe_uc_fw_abi.h).
> +#
> +# For compatibility reasons with dissect.cstruct python module, the following
> +# things are changed from the original kernel definition:
> +#
> +#       1) Comments removed
> +#       2) No anonymous union - not compatible with the
> +#          dumpstruct(), give it a name
> +
> +CDEF = """
> +typedef uint32 u32;
> +
> +struct uc_css_header {
> +        u32 module_type;
> +        u32 header_size_dw;
> +        u32 header_version;
> +        u32 module_id;
> +        u32 module_vendor;
> +        u32 date;
> +        u32 size_dw;
> +        u32 key_size_dw;
> +        u32 modulus_size_dw;
> +        u32 exponent_size_dw;
> +        u32 time;
> +        char username[8];
> +        char buildnumber[12];
> +        u32 sw_version;
> +        u32 vf_version;
> +        u32 reserved0[12];
> +        union {
> +                u32 private_data_size;
> +                u32 reserved1;
> +        } rsvd;
> +        u32 header_info;
> +};
> +"""
> +
> +logger = logging.getLogger(__name__)
> +
> +
> +def ffs(x: int) -> int:
> +    """Returns the index, counting from 0, of the
> +    least significant set bit in `x`.
> +    """
> +    return (x & -x).bit_length() - 1
> +
> +
> +def FIELD_GET(mask: int, value: int) -> int:
> +    return (value & mask) >> ffs(mask)
> +
> +
> +def decode(fw) -> str:
> +    data = []
> +
> +    CSS_SW_VERSION_UC_MAJOR = 0xFF << 16
> +    CSS_SW_VERSION_UC_MINOR = 0xFF << 8
> +    CSS_SW_VERSION_UC_PATCH = 0xFF
> +    major = FIELD_GET(CSS_SW_VERSION_UC_MAJOR, fw.sw_version)
> +    minor = FIELD_GET(CSS_SW_VERSION_UC_MINOR, fw.sw_version)
> +    patch = FIELD_GET(CSS_SW_VERSION_UC_PATCH, fw.sw_version)
> +    data += [f"version: {major}.{minor}.{patch}"]
> +
> +    CSS_DATE_DAY = 0xFF
> +    CSS_DATE_MONTH = 0xFF << 8
> +    CSS_DATE_YEAR = 0xFFFF << 16
> +    day = FIELD_GET(CSS_DATE_DAY, fw.date)
> +    month = FIELD_GET(CSS_DATE_MONTH, fw.date)
> +    year = FIELD_GET(CSS_DATE_YEAR, fw.date)
> +    data += [f"date: {year:02x}-{month:02x}-{day:02x}"]
> +
> +    return data
> +
> +
> +def parse_args(argv: typing.List[str]) -> argparse.Namespace:
> +    description = "Dump GuC/HuC firmware header"
> +    parser = argparse.ArgumentParser(prog="intel-gfx-fw-info", description=description)
> +
> +    parser.add_argument("filename", help="GuC/HuC firmware file")
> +
> +    return parser.parse_args(argv)
> +
> +
> +def main(argv: typing.List[str]) -> int:
> +    args = parse_args(argv)
> +
> +    cparser = cstruct.cstruct()
> +    cparser.load(CDEF)
> +
> +    try:
> +        with open(args.filename, mode="rb") as f:
> +            fw = cparser.uc_css_header(f)
> +    except FileNotFoundError as e:
> +        logger.fatal(e)
> +        return 1
> +
> +    print(*decode(fw), sep="\n")
> +    print("raw dump:", end="")
> +    cstruct.dumpstruct(fw, color=sys.stdout.isatty())
> +
> +    return 0
> +
> +
> +if __name__ == "__main__":
> +    sys.exit(main(sys.argv[1:]))
> diff --git a/tools/meson.build b/tools/meson.build
> index 4c45f16b9..88c58adfe 100644
> --- a/tools/meson.build
> +++ b/tools/meson.build
> @@ -81,7 +81,7 @@ executable('intel_reg', sources : intel_reg_src,
>  	     '-DIGT_DATADIR="@0@"'.format(join_paths(prefix, datadir)),
>  	   ])
>  
> -install_data('intel_gpu_abrt', install_dir : bindir)
> +install_data(['intel_gpu_abrt', 'intel-gfx-fw-info'], install_dir : bindir)
>  
>  install_subdir('registers', install_dir : datadir)
>  
> -- 
> 2.39.0
> 
