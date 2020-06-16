Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19A631FBBD7
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2020 18:34:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57D6F6E8CF;
	Tue, 16 Jun 2020 16:34:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5506E6E8CF
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jun 2020 16:34:39 +0000 (UTC)
IronPort-SDR: Ea0kOW291173IeGPBsmVuupnszuAKmzbjvAJTsKx0j0HPPFhYv1vhcg5S8fF81XZHaopY4xL6L
 hJmns1pJgKpw==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 09:34:37 -0700
IronPort-SDR: GaPEXu34x/FPvZtDP+pmlSVe6HRLO9OPp2cT3Nb/8CHMUAvhpvppllS/YwL+OBrEkkE/tmGvbj
 q2LXBK/YyGNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,518,1583222400"; 
 d="gz'50?scan'50,208,50";a="476522752"
Received: from lkp-server01.sh.intel.com (HELO b4e26a9a4e5e) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 16 Jun 2020 09:34:35 -0700
Received: from kbuild by b4e26a9a4e5e with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1jlEXi-0000Ax-Cx; Tue, 16 Jun 2020 16:34:34 +0000
Date: Wed, 17 Jun 2020 00:34:06 +0800
From: kernel test robot <lkp@intel.com>
To: Shaofeng Tang <shaofeng.tang@intel.com>,
	intel-gfx@lists.freedesktop.org
Message-ID: <202006170019.J27emK9x%lkp@intel.com>
References: <1592296160-3784-1-git-send-email-shaofeng.tang@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="BXVAT5kNtrzKuDFl"
Content-Disposition: inline
In-Reply-To: <1592296160-3784-1-git-send-email-shaofeng.tang@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gvt: query if vgpu is active via
 GETPARAM IOCTL
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
Cc: Shaofeng Tang <shaofeng.tang@intel.com>, kbuild-all@lists.01.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--BXVAT5kNtrzKuDFl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Shaofeng,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on drm-intel/for-linux-next]
[also build test ERROR on drm-tip/drm-tip linus/master v5.8-rc1 next-20200616]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Shaofeng-Tang/drm-i915-gvt-query-if-vgpu-is-active-via-GETPARAM-IOCTL/20200616-162408
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
config: i386-debian-10.3 (attached as .config)
compiler: gcc-9 (Debian 9.3.0-13) 9.3.0
reproduce (this is a W=1 build):
        # save the attached .config to linux build tree
        make W=1 ARCH=i386 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>, old ones prefixed by <<):

drivers/gpu/drm/i915/i915_getparam.c: In function 'i915_getparam_ioctl':
>> drivers/gpu/drm/i915/i915_getparam.c:165:11: error: implicit declaration of function 'intel_vgpu_active'; did you mean 'intel_vtd_active'? [-Werror=implicit-function-declaration]
165 |   value = intel_vgpu_active(i915);
|           ^~~~~~~~~~~~~~~~~
|           intel_vtd_active
cc1: some warnings being treated as errors

vim +165 drivers/gpu/drm/i915/i915_getparam.c

    10	
    11	int i915_getparam_ioctl(struct drm_device *dev, void *data,
    12				struct drm_file *file_priv)
    13	{
    14		struct drm_i915_private *i915 = to_i915(dev);
    15		const struct sseu_dev_info *sseu = &RUNTIME_INFO(i915)->sseu;
    16		drm_i915_getparam_t *param = data;
    17		int value;
    18	
    19		switch (param->param) {
    20		case I915_PARAM_IRQ_ACTIVE:
    21		case I915_PARAM_ALLOW_BATCHBUFFER:
    22		case I915_PARAM_LAST_DISPATCH:
    23		case I915_PARAM_HAS_EXEC_CONSTANTS:
    24			/* Reject all old ums/dri params. */
    25			return -ENODEV;
    26		case I915_PARAM_CHIPSET_ID:
    27			value = i915->drm.pdev->device;
    28			break;
    29		case I915_PARAM_REVISION:
    30			value = i915->drm.pdev->revision;
    31			break;
    32		case I915_PARAM_NUM_FENCES_AVAIL:
    33			value = i915->ggtt.num_fences;
    34			break;
    35		case I915_PARAM_HAS_OVERLAY:
    36			value = !!i915->overlay;
    37			break;
    38		case I915_PARAM_HAS_BSD:
    39			value = !!intel_engine_lookup_user(i915,
    40							   I915_ENGINE_CLASS_VIDEO, 0);
    41			break;
    42		case I915_PARAM_HAS_BLT:
    43			value = !!intel_engine_lookup_user(i915,
    44							   I915_ENGINE_CLASS_COPY, 0);
    45			break;
    46		case I915_PARAM_HAS_VEBOX:
    47			value = !!intel_engine_lookup_user(i915,
    48							   I915_ENGINE_CLASS_VIDEO_ENHANCE, 0);
    49			break;
    50		case I915_PARAM_HAS_BSD2:
    51			value = !!intel_engine_lookup_user(i915,
    52							   I915_ENGINE_CLASS_VIDEO, 1);
    53			break;
    54		case I915_PARAM_HAS_LLC:
    55			value = HAS_LLC(i915);
    56			break;
    57		case I915_PARAM_HAS_WT:
    58			value = HAS_WT(i915);
    59			break;
    60		case I915_PARAM_HAS_ALIASING_PPGTT:
    61			value = INTEL_PPGTT(i915);
    62			break;
    63		case I915_PARAM_HAS_SEMAPHORES:
    64			value = !!(i915->caps.scheduler & I915_SCHEDULER_CAP_SEMAPHORES);
    65			break;
    66		case I915_PARAM_HAS_SECURE_BATCHES:
    67			value = HAS_SECURE_BATCHES(i915) && capable(CAP_SYS_ADMIN);
    68			break;
    69		case I915_PARAM_CMD_PARSER_VERSION:
    70			value = i915_cmd_parser_get_version(i915);
    71			break;
    72		case I915_PARAM_SUBSLICE_TOTAL:
    73			value = intel_sseu_subslice_total(sseu);
    74			if (!value)
    75				return -ENODEV;
    76			break;
    77		case I915_PARAM_EU_TOTAL:
    78			value = sseu->eu_total;
    79			if (!value)
    80				return -ENODEV;
    81			break;
    82		case I915_PARAM_HAS_GPU_RESET:
    83			value = i915_modparams.enable_hangcheck &&
    84				intel_has_gpu_reset(&i915->gt);
    85			if (value && intel_has_reset_engine(&i915->gt))
    86				value = 2;
    87			break;
    88		case I915_PARAM_HAS_RESOURCE_STREAMER:
    89			value = 0;
    90			break;
    91		case I915_PARAM_HAS_POOLED_EU:
    92			value = HAS_POOLED_EU(i915);
    93			break;
    94		case I915_PARAM_MIN_EU_IN_POOL:
    95			value = sseu->min_eu_in_pool;
    96			break;
    97		case I915_PARAM_HUC_STATUS:
    98			value = intel_huc_check_status(&i915->gt.uc.huc);
    99			if (value < 0)
   100				return value;
   101			break;
   102		case I915_PARAM_MMAP_GTT_VERSION:
   103			/* Though we've started our numbering from 1, and so class all
   104			 * earlier versions as 0, in effect their value is undefined as
   105			 * the ioctl will report EINVAL for the unknown param!
   106			 */
   107			value = i915_gem_mmap_gtt_version();
   108			break;
   109		case I915_PARAM_HAS_SCHEDULER:
   110			value = i915->caps.scheduler;
   111			break;
   112	
   113		case I915_PARAM_MMAP_VERSION:
   114			/* Remember to bump this if the version changes! */
   115		case I915_PARAM_HAS_GEM:
   116		case I915_PARAM_HAS_PAGEFLIPPING:
   117		case I915_PARAM_HAS_EXECBUF2: /* depends on GEM */
   118		case I915_PARAM_HAS_RELAXED_FENCING:
   119		case I915_PARAM_HAS_COHERENT_RINGS:
   120		case I915_PARAM_HAS_RELAXED_DELTA:
   121		case I915_PARAM_HAS_GEN7_SOL_RESET:
   122		case I915_PARAM_HAS_WAIT_TIMEOUT:
   123		case I915_PARAM_HAS_PRIME_VMAP_FLUSH:
   124		case I915_PARAM_HAS_PINNED_BATCHES:
   125		case I915_PARAM_HAS_EXEC_NO_RELOC:
   126		case I915_PARAM_HAS_EXEC_HANDLE_LUT:
   127		case I915_PARAM_HAS_COHERENT_PHYS_GTT:
   128		case I915_PARAM_HAS_EXEC_SOFTPIN:
   129		case I915_PARAM_HAS_EXEC_ASYNC:
   130		case I915_PARAM_HAS_EXEC_FENCE:
   131		case I915_PARAM_HAS_EXEC_CAPTURE:
   132		case I915_PARAM_HAS_EXEC_BATCH_FIRST:
   133		case I915_PARAM_HAS_EXEC_FENCE_ARRAY:
   134		case I915_PARAM_HAS_EXEC_SUBMIT_FENCE:
   135			/* For the time being all of these are always true;
   136			 * if some supported hardware does not have one of these
   137			 * features this value needs to be provided from
   138			 * INTEL_INFO(), a feature macro, or similar.
   139			 */
   140			value = 1;
   141			break;
   142		case I915_PARAM_HAS_CONTEXT_ISOLATION:
   143			value = intel_engines_has_context_isolation(i915);
   144			break;
   145		case I915_PARAM_SLICE_MASK:
   146			value = sseu->slice_mask;
   147			if (!value)
   148				return -ENODEV;
   149			break;
   150		case I915_PARAM_SUBSLICE_MASK:
   151			value = sseu->subslice_mask[0];
   152			if (!value)
   153				return -ENODEV;
   154			break;
   155		case I915_PARAM_CS_TIMESTAMP_FREQUENCY:
   156			value = RUNTIME_INFO(i915)->cs_timestamp_frequency_hz;
   157			break;
   158		case I915_PARAM_MMAP_GTT_COHERENT:
   159			value = INTEL_INFO(i915)->has_coherent_ggtt;
   160			break;
   161		case I915_PARAM_PERF_REVISION:
   162			value = i915_perf_ioctl_version();
   163			break;
   164		case I915_PARAM_IS_GVT:
 > 165			value = intel_vgpu_active(i915);

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--BXVAT5kNtrzKuDFl
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICNfo6F4AAy5jb25maWcAlDzbctw2su/5iqnkJXmwVxdbcc4pPWBAkESGJBgAHM3oBaXI
Y69qLclHl9347083wAsAguPs1paj6QYaQKPRV4A//fDTiry+PN7fvNzd3nz58m31+fBweLp5
OXxcfbr7cvjfVSZWjdArlnH9FhpXdw+vf/3j7vzDxer921/fnrx5uj1dbQ5PD4cvK/r48Onu
8yv0vnt8+OGnH+D/PwHw/isQevqf1efb2ze/rX7ODn/e3Tysfnt7Dr1Pz39xf0FbKpqcF4ZS
w5UpKL38NoDgh9kyqbhoLn87OT85GRBVNsLPzt+d2P+NdCrSFCP6xCNPSWMq3mymAQBYEmWI
qk0htEgieAN92Ax1RWRjarJfM9M1vOGak4pfs2xqyOUf5kpIb7h1x6tM85oZTdYVM0pIPWF1
KRnJYLxcwD/QRGFXy8zCbs6X1fPh5fXrxDIc1rBma4gEnvCa68vzM+R9P1NRtxyG0Uzp1d3z
6uHxBSmMTBSUVAOffvwxBTak87li528UqfTlj+/env4GG/nhzcWHizdfbw5j/5Jsmdkw2bDK
FNe8nbr7mDVgztKo6romaczueqmHWEK8A8TIEG9WPj9ivJ3bsQY4wwRD/VnOu4jjFN8lCGYs
J12lTSmUbkjNLn/8+eHx4fDLyGt1RTz+qr3a8pbOAPhfqqsJ3grFd6b+o2MdS0NnXagUSpma
1ULuDdGa0HJCdopVfD39Jh1ojWhHiKSlQyBpUlVR8wlqJR4Oz+r59c/nb88vh/tJ4gvWMMmp
PVutFGtv+j5KleIqjWF5zqjmOKE8h/OrNvN2LWsy3tgDnCZS80ISjccmiebN7ziGjy6JzACl
YMeMZAoGSHelpX9gEJKJmvAmBTMlZxLZup/TqhVPT79HzMgGyyNagiTAboAq0EKmW+Ey5Nay
wdQiY+EUcyEpy3qdBsz0hLIlUrF+duM58ClnbN0VuQrPy+Hh4+rxUyQXk84XdKNEB2OCYta0
zIQ3ohU9vwnqTU+0PcwWlHhGNDMVUdrQPa0SEmY1+HYmxgPa0mNb1mh1FGnWUpCMwkDHm9Ww
1ST7vUu2q4UyXYtTHk6Ovrs/PD2nDo/mdGNEw+B0eKQaYcprtBW1FdhxRwDYwhgi4zShmlwv
nln+jH0sNNG65EWJAmNZJ5Xt0m/obLoTtVYyVrcaqDYsQXRAb0XVNZrIvT+THnmkGxXQa2Aa
bbt/6Jvnf61eYDqrG5ja88vNy/Pq5vb28fXh5e7hc8RG6GAItTScdI8jowRbCZnQSc2vaGkP
CJM1qXBWSnUytc61ylDXUWiANL2tizFme+65E6DblCa+ECIITldF9hEhi9glYFwsrLJVPHk+
/wYjx3MHLORKVIMmtRshabdSCdGFTTOA86cAPw3bgYymdlm5xn73CITsMQEICQLHqmo6DR6m
YbBdihV0XXF7FMc1h3MeteDG/eHpxc0ogoIGIrMpQUvCwUh6aeh35WDSeK4vz058OHKwJjsP
f3o2iTlv9AactZxFNE7PA8PcNar3Rq1AWs0z7Ia6/efh4yt48atPh5uX16fDszstvdkHV7tu
LSeTspDoHajkK9Jos0Z1DeN2TU2AVrU2edUpz7mghRRd60lxSwrmTi/zTBO4JrSIfkb+0QQD
pxmXnMW4DfzHO17Vph89no25klyzNaGbGcZycYLmhEuTxNAcLABpsiue6TKQa+13SIhEP1LL
MzUbXma+89wDcxD/a8usKTZwmLIrGPA8NUgLXp2vPFBoccweMxskY1tO2QwMrUO9MsyeyXwG
XLd5YpLWH0idcUE3YxuivXWjswx+BihGz0kFU9r4yhB1tA9AT9n/DauUAQAX7/9umA5+w3bR
TSvg3KGtA8fJ44Y7XBhODQI1GYK9AlHIGJgAcLeSOy5RZ4eCCey2foz0I078TWqg5twZL6qT
WRSMASCKwQAShl4A8CMuixfR7yC+WguBdhX/TkkUNaIFrkOUjO6hlQABxq+hgQ8RN1PwR2rz
owDF6TKenV4E8Q+0ASNBWWv9VOCOL6K2T0tVu4HZgB3C6Xhcbj0BdYbGE45wpBrCNI4C4w0O
JwvjCzNzFN2Gz8B5CdqgmgVko8sUKPb4t2lq7gfqnipkVQ6b4gvj8pIJeOZ5F8yq02wX/YST
4JFvRbA4XjSkyj2ptAvwAdav9QGqDPQu4Z6UgQfSySCAINmWKzbwT0XbaS0L7oQNnfPMXIUW
YE2k5P4+bZDIvlZziAm2Z4RaJuGJxDAyEP82N5WqUy4cYKb9Djr8zjWMc0X2ClzzRFdvKVFE
g1moaUFAv6HRPkOcFQRZVpFaaNIjBVosy5IKyJ0UmIkZA5vJFaSnJ0H2wvoIfW6wPTx9eny6
v3m4PazYvw8P4AoS8A4oOoPg908e3gJxN2WLBE6YbW2j0qS78TdHHAbc1m64wZXwBEBV3dqN
HOhphPY+hD3B4X4FaTcCjo3cpP3+iqTsLVIPRxPpZgQnIcEF6rND/rQBh7YeHVQjQZuIegmL
CQmIIbNgyLLLc3AErYM1Rv8Lc7XOJ4TymPcMVJtmtbXGmILlOadRogTciJxXwYG2WtnazSAy
DJOeQ+Pdhwtz7lktm2gw2R5MPsTDeaThobVvHpWWnc3MAPOoyHw1IDrddtpYi6Qvfzx8+XR+
9gbz3X5idANW2qiubYPELfjPdGMHnuPquouObY1+rmzA/HIX3F9+OIYnu8vTi3SDQdC+Qydo
FpAbky6KmMBvHBCBHXFUIXbszabJMzrvAjqOryWmULLQaRl1FgoOqs9dCkfAT8IkPbN2P9EC
hAcOq2kLEKQ4xwhuqfMsXXgume8SYvg2oKymA1ISkzxl55cEgnb2JCSbufnwNZONS4GBsVZ8
XcVTVp3CdOIS2oZAlnWkGpzxGQUrUmpQhTAlezYDIYcjYVTdLnXtbK7U03A5OBaMyGpPMXvn
G9+2cNFgBcoRjOsYK/ZlD0Vwa1Dgkf+MuvSg1fjt0+Pt4fn58Wn18u2ri/29qLEncy2gfyBr
wbRxKTkjupPMOfEhqm5t8tBXWoWospyrMuk1a/BNguINEnHyB56hrELEmhduMiNxhLKdhg1E
oejdpcRI2A7UFybyWxXNmdRT11mQxIXKTb3mQTagh83jnmBesONccnUktyRq8C1yCAjgtKJ2
ZSldXu5B2MGhAk+76JifYwRWky2XCYjZ7QI/ZoQvRWpjA9XyxqZbQx6VW9QbFQbUYDZokHPe
sSb4Ydpt/DuSIYCB5TuJW5XbOgGa91WoSqYAbmI60rVnME8lanqKnsMIxCOWukx022HeFI5T
pUPf2XWfakPbOjngnO9H8o1x0yG/MxKp3324ULskfUSlEe+PILSii7i63iUmV19YMz21BJUJ
4VTNeZrQiD6Or49i36Wxm4WFbX5dgH9Iw6nslGBpHMvBL2IL7mN9xRssA9GFifTo82yBdkUW
6BYMPJ5id3oEa6oFQaB7yXeL/N5yQs9NumRqkQu8w2hloRd4nkuKtvc0Qg1i1VuDS3AuhEt1
XvhNqtNlnFPeGGtR0e5D0hh3tGDtXH5HdXWIBnGP7Evd7mhZXLyLwWIbWTPe8LqrrUHKwX2t
9uGk7NmnuqqVpw45AcWPJtIE6Q9sv613M+PpFURsnQATKqwCFZtO+aHL4JjhpbV6sJWBwPce
MGDi5sByX/h+/0gFTh/p5BwBDnSjagaBQ2qIrqZJ+HVJxM4vZJYtc/pQRjBWdxW6pVJ7+5X5
WZPGOn0KIydw+9asALpnaSQWcC/exbghIjuPe3kQZ5pV7ccPFlTTOQSTOyLcZHs9w5B2dgBE
AiiZhLjG5dHWUmzARNkcHZaiI1mMoiYEYNmgYgWh+xkqlpEB7CQh8FNIQzmG2YBeONDYEQvF
qgRfLjUUltMv74ND15fNtqEH6oX+948Pdy+PT0HlzssxDCe+sRmT++UWkrTVMTzFGtsCBev6
iSsQxfsprF2YZMg0x3Y40aGd9VqcXqz9Irb1VFULfr1/SpxgtBX+w/xEnxagBNdkmjb/sAk5
LBlKCtALai8QY4MeCar9IyiWiQkR6IcJDLvt9HYex+wGVV4wHes0WTYOJ0tgURlCl6T96HHv
Uq5Qj7t458W221q1FXjL50HGZ4Cepb3wAX2adrhATYg8x1LJyV/0JLyk1s8hXHRLWHx4aEsw
2tJcaU5TXmfT+bEU/kJF50GA0aq3eGMs54JDG0rBJPpiWBw7juhZnsnhrRUZbgThBRBv63mF
AlwNYQdeq+jYdBfPLhZJ92IeR0URfpIEZFur51xCwwzhm1CYAJWdTfYvnBt3bQVroleeBq+1
9GuJ8AsjXa75NVuE93wb+XOy0Aw5iQGFtQZD49Nw42Pugs+hIBRH/UTCsqFFx7k9JKJqEgXS
4CFHEKeytNrZDUPxjFkZt0j7komWWNpKsJzlfqkg5yDNnZfhUIxiesqfRXltTk9OUuf22py9
P4manodNIyppMpdAJrS0pcRLHV7oxnbMM6VUElWarPMjRdvE/B7A2nKvOJpnOLISj/1peOol
sznV8LS5vcRqFxYWwv2yySjbSyVGIRUvmvkopdBt1VkXaeqEyhxjwNpHB8x0kaaPPZbd3mYq
faGR1plN38GAVSrUExnP96bKdFAQGWzjkRRScAD6o9drn37S0SGZtZHw19bjsHXsweMHV9Iq
Ths+8Pis9WScqm/Romv/ikT7+J/D0wrM+c3nw/3h4cVOmtCWrx6/4n1oL/c1yxm6Wx/eaXDJ
whkgVcAfUGrDW1v7SVo6NxYbsyt+tWyaiCdbNchu5vL6OrwXjKiKsTZsjBATZc0AjtrA4tJ5
i9pckQ2ziaCU6ayDMYZCjEc922LVOJvXaACJt50H7iSJ95Oe9c3stNzlwaVpuyw/hBBpyrQK
UitXfzj3z9iA33rBvf5P198gri16W5qgH6Z0UcQ8SZ39Gmyr1TYKzJ3YdHF+uAZzqvuyKXZp
/YS+hfT1HLcK6+kqr8Yxzty2tQwtkklGR6ul0kTKzyF6sQrJYcCaKzf0EknJtgaOtJQ8Y36K
PaQEejpxpdRvQejkY1jAmmjwW/YxtNMazsR9RF/zZt+zyLVYGmYL0xQRzZw0EUSTLIJkwjdO
FmRzBpKBgPn55pFxLtLvY5MlNM9mWzEiIzhvIVAOJ5U0M9EIpCjA77F3iKM1uvjNgw71nZ4F
qHK7tpAki6cY4xJCuMT/lqKw+WUjx0vRaAI2S86oDWt0NmSJ7NCKizACd8K9VjHjwqqrm0Kn
tKhhHF2KdGLPCWAh06qjPw1Zh1oRa7tX6HOKptovN0ebt1Tqd6eiZZ5SCeHhfZNE86llUbJY
RC0cdoMRFkuaRTGI+SOuOThW4iJ7kLU6H6Nsv0fiIrjVBjuw35HR4HjnCCSVL/i7g5jA3+nc
vw1Y4rST8n1fmwqBNuiIeTMCW+erE2gAPp2AvbO3zxJmLGibid49WWxhL9lmRxpkHDwbsjfr
ijTpCwvYCiuOV+jyB6sfrk6v8qfD/70eHm6/rZ5vb74EOZdBUYWpO6u6CrHFpySYkdQL6Pgi
7ohEzebv4YgY3sxgb++GWdpXTXZCUcIa0N/vgntlrxsuJFVnHUSTMZhW9t0VAK5/ZfHfzMcG
NZ3mKS8iYG94BS/ZYuDGdLgC/Lj0Bby30vT+TutboDAu5nK6q7/6FAvc6uPT3b+DC0VTjNpG
ZtCeVnwP2HZWMoNE02Bdj2Pgv+uIIDKqgUOyuQi7TYhfFxGR/xZiP0TTqLP+CLBGgZO+5Xof
tih2VnGAHxnCQZewDPw5l4SXvBHfw8fuWtiK03KJgPLdBbucd67yOJvUwNDGXuQ5C5GVaArZ
NXNgCbLuK06b/pyEVc601PM/b54OH+cxWThtfMW2sCJ7YwXvx5PW5Zv8uDWtA0dp5R+/HEKN
GLpeA8TKe0WyICgMkDVrulhpjEjNFkJyv9FQdU5afocaKtTxCu0yxhSfPVpxs+9Hw5Yp69fn
AbD6GfyA1eHl9u0v/tsCdNUKgSm9dChm0XXtfh5pknGZLnY5NGm82gaCcMQQ4iiEsGHgEOpu
KgQToM367AQ4/0fHF64D4t2rdZdyKvpbWVjW8TKrigRZAPrX2UIGjFQ8XcxtmH7//iRdBi6Y
SAZJoHOa4HqiPRx7la9DMr0YLOyv2/u7h5unbyt2//rlJjqMfW7JVjAmWrP2oUcKfjNeYRMu
/WmHyO+e7v8D532VxUaBZUERAX5iEjSx4pzL2vrQ4PoHidWs5n6KCH6626ARCN+a14SWmApr
RGNTn3mfhJma5leG5v11Un9ePnzIqKX3S4iiYuNsZ2oPhl39zP56OTw83/355TBxhuNl2E83
t4dfVur169fHpxePSTDXLZFe3IIQpvyrQEMbNK6ugjYxNUSNngl4mrGr6vWQeHWlBn6TIBXg
+LYZ9uE7na8kadvgKi9i0eWuBKbabKgnRRWuDFS66vDKmwjTcT7OHmD4l8C/VJXxFBee2MNs
8D6txOqb5mFBHgsR2j2l3pgaDHlB4rJFMISk/MzZ48UmPYed2gqDu/E4/TcSMSZKLSdanzcj
KLxia2fBtljRKI2tIEX8HC4dDkdVHz4/3aw+DZNwXpzFDO9D0w0G9OyoB8ph41/5GiBY/Q7f
WfsY/5q9DzdYSQ+uLY/Y2XsGBNa1X7lHCLE39P1HJSOFWsWBNkLHi7KuSoqPWEKK2zweY7iF
C0ZL77F+bz8p0V/VXFjYet8SFT+jQCT4f+H9NLxA1uFnLqKsMbLZUwDYFxwxmbw7bke1heL7
gDl1FpOo6859GiB1sJQh2937U6/WjZdTS3JqGh7Dzt5fOGjwLY2bp9t/3r0cbrG68Obj4SsI
FDosMw/RFX/ChxWu+BPChixQcLVDuOvugX4cYP3zA/t0CNRE6mKc3YqRxowqJmHipMMmvuqL
JSpwKtcsuLJpi8oUFrJXWMrNFxSYaHVMrx8AIrvZbfvZNWM7/yn53TW2ZIUP4ShmCKN0NNZj
8BMjcMzMOny6ucG7vBFxmyEBeCcbEFXN8+BZjx2aww7hNfjEXfEZnxw0MU6/CWn4EW5YfN41
7sGBPQ/pT0NsWZhNm94xWYqlEJsIiW4hmjJedKJLfGVAwZZbj999fyHis71GL8Ag5fvhoeC8
ARonl/ZcQDq/2ATOkTdz9zEb9+DCXJVcs/7ZtE8Lr7+r8fGGfXHuekTtzs/WXKOnZmafFVE1
Fkz679XEuyNZAYoCq2TWyjqpCx1q1075Capw4/DbOosdXcHHh5RXZg1Ld+9AI1zNMYKc0MpO
MGr0N8Tav2M0lxxM/2KobV/Ouiv60WvbiUhi/OGtleyZFpa9px0O9MoRrP9Urm+Gmh28nZL1
9SBb30yi8eF9qkkvie7kuEfu/bXLeDK9wukFEW/lxFvo+rmLdQu4THQLbzfw0bD7oMnwJaUE
M/pbDv3bFS9BvAD3euIWVCAvEXL2AmMwVv0rjQBtP6DhjbrQN+oEHBMzd8ctnGuIa3rxsO8L
YhlKfAMjPgoCRa2Ona1B6zX20gzwF9/EJDbN7T/g8EVgXNa0G2ORWK4HB0DG3UFjDLecGMVH
ap7wiazDgikaI3w5K335HhWgxQwXN1JzC15xxQZxB8osqZnDXh9CWRTtflCr2n/22mcQQu1E
K3xog9EmxIX+dwLw0p3iRV9ZOJ8hSGSexpgcNTDuacocaDA6eviWlbza+UK1iIq7O84nu6dQ
E69b2KPzs+F2TWgGRscCbFngC4yeEKpK/yVoMv/hvbc1rKFy346fjimo2L758+b58HH1L/cC
9evT46e7vgoyRerQrGfDsQFss8G9i27HHBsp4Ap+Nw99Ud4kH1R+x/MdSEn0TTV4uh477dtn
hY9wvetubnNAdobXk/FhigH9o02Mt/+fsy9rjtxW1ny/v0LhhxvnRFyPi7WyZqIfwKWq0MVN
BFlLvzDkbtlWHHWrQ1LfY99fP0iACwBmsjzzYLcqv8RKLAkglxFUZyhZp+jBwVBg2PtxQ4K2
cmXYu7RD7z6HRji5G00jXpEMJidvjAXOKH+DZz7HHMI5PKs1UVkJLnzCwMXikieo6WLkmDx8
+OntjwdZ2E+jXGBxAMdFUyXpp8OUCwE+1XrPHA1PlSILmrTO5JSVy9E1DfIEZ5ELQ9rxHcEu
n2yH0O5/XA2YILG0KsCnhggFvKLf20ZbgxsYuQC1744GBNcdgdijRMsr3uC1o4r3Jbza0FBT
ebPhgNzBYDwZjVPJTSGvqsTx0DRGQecV7UvVwlZvT1/aIJ0JTOegcotoe4aDHye5MuL6BhZj
mKNHzTb/Jr13W6gt4HAq1icwJPKC9Q+GxcPr+xOsbXfVX99NY9Reza3XKDM2Dnm6zwxFOEtj
w4KasE5ZxtCGu6xxLHLsoO/y8VBMlcgiwiLQZVQvYlKg+xtFllyE/GKVyi8Djl0OiJ3VQV2y
VEoRKFCxkmNAykKULKJcYAD4PYu4ODqnD7CngqfPAEkCfsZkC1t16xFcy5Tquh/JNolSfBwA
QPom2qMtrRPlWhGrYJ1h5COTOyoGwGUqWitw+rn28Q830tIluLrXPGfimJMsvYdrZnviSRpc
EZqXki3ZdksFRKXkqV195oOnMGNyylQ81+rZkZR5bTtuAzxeA1P1pyMHO+P5Xv5ouuWnc8M1
LE4SpDxNDX4nrUr2C0jvoVCf0y0vZbZLKiYyz5DZM+3joJDnqFpZRNvuOltcCfsan8LQtMpF
GZXYBO3Ujpapfl0rU8OdqhIKddXlspGfM/PoKndIKSIToCqNwHpBXfmfjTBLcRpxE5dnPOmI
PpxBOu85TRDvOv0r262pwasU17vXpoFjUNPWj29/Pn7+8f4AryzgU/tOmX29G0M84NkureAw
aczrZGffK6tKwSVM/5AGh8/WYaAxp3ReIiy5+UzQkqX4Zai4Qpbttc7wLkRUVrUkffz68vrX
XTq864+uySftgQZjIrlT1gxDBpIyeuhuxbUBk3t814UUypNuhRWjr7fHyZTQpxX9xxeXO/D5
ujdlRGUWcARtcZkWHHMbs0DXwXRgaSMjowSb3lbWEuBthu5z55n7/Dvidy0bWmMFZaigDVCX
TqIAxHJrT9UEfd7H7gAcmrJvK2NYJqzbHcQ3cqhuqhvHawmYsUhBJiqbqlkvLWPGQJ7DzUtp
7eMgh1sOo6C0Ru5Hj8IYSV0PqmsV7UY3Kj+sV6tFb2c9fdeEoa23LvPDoWyp9lOGb79JzLRl
F6Z6UMr+sp8/wtTS+pA/J5yD9CiqqgqorCkTHzYd6VNbWJ+DIvSHu7wcnvDjHYj5SLZkEu0y
8HbW/hL3BDCRMX7AnUpwwD1TkEk+iQqzIaH4P/z0/D8vP9lcn4o8T4YMgzoad4fDs9jlCa7z
i7KLsU80mv3DT//z648vP7lZDmsNlg1kMAzGtg3dL1XbYW/pqmO+eHY+heQ0LCh3yF06tXQj
leietpQCQfewZ8g1Uee4DN7Mjq63Ym3lpdwh43o04HxUHl8PKbP1tAx8H8OSqixHlSHqB0uZ
QwpjoG4vj9uFMrfHjU06EQLyUXfP5l7Ydo9+vJc7fFI4vrLpbXjYO03P3rLCMr/SemkFYozQ
pETgKLqJY6CdH3Uva0oUyB7f//3y+i9QuR3JAHKTOJoV0L9le9h+GCBw1LIPXlJoSR1Km2RY
YRNU7X5n2rTDL3gjtO8PFZUl+9whKWedXy3SYItu0+WJEhQhuOUHAQC919nmyCrBlMW2LqpQ
Zq9fzS9wjK8jglFE91VSQ5CTP5zevUSF8osb224UDbJKgKkbWmOHF1oEs93TS2pve6c8S5QW
tuMB3MvFjeN3vMsM5Dltj2Zh2keF5mDVAcFOcRnkpnFsj4QJE8JUyJNIkRXu7yY6hNYW15KV
WSyul6kZSlZiSmdqahXc+YK82Ct9t7S+uEBT1VlmKr30/FgWSGQA6MO2yY5NRI9gzFP9XvBU
pM3Jw4iGYo08Gsky8yOPnSWDF6eK29WvI7ylu7weEYZeMasFIDP0yhUhFsWY0s91Y53oMDmV
Q+y7cV1ve/IpopqWbtUVghLtWaf5wgIjQ5cg5JKdMTKQ5AiCx1djtYGs5Z975J6yhwJuLAw9
NawD8xzU08+yiHNuKuP30EH+hZEFQb8GCUPop3jPBELPTggRDtTK1GAMJVihp9g0XujJ19gc
Oj2ZJ/IElXOsNlGItyqM9gg1CIw9o5OZui42LOk1IM8DmEuEDu5y/fDT5x+/Pn3+ySwtjVbC
Ch1QnNb2r3b9hUPwDkMa+7iqAO1XGzamJjL3SBh569GsW4+n3dqZdxY0mlZQZMqLtVsQOdXW
YyrkYa0yiiJ4NaY0a8sXOlCziItQHferaxE7IFqWtSArirV0dRQ88cRiC1WsA3iIcsnjtbsn
3shwvFTrcuL9uknObQ0RTAq5IUZ3vO/rsVQkfV6UNYG6L8efAAt8GZaJIDIaKMCAwG1vK0VV
tNv6zgrp0iUqDleliCCFjJQ8TkhmrVWDv0cVY3DYAqMwdHcHIHXLtRKDgXAXhjx6G4W/M0UI
lQ7Y5uRLgcm1cESUAbiZvNqVYaPfG/vzAlnJoQmt0+zDw+d/OQoLXcb0nTiWgVEtEVaFuTfD
7yYK9k0efAwzNGiL4uiWVSVyqMEKy6H1xEHxkY/rZAoitpDiH9eAQqFcR4bRJTrHmDLCTgQV
BG37av5qUnkaY435emyQpUTh0JVCSu4Q3cJZhXlUTOaVMdjhV3d55FDN2EKKwN10cWXsIMLM
di+l6OFXav4ISh7tY/d3w/epHEFZnhfW7WKLnhKWtVpzY9UyNV9tM6mWhDRf5eTP5p7xWjTQ
mv2pNPraAFINGHt+KAvB+jcxvq38Mbc/CUtws7DLfIXSE1YEKFAccqcCPbRO8nNBeAXlcRxD
i1aYuokex/q5TC0N9z8efzzKaf5L+xZmWXq33E0YGH3ZEQ9VgBB35qtER1U+D0dUtRUiGZdx
NCaKHVKa2CHJq/g+QajBbkwMTU8OHVFuM5ZXui4DBq2guxTkDKTekVDb4Ygu/41ThL0skY66
xztQHAMcCA/5MR6T77HuCtW7zogML6g4EjIsbyzrwwHp84LHWPfK8iQy0b3dtdc4Q3iSQXKM
iYvBvqvHfnv0Zvn88Pb29NvT5273N9KFiXNglgTQoOPOoAdyFfIsii9jQAmCyzF9dx7T6oVh
P90S3EBLLXUsdqnCxKlAqiCpa6QG4EJvRG0DZo3oIFyiWcTlmJ6C6w5QMrSQWJGdq0xF07rI
pt/VAQrde7aWngXXKkYRqxsNOjinRYEqvlTuoOpKZxnHnhC6lrLQubBloKUOl41O3YAOyrnm
pgqsZR6MM0h5OVpfgC6kxJwgGWesGhMLiP2M5MHdDlXUY4Czh+Aw2ekbVcUCvdLtYNhqx5mN
BlFbtOVVoKPzHdJSfZIZ37VKZpXRaPltgfHS2QLDxLWaWIXd/fnEKrXj5hE9Co0vGWVgHCJy
iMRsCEdShmNKW80sb6B2f54w/TqDKzGVcQZ6ZOk2DvQsRMmpfUNpZtRKkH+hlaSfLg0mZft8
iwneenB/93kRZydx5pXpo8Ig2gd9EzhdrKFnpYmz2PRTcupu2kcU52qvJydSoFUm4AOkzcxP
acix/JQ61W2guxTucR3WAUkI53WeHZ0Kwmy0lxGgNHthajwU7XYEIreVUh4FsEvfTBzMYXoQ
+GFczQbVwVGMDVzAkwXEaob7LsnjSvZZaAcjbaHSdFxc7lSIVMtntYm3CmDq/sHyuW0Ao7cG
dY8L4TfF1bGUDe7NHzrMl00QVRmzdGQjre7G4YVRh3O3H93u3h/f3kcyd3Gs5MC0uz4q86KR
A4Jr12v9kX2UkQOYz3rGl2NpySJUng3NuQJOD0p2tglBmNqE/dkcFUD56G0X27FoJY8s0eN/
P31G/DhAqpMu28rpdAmJgw6gInFQA4NxZVUzZEkIdjhwZWq/JgN6PDEwkQMfZjv8rb7Quz9Z
mXAaDTcbwgGrRLnyTJARJSvfE5O5FzE7TtVdddZH5nrQtfF858Ya6T+bKOSE7PwJWDFjIeWB
LzwP902iqh4W85WLd25oxpn3hdYimCjUB114xUIUG6diGhcR4LiWihrX0+nbETPFkoYBm2RQ
322KoR59daPjnA6yU2qFeu2JGw+9jsxHY1NGrfR3cnkszcutjtI9aAw3IT2gLKTlRklYlfSM
1IVoeTnaJkIyxTHErr6IJRhesUvbbOnMyzixVCbOUrJzHAAoUhvauevY3R4uVzxLOkwUSbkM
ATVJ/Fu2CeGDxAm4D2mkmJDJ+Yb3Ss8fgqORLupek2eoZ6GeG2xdZNNU0E7laXofBePaK83a
zoIPWJTbAISvu2AtLMnPgEmltL76ZcTGQfR6GLrY1JcJu951KErHpgzHrJIIioDw5RMc7XUG
/w7Xh5++Pn17e399fG7+eP9pxJjGZiDrnpzEpkFmT0aEZjMn0Sk3UU8edkbKVRimNNpxySOz
su5SEcRVsL3ZkNeZSypaSrk7ctSCDsSObWFLMttiZBDQki+uxLJtY1c756gt+gDRr1sc890U
xsWhdeU2sLY0eC+tqutEnh0jDHrzFIbLrjvUEzR2zraOo+PnuY5ihx2OIPIg6IkOpD1EIooT
V15XwbBT0w5NyYHxCaR9Y3FjPMmtM2VcHSpQEGwPBs5lejwIr/rRiBDINLPjnQx+I93Txo80
jEfcHxC/jXEr9rYUVmBRsFSAO01pSAEMNrvlW7YlDMFkDDmNy5qHJfohIZWw/JG3FCMqhpWT
wqZdiNpssNr9LWbcl6nZiCJ1eqCJitChFFXqVrkJcKtA3TER9kiqfOAJ55tJgjL819/OxpT7
LCdqMO2sGbBSR7ns3O+DQ3k7SxVI4qtJUacqk6hC8oUcJD+lVA2+9a0UlpYaEEBhHjb61tmv
DXIzgJcqsHS6oGDW+VDl6HjIGIYsPo6Vrv29dW4eoU12Khkm0ZisPDDOXSZg+xp1ETpdSNcZ
/vepWq1WMzppH7cN5RAHNVS1vWbI7z6/fHt/fXl+fnw1PLu2K9Db0+/fzuDzCxjDF/nH4MLO
Hr3RWYXelCUJ/GlMjVu5wONC81RR2i7m5VdZt6dngB/HVenUdmkuXeOHL48QDUrBQ8Pf7t7G
ed3m7Y338F7sezj+9uX7izwOuF435SRRzmlwi0AzYZ/V27+f3j//gX8zK29xbm96HJNUK386
NzOzkJX42bVkBXfuKga/X0+f263rLu+Vl/uUtfYCoRWvUcWtU5UWtoTW0ZoUfEeghwyWRSyx
PLBIGUSV1DuZBK9X/SNr79Lu+UV+7Ndhj92dRy4Ke5LSfY9kRqYp2UWKi30hRiiPIZXy86Mb
bLYKZej9V6LdPiTBnAIMTJ00M/bg1za3PyoqvwGwdlvman2/q+NqySnJrD/Plu5x1mJQ0UJ0
No22osLXibS5z0VzrDPwghITq4nKTLv5a7NU3sFQXp1VxxZTHiTFVRgheg0psAu3DYGu5d6o
CsLhU51AfOmAJ7yydHjlWc6yodC/Gz431uiOZpqIgvcx5VVHjbedPXQA3MVZqM8qMTrLianY
uwb+ooRMa26mB+66ybW8zXZJ+jNALoVp278RHM1br1lmhfcZ5b+iwheYHDtzuPFUtFso+xjb
Eb46hMa8Ieloct5xZvm4HrjVwxE+TgceJVfyaTZ28f3NFgsx2HF4c385agHY3TWWaJnZAYCy
oj+EqnPrOGpA8fry/vL55dk4QsjDgqW5L3+03pjNjFWUN/Up0ZsEyWHLN60bjBGhyeokgR/G
65qDNPomAPHZ13HuDHkyjMo8db4XjzBhvUsNIooQkRxovFjML9Yb4idcwOuS1qmpD9JR4XUJ
pyrrR+Xe6INvXNq1HFp9DPgmiozKwFK1h99uD00kz4JoXDVx8cdE2XKU2NbfW2OYusDw1gt/
aX0PeBwJo5P7mTpyu34Js1NshjNlpckqpkIP2VpvcOKQ1cJPHAYI26iFte95QXIcjzKn43uy
uFxG8yo7pfHYozNQGzvSaf9dJGRcVACjaYkz3HQAcjin6EdW4I4FJfgtsTNrL3UsRss4UJEI
NWEFsXIfV04WmugMeBNBim0RrPQOcacAyubUdXhCM7teHw+e3j4bm1m3pceZ3MpFk3CxSE6z
ufVxWbSary7y4J7jIoaUg9IrbMe4Nl8AbobxkKjFgWVOUO1BcOG7VI0PPNdQbBdzsSR8xsvN
PskFBJ2GUB7j54NuXonVarFq0t2+wJt2kGJGgu9XrIjE1p/NGeEMiotkvp3NFhPgHH/J6j5G
JZnk8XWSJzh41KNcx6Iqup3hV6eHNFwvVvgDUiS8tY/54mr1Azp7fevi6iA/ao0/BslTbyU/
RROHxaK9zMAr7uwz6FGQlngvUqjMLo2IdqiPoeJUsIxbEy6cgwQxWrfiWO7pqXHi7QaXosvV
dm7owA3E1YjohoxtySm7rP3NmH27CC9rs349/XJZrvHxrjl4VDX+9lDEAv/aLVsce7PZEl0w
nDYbfRRsvNloPrb+0v98eLvj8OjwAyyA37rIJu+vD9/eIJ+756dvj3df5NLz9B3+NKXoCq7N
0Lr8f+Q7Hv2wosHxAZ/DoK2tohkX2POBjieSxqapT0dqUksLdKBXF2LF6jkOEbqzGFo3H1qL
DvB//3yX8vDuP+9eH58f3mXj38b3SicpTFEHkaksjIERHvBVDpy0yG4Kc6VXQLOUEHT3Ngf1
TnxgActYw/D0NWjJoK2zdjPrLp/bgfgcqVf1HrjWaxOPJ7nyuwc6fKZFPeORig6GSfmQwDTH
ECregUMZHjSGgQp05PAwVLGtm44/+w852v/1X3fvD98f/+sujH6Ws/WfhveeToi1NvDwUGoq
vmD2ifBbiz418TjVweEBX82hffJvuHQiFJoVS5Lv99QzomJQ8UuYG1Z26KaqWxXenK8oIFQf
fLVhGiv6LkTJXP0fQwS4+CfoCQ8EwxO4gwCocPvbxqi1oLLoS+gHudu6UcedE3iRp3suOqCT
Bxv/xlHCaAscLKDG5qlbkrQakum6ShJbu3jtXN6GlL9Sm2QfjFVBn4o8ihxakfaBdELjgvnf
T+9/yHZ9+1nsdnffHt6f/vtx0CYxRoEq6RByp0lpHoBL20S9eylfCotREnVZD69c5oRSKJdS
hLee4zutTg8XwioXmkfwBHWrqjAVC12PcNnAz27LP/94e3/5eqfCqhitHuSlSI7wUdAVs/R7
CIczUbkLVbUg1Yubrpyk4DVUbEa0afiUnF9GfRmd8Q1af6YTjWUTGEgylLejru+nQGKxUuAJ
f59UYJ1MfO8Tn/gcJy6lWjHeqYqbHWzc8MDAI2qgwZRQDlRgWRHHTQ1X8utN4oW/3uBTQjGE
abReTuHyREYci3p8cQvHzdQGHJehNX6lnQcrhnjH8Amj0ENRLdYT2QM+1T2AX+a4kuTAgJ8p
Fc4rf+7dwicq8FFKiiXhoFMxpKyUew0+bxSDFHHCaQaefWQL/MipGYS/WXrWRzThPIncNUTT
i4pTi51ikMvhfDaf6n5YMCk/V4oBVI7FdWJ4lBG+kClQhJ4TGc9GD6M2we1FXIKJ+USZchlb
+xNzglrJ9B6eiwMPJnqtKvnOiQRkM1ArmgLPPAtyO1qwXtF4/vPLt+e/3FVttJSpBWNGHi30
oFa39FS/puho0YNsotdgOE2MlFYqoDnuI8wAQA+ST6DFPKpS21fNKQlG/dU9T/328Pz868Pn
f939cvf8+PvD57/QZ+1OsiI270HrwU6i7ymQRCni4Ts1borTqAF/kKy0SHBcmo0o3pgyZlqu
1hZtuP41qeqm/2o2QxLDpBa4G4VAv/Oa19aKMmX8oxnay0RBagf1DxJpFy1q3GGRJUJO+GlW
meyUbdeIXbuIB5elbB+XSjcINzaCTHgO6kDCtMGJlNaWXBEqeOyPLDE/Auf1EN2iMO30JFXH
ljApImOFOOQ2UUVgkULXiYN3NssiBzJpO9+hyEPQvUVVboDHzHHJnP5Q4UTwloOtYV5a6SHw
HBIYWiIw3izCp7jMLQIy+kxqY5prW4CwOyiKE3Z1v2qNvrHDt1DvwuYTd7NLmGUlKElye+CV
m6kmqn9216bM80pp1QriwnVIgV+Zwgd3zNbaHlUfS1jkIZSA1afKJX5PaZ8t7OefKpSpdQgE
iwZxR3hu0wp13WKR4OsaRrKdWdvosUaf76eoTXjZB0vrkBIULYZ24K4Wzkujvr6L4/jOW2yX
d//YPb0+nuV//xzfNO14GYMy/1CXjtLk1pm1J8vazBFyZrZnoObiat4mTFbKWElBqRuEg1Yf
hDCMbY0zDNVxbpzns9g1SIANzl4Z4PHI7Gqo9L52NKlaLL5XoR5d8+yd6TrIdbNQxSwdU5Q3
aMOnHcFQ5nUWlXnAM5JDRVyiUPBQfIphGLr25wMPqCgFLFEB702rAdvcGAgVs11ZWQzg+c7E
HZvR3k502NtYGdcRJjbtTT8psmAR294B5F8id3TJW1oXOM8aA7YdorIPVCG9cxX4NjGVxyoz
srpuz/BSUGfNSQ2pMheiQcP2nqyn7/YF25oYWWIZpUJ+p9Iw4Vbmqan9rMVK15OKVvt8ent/
ffr1B9ypC60hyIw4RpZo1qlv/s0k/YiHkHOZ6QUzjbjlvVg1IJaDsGwWIfGWavCwiBUjTUeE
TUoX+M2JyZSwUO3W+M2vxVnFxKmyfYOpiIsaM5OUfSIysbjw85vJIpeRrCKOLSZfebuf4PsQ
AeFNtlrKI5jdgcGjF6Pc0oUPlrhD6SBMYUKjMWuyi+lxI7NcMPJ9nhk+k/RvrUJhFSvzIO41
r1JyTN3nUjMhDtjtDBlhY2awAU9GhLey2E68xtSSTJ5DnAh71rSkpvKQpD24MDqyo1lywUAF
VwnE+0jHckINg1rYsQ0yay+FWfdxD+MSIf6EZzIpz/j4uA8vjRS7CQ2PjBB8jLyj24sKBEzB
PFkbLLEUnmPDF3MQz/XqPQwxRSHVflpY/uNmIv+xfNm1VLXxEi75NIc4Xg/sjKsYm1X/BBG8
p5u3z/N9Yj1M7gntXiPRoWbnGDvLGzzcn68uF3uT7SAV2XrQwPZmxnk7VjcRFjiL3d+ysy3X
yfvA+tGvHwPpZGyoXArT9i/TsyT8HGWgiJbvEU3iBYgiNtEtShJGfEuzTfDLyZxZmUjc+h1a
YtMu9Wb4WOB7fAZ8TG9+YuRWFWGSHCzLrXhYaXJZNjG+KUpsRWtQSVScJ+Ed/sZh1oiHJe2D
0+TK3blBMoo4xe/dTMZrifPsYpZk+M5lJM9Y9XdKkX+CtvJNiUP+WeZZfvsrZ7eLPPHotlyS
H/GMpLCY31yEWwf4cbbnWUy5O+p440zA+YaQN++TfM9vFghnNnAFc4vPuTpHGGKQFS3lCVZh
C64vj7eh8bQOv6s8HxGawhYKOrI8aMRNdebuPeKI0ffmW5JBRa8tL2Csiwpqpe+tt0TPllK4
E+zmpl+CJx3ag03LJVgqatonbc8Wx7gGp8kDIet28r+bY13whHD2YTHdbKJIxc0RJk9scprG
t0VPUakl5iZbfbvm1ywvqJcgg6+KDzXxjmBy3eSgHlkMljP/hJ8IDB6tG2kOulZbkl04uIfD
u7rlkUf2iuTZRRHeCLnuF3TzROA6dOn2H3nMbV1/2GffNuKSceUPNLj/yzhVOc3Dq4BRfgqA
QY408MTA8ZVKs5woDTYFXwo0vEZxuFpRV8VZUgwz+ziCV7Y9XOhrQGtqc34nf3YaOsg7D4vg
wv2AxzeV52Aaaw/ANIM2wglIBtnhm8vlMoX7mym8PexOZrD0fY9kCLk8IdItaI86JB7Jc+NU
+VHhL/z5fBKvQt+jK6hyWPrT+HpzA9+6eDff+CVWH9jSQg2LpBZkjloF9XJmV5JFnkWlGOHN
PC8kCk7Ao4xdbCu9kpl2uDfb0zxKlCTK7CXIUck9UNEfohcrSY5MuaZhdAuyiyzhI/O8iSHN
Kn+2oOF7rAadKKAlm3b290laKYDMErb/rleQXGHrdDtMijTejNDggXs4uSbzkC6xVVAi8Xan
2Mu1a17C/6e+9VH42+2K0thIiPNCUeB04SRQC+Xh5e3957enL4/K0VSnSAtcj49fHr9AREmF
dD7o2JeH7++Pr+NHGsnUOrFTjyHD6RCAkFWhTTnKE7t5EQ20AoKP1E7Sskp8b2XpAgxkXEcG
cClbbfwLFrUZUPmfdeXdVR5WdW9zoYBt4218NkbDKFTX0CjSxKbVnwlkYeo2S13cqNuMjoNs
YZdLGnDsdq//Hul2PfOwckS53RCu4gwWHxU+egY5gzarC9JjgGxRZJ+s5zOkFzNYVv3ZGIAl
OxiT01Bs/AXCX0IEEa2Oi/a7qANhX5kByhLepKs1oXelOLL5hlC9AziIkyPH5WKVukzl1K/x
szcwxIXIs7nv+yTHMZx726nP8YnVZS2wjx1e/PnCm8EJePKLH1mSEpJ0x3IvV+nzGfXJ2LHI
fXTlXTy7+3lxGE15weOyZE02/hynZH1jcIaH7fwGC7sPPQ+7wD7D05+xkXS+4pozGuwB2If3
odQ9Y0epPyeLMR5C7IP5YUKtRqIr/A5NIaS2l0S3ZLrtEcJE4cIgK5OtR9jJyaTrI36JxcrV
ao5rU565nOeE/pjMkbojPIfZYo0u3HZnpurK1sgxJe7ZWLVZh6vZyLQGyRV/YMKbJ+ljbTBD
eg9TQR22ANw5IFIb9WBhtZGXmDdXM013lT1ItMVZfgT8KwBGzSB+TpbbNa4nLLHFdkliZ77D
7uLdapaCWzWF9ZrhkovcWlPCQLVYLVs3yjhccpGiYTLM6rTit1kbeRyNy4q4YOpApdAFrlpw
IQ46gtALTc+Jjz30WLWCuDHOUpPKwTzzajxPif05m8KIi2zA5lMYnedsQafzVpj+gdnCkrm2
XmU1v6ACh5VsfM2pxEFCxVdjG+xUUSWw8kXWjqnYt3PiYbVFibf4FiXebgHdzBdsEiU8z+hG
+PFkuROo3KAmyoX24h8Z0MvlQoFnW1rBPpYy+huSyOPz1ru1vAvLRV94JrTCzSSVVcw58eYr
3PIdoAs+KyXkk5D7EITU4dM1YtbVG8ghnyJZe7wqAHleeb6RrbqLirPMctN4X2Wwhyh/JNiF
QO9U9Sw4eszQUvKZuoRW4dvdpVxbfX97+PX58e78BN5G/zH2Qf7Pu/cXyf149/5Hx4VczeEC
JHjb0EpzhCuOFhy74kgvElpY75D1R16JukHfcFpX+7bik8pbd9dAMr1vDtuciAiXGo77jaYI
7GBRrdny9x/vpGUtz4raDCILPx3/s5q228lNIk2smDkaAfUxyzm6JgvlNvmYWmpyCklZVfJL
i6g61m+Pr88P377Y7rntRHktYstPj00Hn6r1hURFWMbyk14+eLP5cprn+mGzNty9aKaP+RUP
PqDh+KR7wEkVnxyh2/gilKNUnfIYX4OcmfEqO4o8AhSrle+bpTkY/gw2MBVFEgvUIGHgqY6B
ZW7dI/fy5Ez4wbB4NtgqanDMvfUMbUPUhp8o1z5mdtTzJcej6TKop+8LW1vfAtRojXGltJ6x
Ctl66eGWYyaTv/TwA3TPpIf6ZCtSfzFfoPUFaLGYSizXu81itUVTpyEuUA4MRSm3hKnss/hc
meqZPQAxT2CPEmjJyBPniKXKz+zMrkjeMunR9mc0dHk6b6q8Dg+SMpX7pbJGhjHNjdcr+CkX
DUM9ryc1LDFDfwz04BphZHh5l/8WBQaKa8YKuMedBBuRWp6LB5bWCBItl+/iIM+PGAbO9Y7K
OQuGxgls82asrDFGV0nEcPSzYxobJasvxLHHz4Fpl4cgWOM1OKXUx8Lr1LvCs6hqmVOVcZEg
TFfbzdIlh1dWMJcIvWF7PLTpCvuLwNDayuGonfw5fccqfsGUjjQKY8x0vNt2Seh5s8IMtazp
JyEFacbGhcAaSJYxjEakwQOob0jHGyTEjSaUsRSLilGMqwW0DPCx9C48wQUOTPAjQsqXuFOc
w8PrF+VClP+S37leKWIrnA/ip9HhUD8b7s+Wc5co/287cNTksPLn4ca0rNN0KSFZC1VLDbm1
LGlqwgOgOgVawXQ0qVXh1lkMDzI6azFPnSCFDodsPnDRUmwvmIwy19uroO60SV+Te5bGYx3m
VkUf+3KDNx1EstVy/x8Prw+f4e1o5FytqozH/pMZQ6K1mZALZyYS9QYpTM6OAaM1IoljY/U/
nFHugdwEXJve9HCd8cvWb4rqap3q9L2fIiPfJFHhy8G9q4q33nmAeHx9eng2DkLGZ2JJE7My
uYamimcL+PPVzHKGM5CbKJa7UMiqOFK2uLIV2BunkcDx+GlC3nq1mrHmxCTJ8UKDcO/gAu+I
VnbcyVaVLYc/ZtVMN+UmEF9Mo1kTycqmZmUljAiSJlzWGQQcb3mWeN5wwIwjvOSUZRAhrDQ1
e61OyGtkZelQ8MiUEVggN1ocgdZKQcxbh6vVEmc51MEaR5R739brLzFgKgjT4zgixPpOEJ8p
Ott6OhZEFVtWc98nrCUMNinf3Rp3Ke8nVPby7WegSVY1s9S7NeL6q00upfIFdQ9usUzWE8ZS
wis0+LjmsI35DCI5Lz6K1F23JVWEYUZoIfQc3pqLDXFf1TLJGRDEZcQSwsmL5mq3p48VA7tC
eisaWG+x8d1lfVljp82WAfwgQiZI0xka1aMFy2I+GvySZi0GboY7kcjBdavKiotn4MrhFqso
XDf2ncMoe5V36pmGVZnoo7A7CDLt/iuybheU8mplLzHhNUxYZB/ywusneFHB1VzT/ML0s1BC
SJkShwjWlWlBDE7E1N38iGLGke1ozd76jhyN7Jg1h8gMqw6x18ybtvxTnnLLwgc8OkvRAG2W
8lPeCNxc5nDqfLkb27+kWQ7RgQABjVzCcPHofiR18ViPdwPljRk+rays7TxcEuAJKqtMg+2e
1iivZB9618iKat8zJkW3biDNLArriq+15RytM7xIuZSbsygxNVQUNYL/YogC7rCrAByR9sxm
vBcCAr5BtUd27OZN5aqUUvUj385yJqBg0yxdEwTfOaQzxGGO8r1DVsF38p3BLcW33sB4eC/s
iLD+gYybxmjglZ5NP5uOMwUdUYy8j6HLEODEGU62p1dUmS7M4VAMqpbGxMqza2F0U3pmZgjb
IvQ3i/Wf3a1aN1+k2GlT5IcAl+N25Isj3hkqOs2QVB5iuilkGDpfND0+iQ/z1dooxh72hyJ2
fjWpFbSgJxkRmTqIZfvwEINbAvh2xrwJ5X9FinVvZQZ7UnxcjFwnKOqIAL4PzaFjkJuwXGE7
WMcClwlaD2GUqbqDkJQsNq/qTDSrT3nlgvIL2gQkezxbKzIbEMIysAmnCpz4lfnlivRBtVh8
KkxnvS7SXj6Mu6nD8atrOavC1l1Fn/TCk+RKOWMdHxKHAak/dVlDdLWith4VTSzI80oHNRlf
8s9D5LXFvCvSwZTk98nl0WpvhQ8Aqjplyy+Q22QV4KlyaFIYt19gJDGtL93zSvrj+f3p+/Pj
n7KtUK/wj6fvmPzaJhtdEo0YkipcLmb4BXnHU4Rsu1rij5E2z5+TPLJvJvE0uYSF6yas80g7
1XCzs9oANnYQseEGz+pYluzzYAh4B/n2txQQaWTo2Db+0Z3MRNL/eHl7vxECSWfPPcprXo+v
CU/mHU54pVN4Gm1W9KeTsO/osbl4kxbYBZFaiPyZZ/cWF+b9q6aklU0Bn2CWJbdatZSDUvw2
SeHKOk+OVVxfQH08LlarLd2VEl8T/gtbeLvGjzwAU1ZALVaU4xBTyg3Y6F5GlRWmg6NpWDr+
ent//Hr3K0Su0fx3//gqB9DzX3ePX399/AL60r+0XD/L4+lnObL/6Q6lUI5d6sYXcCnb832m
HF3bO5gDYl5XHRaROAEKiZxMFzoOFrCrlLR5Yk/AeD+fVW7BcRqf6JExuXzl6t2KhOWKNO1O
Tg+MlPLaAbDWux/rMvwp95pv8sgmeX7RS8JDq+FOLAURz+EloSYcpqv66oA7JF7mQV7t6k+f
mlzYsVAttorlQgradJMrnl1drUZV3fz9D724tk0yRqzbHOhbJ+DncNoN/5zP4CYrQBdycpG1
5pCO7Wh/KndcOgMYvLjRcS16Fljzb7CQPt8NQcBIt0AvHgpLswgEQ8ovHWApA6NY44wINCWE
63tgudikD28wwAY/zYbCgVWOvmzBvw3AF+26W1sqE/VpjfqMswUQ6wrOZolt+QIi74RPEd3y
bmkgWcASCC5RBGHUCDzE+gdQkm5mTZIUbs1yPd7JLIsLo9S6AO4sgUgGEXq+3Hpm+BKmOPiO
E+NWfeQLJ4ZPU+VFmPDdDm693HZdSMtvhY6WLQv+dM3u06LZ3zudPQw1Q9jCLkeh3vV4WYSk
XbCvdriabxaFGnda8cfKa3ApR8UeUd2RxOv5hbiLhbzJ9UEUhFOCA3rlVBTWPZn8OZ66Wh4s
xN3n5ycdQgMJSyoTyg8IDiGP6lSKl9XxqBcg47Q+IEMwOSxvd1b0VfsdfJs+vL+8jgXZqpAV
f/n8r/G5RkKNt/L9pjuBmcp72uD2DtS7srgC97lgsaaO3KJiaQEuMw0tvocvX55At09ulKq0
t/9FldMOcRw7nuxYazbKo8qfFwvCN/OIlzCNchhP6RndAcYd19eZZ3CZN6zgkpCaWmzAIP8a
CF3cxgEw7ltgG2qzxEaNRtQ9kxkyryWnYTFfiBmu0NQxiYu3mmH6TB3DWIjrkPAQl+X1xOMz
VnpylWu5G1XW4XF85/RFlvmlMk/PfYksy/IMvHQiWBwxiJd9HENyVzrFJZrjPk55xvEceRjj
QBKfuQjqcj+GRJ2VXMSdms6oVyq+j0vIFekVmMHWA1lLaHZSKlAOTxOeymPqypubHE6Qhy4R
L+9hyxqPJ2L7VFmJq9gJOy/DnbG+enj8+vL6193Xh+/f5YlFZTY6/+hqpVFhLVaKGp1ZgVnS
KLB9rrVT9BNkSohXnJzwlKfANPDXYoONdAWfLv5qNSp7Ygft2tjs3FK7qwq6o/TqK9eNn1sU
dCGcrrQL2m086hVUN72ybRRslAoe04ELj3BarxgQJ+MOg/DW4dLHl8qpVvaHY0V9/PO73FKw
1rcKshMfF9QmiQfagYFwuqfVXODiajHJsPNXhHd7xVAVPJz7rs2acWZwGqln0y4aN97MVUdc
+GB4mEWS9GG5b/XjxFWQYggq3OxZ96FcEnNjf267ZUzhDYTjbrz1GIk1NF+OploZhYtR7AQj
RjjWZJA0bzRZvctvp4a3HjsTnZKGi4VPmAfpdnGRE9Gd9CpSMm/phirsHn3HTdAK9PJkjjSt
TYWgbqVzcIqLfMqzcZ139uDBrztdej//+6k9jA9Se5+r5NWnU6UCnaNGOD1LJObL7cwqyEB8
S5HNxLwz9ro0cLia4AMi9hztX6RRZmPF88N/m8pkMkN1gGjAIj+1GqDpwgrD25OhWbMVBfgk
AOZoERx6hk3X4vAWVNI1AcyJFP5s5fTckGaB2kdZHB5R3GJB57poQlQbw+byqQxwudTk2Pgz
vFobn6ivH8+WFOJtzGXWHiCGJAevyA07ERalCqV8kmlU1EWRWJ5ITDp5P2QxjXzKFuCsBzhw
hQcIU0/D8NwE7pFgn52tMQuCgMGdz1X1rW3lYSLEImmx4AutxYK9RXQMIrC1V9qaSzKuwNJG
cnBwJ9Pgfg7ulrBmtZAb45LgOkT3WCZyi/E2syU2yxyWOZmciivU9YBk8rdEPNyOJyn8zRyX
EzsW8qp9KEf16HQ51WJNGFB2LLLHlt4Km+AWx3aGfW2A5qvphgDPhnh1M3hW/hYftP3ISoPF
Ei+q+z57Vu9jeEKdb4nn0S6zstouV5gNlOOiVf1sTtxSytbE9ob7gLjjyXSIPkRNuA1VHPCq
3tdlbSrBOZC1nPdotFl4mB28wbD0lki2QPcxeurN5h4FrChgTQFbAlh4eHtSz9tgRt0Gx1Zu
snjiSvbGjaDQkscJf4RyoD0ggfWcADYzClihdRUL1GpvwMPNeo730YU3O5Z1YQQmMjn64LN8
XK+jN8OBHUu91UHvR0hzlDFjGiKIcmeI0Ys4jhB6dSnQtindJKjbRKsisZ4jZUHUbmzgRuCB
TaTpGOGrozx4BUg3yDP9bLXDAX++22PIarFZCQSQp/gU6YJdJaXjumJWGJkO3CcrzxdIlSUw
n6GA3PwZ1qMSIN4+WoYDP6w9VM7s+ylIWYz1X5AW8QXr1xU2GODtDx92cEcypn4Ml3OsRXJ0
lt58PlVjFZRrH2Op9WaA7z42z4YMn+3ykW9iJh/q4cngkJsuMnoBmHvoEqKgOSaSWRxLOjGh
yW1yIFUCocfDFkgA1rM1skcoxEO2AgWsfayGAG3x7d1gWUj5a3p8ayZC98RgWq9RC12LY4E3
Yb1eItuCAlboTqWgv9U4QgbqmcJiMZvjok3HU4Vr1FXOsEuFF2QWJ+l6gVGxjU5ScV5kLEgq
MtklFZFGktRHS/PR0ny0NGxpSdItmu8W+YySiopekr6aL6Y6VnEssUmtAKS2WgMYqRoAyznS
kqwK9Y0Ih4jGCB5Wcn4h3QXABvs+EpDHRaQjANjOEFkyK5RTXKzWO3+1tTb6Ih0pbziJxKFC
Y6AaOC4XSWCB6zcaHOHUHG+V2BAZIo3lEoJ0f5yGcIGIAnOPANbn+QwZFeBacblJJxBseGos
WGyR2knRY7WWh1/tSYvAsVGlgMUa7eWqEpvVZC+m6XqNC71R6M39yLddOYyYxMafo0cTCWww
wVx2qY+PCZ6x+Qz30WGykNZWPctifnOV3UytBdUhDVfIxK7SwpuhYo5C8FsDi2WqLyXDEhtq
QMc7TCIrD3OE0TGcOAM9bVyQk+DaXzMEqMAlEkYH/5Vj+tlfbDYLRM4GwPcQeRqALQnMKQCZ
oYqOjl+NwOGLePc3GJONv6oQ0V5D6wxvm5yNB+TcoZFYQRParf2EAHV36hBXHWeeaR+vdg9m
PPa3BDnTWcWF7U6jw+I0LvdxBubSre2ODvLZpOLDzGV2rlA6MsTQBDcF4AO+QMpobUiafX4C
981Fc+bCCiGEMe4YL7XFLH7diiQBe/lGhUdFvmiXwM57XFm3kggM+nrqfzg8VMNykqbUXVo+
pH5RfNqV8b3xFUdthdBSysZ+dC3Fv70/PoMm0OtXzIhdu01XHzhMmDnfL/66KY5we50WfdFf
7XQiD5uokotnLnauzrPFMKQfhrbkWCxnl8m6AcO4cDX2u6aXsV0tmWRtJOmfFCbLdLojPGA5
4F3ZJe3t3v5yKZ1l8fDO0gFZfmbXvMZeK3oebf6nbGOaOIPJFCFFgAshpQMmcxtmZw93qiWq
988P75//+PLy+13x+vj+9PXx5cf73f5FNubbi9n9feJCnul1zjCIkcJtBrkMGV+EYsryvLid
VcGsGH8YmznN20zHHU3wq+xHU6bvH8qnmMh3lWnnOGwiJmAUin3fiEnWyNLRaT3Mdxmgq9sn
zkt4NJtkanWBp5mi8zQOB9jF5UZ1WHhfQyRe2RIcj06t+yOSI+EpWOhMMmy8mUcyxEHYhAt/
STKouz6frqSQ8tBsJsU7/PFFyPx3vCrC+XRfxHWZTzaVBxtZDI2mjFBkOLOd3DichF2y9WI2
i0WgBtNg6xHDoUCPr44k2+cwAaWPC1TYlqBwYefNd24e/sYdtYdiultECD5AyWarY6+3IPHs
RH6Y9Uy3kfpqUqKiy5X4Zr6kcSkA02NShZ9odbcmmRabYKO7DJdV7lPYZykYBHEK6yTJKQZ/
s5nEt1N4ysLDp6nua+JCnjsX6Ne39tM05u6gyfgWAoqQH52Hm5nn03WTux2bj5aEbh2VqC5P
i0CC/fzrw9vjl2FlDx9ev1gKNkU4vRZyUPY/42p4TiU6fbC/USa/UazM2XEX36kn3cxc8uCZ
d98PonbkQvDAjtkpUFfrQZgylB2AUf2U6cJvP759BsXzcYynrk93kSMzKsqgcmdQ4SmNUJ0r
Uh5qHUUiwINKz6q5v5lNhISUTMqP3Yy4J1AM0Xa18dIz5rhUlXIp5rOL3R5Nc42wAUnB0JkI
EANtihhMEbIyAK/m5LuEwUI9cfQs+EtJBxNvSz2M31+0sEf4NlVwktFZp6G3AKWOqfZ1PFQD
DxVY9Ake4lUEWCYdWTsbJej1675m5RG1hWxZkyIE/efhywPBttTtj0Pq24aHKgKrKHusaCZw
pkTRtbo5BWpzULsB92JNaN4C/JFln5owzSNC7wR4jvIAONFFvl+kPqH9O+D0EFP4mnDepOfJ
xVuuNvhLSsuw2ay39DhUDD4RDaJl8LezyRL87Zxug8KJt54Bx1WoFV6tF1PJ42w394IUH+Xx
J2X5j9vHQfITL+JS+T8gWeRJhYgUIMEi3K3kNKe7D9UeNvFqNZtKHq6qlU/jIg6nF27Bl5v1
5QZPuiLUjBV6vPpykNHLERmqkwWX1ezGxiJP3yER5QLgijcsXSxWl6YS8uRGL9ZJsdhOjGJQ
MCP09NtiknTiK7MkJYJmVIVYe7MV/oEBlF2LLwAaJBT3VaUUg487UBgYiCfSrlmy4RM7pcrC
J1wP9AxbogkGw/RW2jNNbVmSSS6WC3wkVudkOVtMDCbJsJ4tb4w2iJKwWUzzJOliNTEjb/ie
Uyzq5EIIQiN7HiUJlfxTnrHJPux4prrwnPrLif1GwguPlgkMlhuFLFazW7lst0sUVjc0okC+
gelJhZKQu54s4z3c6ual5TCnI06EoBp4dCTNU55UbE/EEOl5wdNVrVweZqJOCSXTgR3ustVV
9t9NIDf6PTULBy4WVr5PRC8yuKLVgthPDSYlet9gkjIqFerKYcLnrNHXLJMnF0KYHthIHd+B
hYtkuyBEJotrPd94+AliYINNY3Or7ooJ3/1MJn9DyJI2080+SKpwQcVVsLnWG3xrGLhAPFwR
G4jF5a+Xt0pUXOtbo0FJc4SsYHAVvr+6WaAU/G4OrGJXf4opD6gG28n3Zzcrr7iocEs2F7Hp
Glxn3B504BDJfuUGwUbY5K648qj4jRbber642UQtMhCx7Vw2QjZx2Ly/VbfVfInq1Lfyq7kh
llMiLUQP6y5kR5cr+9eH7388fX4buw1ge+NFRf6Am3OHULmENBoR1kub5NiJA0k7i7JpgguH
AL4JHNrJTRXvdjyMLWdt6jy7r4yr6NOeSckgGBGUW8N9UYsP3tqExJlXYB+fG97HItOgTP5o
Ug5OUQS3WJpIdkF96V3AmfbbgCr1fxEnO9dLhsF0TEXrAM0uEOi7oIPQnGXpqQDH/UWe5Pur
HF47zHIGEuwC8F3av/vardAgRD5iSZKHH+QUtIvTDEnMlPMIoQzriILAIV8jR2TUQLg88B8z
6jE5wG1aVTmdLQngQFweMvZxU+R5YvODA0u0zyAdRt/HaSMOstJDd5rZ9T57QH57/Pb55cvj
693L690fj8/f5V/g3cu4iIQk2u/fZmZa9nV0wRNvbdnMdogKnS2Fgy1hHT7ic2/DDANlqpr6
wbxMDd/7w5u2QbZLLVkUE0dOgOU0pzy9AZzl9SlmNTEi+NZbOb0kKY1yMAd+KoP4w08/jeCQ
FVVdxk1clrnzvTSepyoyC8kAAmdRld2n/fL69ZcnSb+LHn/98fvvT99+N6+/+1RnlR39dYCH
lqRtliZNCdmt5xPnZqeeXnWCPPgYhxV+qh6n0c5TI/a36rKv8aPJkC2yTI25kvysnRlrv8zK
d8aN+uryT0HCsmMTnxgRM9Hh75z6Fyk6BZDPaX/m4vXlt6fnx7v9jyfw1pd/f3/6+vT2AAco
Zyqrwag6tFOIABFkhg4orQsAjipFLQpwHT1fjTkPMSurIGaV9ox8YgmwjfnkAI7TourLXS/H
PMoVb3xfg1FoUIvrmfHqg4/VT8h9wGzCiEH5/EnAYXNUl3ob8JAeneo5a9ncx6m7yp3krkUs
A6f0vN9d7IVA0+T2Erpb0j5llsVIS1vPZiO+xYhYR4mdkpkBwtVuvmf7uZt/yMuyFs293CVt
4P7i5Bfk4UE4TdE+ueUyadMLlilxSI3O6Ont+/PDX3fFw7fH5zd3AVKscikWRQDOepQ7MSIk
T/vNnPysKpY82jt7ry6gR6wq8S72313w+vTl98dR7VjGIArSRf5x2YyCZzoVGudmZxZXGTvx
E7kQ7FNvXi+IFzrwDgdMh4u/WG3wW+qOhyd8Oyeu4k2eBWEMavIsiWNjx5Py2dxf3BNP9y1T
GResoCy/Wx5RbagjqsGyWaww92SAWt7uW4IZZtOes0F+kQJ6jL1UKYlOBcFxJdAq2tFCTOnN
MR1k1ZG+N3NrIGcjmZU8J5AY5QNWpWMn5w5rNBHyEpyxqYWwAbWkY6/ytnt9+Pp49+uP334D
l41uECMplYcpxEk0ppekZXnFd1eTZPzdysJKMrZSRZGhsCZ/K8W9UyzYWMUGypX/7XiSlFJM
GAFhXlxlGWwE8FR2RZBwO4mQgjyaFwBoXgCYefUdDrWSx1O+zxo5wDga8LUrMTcVe6ED4p1c
7eKoMYNlSHqaR3ErrtsJKp6oClQ6gtP4g/3RuSpFHDRBj6hlHh04Ei1S/OgOCa9yXZ5T1xOS
wYlnYkHyVADxliicy4McCcpDqofdnUuohqFiDSBFMPsr3nHnW2VL4hIJzpvEXJRQH3eSYhBe
pF7YKVzfA1BoyU8kxjeoQwZAfFNzvSU0+2pn9YEiWv7fJTGJ/dnKtDGDb8xKOSUgtFtme/CE
TOCqgarh2NGO1Tb6fAWDo7o6C6aDkh2OX1oBMlr+LJRYVGH40B8oi3M5+Tk5xo/XEj/uSGxB
bRdQZJ5HeU6OyFPlr4nbOVgNpDQT0/OKlXhMRDXTyUzlKEgdR7smrIKCkH2birCmGytlU3KQ
B1LwuVTLFb3CtI8uyFRQO3xghdO2J30aywGa5SlZcXC6N0c9isGyoOIPOhNC8LQg3vxUR2w8
Zy1tpUR0e1WrdPDw+V/PT7//8X73n3dJGI0DZ/cFSLQJEyZEG4QGqTa4akpULEmT0VJH6zla
x4VoWwYu6gZ74FAOEW7w3Id52pypOMgDn2AHRmh8GQVGhe8Td9wO1+YWV5Iu1ovZrRIVF/5S
YTAV/orQADA6nXrbMvI5reazTYJrqwxsQbT2CIUcoxPK8BJm+EnqxsAzrovBBspQQlSSMy6r
HKKUdwJK+PLt7UUeqr+0ByQtmowv5eE+OuzjOvWNkGT5lzYYkOfBPEmgWciYT6Mh/XAOrdP0
Og4XZZHlv0mdZuKDP8PxMj9DLKB+TShZGgf1DjTNRzkjYBeSsCilBFlep3nLvOquqYcVBc2z
lR0rdozh/hr9tjf63lhTctfPfJvD6BFlSCPy2na3qUPe8mj8bQ/cDDHFo8FPVlXG2b4yojFL
FILLDvFJR2kdT6/i++NnCEgHBSNiL6RgS7A2QOeIgsOwVvcNExxljU9phZIrX49y/NircEGI
5Aqs5UkE3zZVN8bJkePClYbhYmyHh19QDHwfwO5Jc2jvyRMwl78m8LwUbKLxYV7vGQ2nLGRJ
MpG9egGk4WLuuRuxCcu+rTgooASz1RLfIhSfjoRO4nLA7nPlUJlkieFJi+5lCNw9AcZy25yA
8Z1EYZ+ciPUWuo/TgBO6jgrfEW6MFZjkJc8nhu4hT6oYF0FV+mrtL+gvL+s9PSWPV7q36xDu
6whVZ4mfWSInBgmDr3CRZxMZ7K/lyIjUYuAhddmv0IrGPrKAkHwArc48O0yMlWOcCS4X1Imq
JeHIw6KJxrYzN0XK8hM9xqCrJ5dXdXJSsdwnWBIQ0Sfw604KsnQZcidUk5DOgUvZAYQImgPO
DuXEdIEI5nx6UGYVEbpBYSXH36sAzcupyVKwDMxs5ZSjZ2sRZ7KTifOgZqgYuLunGeRaDhIg
ictVCj4TD+lZr4QcuogSjmITM6PMw5DRTZB7yVQ3CZaKOqM7WUxtVco7W+IEW7U5qpjRC6JE
4wSipRK3RIqnzopkYs0sqdAfsObAWwgTE9udPqk201NNhcH9mF8n6yF3RXrCy6VTxMQRTuEH
uQLR/VQdIISh9odMr+AgBDYFccujOOa7TzFx66LX+KlN88x5mk+swhcuJxOJQsGT/ffpGkmR
cWI50g4oIM45LfolBV0ABM0YOWHpfHUjAnHvrBsVzyUwFtEL87q+5dCaPlZmwYssv4+jgwjg
kPQY4MMFMGS4Gu7DJ4pw2YYTyn+00RGxtqqoi63HUjPIl8nbAVauRpXzQ8gbuIeXBzF962/3
1Oj9Aoit3yGLlsABTm4L5mkP6HWiAljh319nlmWUjRXg8sB/aA5MNIfQ/orDNwY2sIOyKgSR
S2pQCMjic3tr1D8NpU9vnx+fnx++Pb78eFO9/vIdnsbf7IHUuQ2AGwEunE6IrhkDs66UZ7m6
MLBalVf42t1izfkgl/+EE5oaHVeQqHsPUbnTy+54oXoe3N2CBagVgFz1xKDpoL25fJj/hzVq
s+4AqsYfxNicDnamPtt6c5nN4KMQ9brAyIJv9tVOqOhRsHesl1wOx65toCNBSQyeeCjVpZbw
KCf7samcL6nQqoKBIuQhMUJQpDaKvhP4idasynQcFfWpL/Xcmx0KtzctJi4Kz1tfJnl2ctDI
nCZ5wP/gcu5NfLkc7cO8b864L/KpppqLATEmROJ7oxpZHKXP1uvVdjPJBDVQjtdTRzDrB3fr
3SN8fnhDYyyq6UKEqlKrjI75TuLniE5bpWO3I5ncuf/3neqCKi/hsefL43e5ZL/dvXy7E6Hg
d7/+eL8LkqOKWi+iu68Pf3XBxB6e317ufn28+/b4+OXxy/+5g+hfZk6Hx+fvd7+9vN59fXl9
vHv69tuLvbq1fKNvocmkV3yTB250pBQ7DJSWoJacInUXxT5rVrEdw+UFk28n5URK9DH5uIjm
xHOLySb/JgRyk0tEUUm4lnPZCJsHk+1jnRbikN8uliWsjnCB2GTLs5g+t5mMR1amt7Nr74Ma
+UHcsKEId5zJTgzWc8K+W81w25ywn3j86wPo91kKreaiFIWUPbGC4chLHZckA8fMrszNKsoI
+VvlrtaOiHj3V3v9mTAnb0H8Yk6VfOAQepH+ErCsb+ynn77TQFqjVqlaiA3qK1l9MHl2M51n
DbT+yvkvBNNPgWgyxssQ/FDhYHlceGbwIQPT97ooFB4WphdVA1HS0SFmFYpGfM/hpjtO4rGw
0+VdyH3wgkPtmE99FI7TIt6jyK6KIKxojoInLkw/rQbCC3aPAzh/HO3pdnWg5UfArKPvzRdz
Clot8C7Zq6dyovZnnF7XKP0YX0XBMgiPMoXjWCLwVh3zgMvhGeJ9koaVPEMTrVYv5jiSi83G
9DjvYqDc20YAxWYL8PhLIv2lJj9hxk4p0QFFMl+YzmUNKK/42l/hQ/Y+ZDX+Ye9rlsBpDQVF
ERb+ZYVjbDeWDAZIdow8QVMCZL+cxGXJzryUE9V0b2GyXNMgT4iCKixIrDWRg7j8yMIjmvVF
rlg53vDzmej/vFAPliiUZlzuvWSykEh3gfuRJsUTnrk4BHJLx/tG1FbwBfOzVvhgr4to4+9m
mwWeTIl05lnPPgcTO02ccsIdTIvOcS1XJUtHdUU8N+p6nURMH5STeJ9XZAwlxTFxGujW+fC6
CQmHNZpNuX2kN+iIvoVUZy7YFchXL9UJ8GwayY1eHr1RJsXQpDuuAo/q0DV0n3F5lg9OhIaf
6hS6TypQiYtPPCjBgJFuc35mZcknOEgjE33yFXGlT2I7fgELoAnxB7Q6dmeS4SpTY+pMqpxP
6gNc5u4CAqd8+e985V1oqfYgeAh/LFaEO2aTabme4Wb/qsN5dmzkx43L6X6RXzYXzjNmPxeL
P/56e/r88HyXPPz1+IpNxiwvVDaXMCa07gHVwVWnbtxA5BzFXzRuIImaOMUwKYlg5pDVtYgN
bWj1s6nCwjIz6akhtsZrdAffxnRYr8l1KOz7B/m7CUP0qApQ6z3JKfoQLYRY4NFG2sop1x7+
xVwvq7++P/4cmmHaf4kezaDt4t9P75//wFTddKZpfWkKvlAtW7n2xcYn+H8tyK0he35/fP32
8P54l758QXWodX3A9DWp3OsSrCpEjuZ0LEGbR9vhuhMSINGa+cI1HtLrqRmASP5ogjYQukvq
blznq94AWECI05rZodohgTsd9e1vGv4iol8g0d+57YR8qMsQwER0CLldT0VqVKToUG5BualQ
NuCFm0yey/KD6giE2x3HRj5JtcP3L+A5B4LwAQX9w3dpM4GT7lIkFgYbyn2ORMGNpYhSwn+V
4qgDKoIwwLU40Glr2XK+lqMKm7+qcveHcNRdB3FP90QuDjxgjbMiWTxphd9ApHEK/tQxVT54
fIAb+uGLqvt6pctqXo8N1GakHmCyBCXslxnINYczbCjZXl1YqwEL2qjIVFcJGWH6q0DlGgj/
FAOOy4Advl5O4DrWMxbSSMFukFmdJzi+wvfcHicccrT4akXEdhhwfOPvcULubXGf8i7Wfsz4
BLGOOf5CMPQLoWHbM6wJN1eKIWKhN1+KmY9fRepM0Bi/ChrcDbndH0RzfzbR/Na5oVhSN6/6
XSpk4G9jgiEJV1uPsDbpx94Kj/+i8LxyauBMBXUF/uvz07d//cP7p9rRyn1w1ypu/4BQztgz
890/hvf/f44mUwASH77kKjxNLqSLyY6hJA4+CgczZRoFT7l+MNFn2u1b+06L9k31+vT775Zr
VvMd0V2uuudFMD42Lq0sTB5j4aKbQOXx50hk2htaE0l73W8CD4t6tJJ2GAsrfuK27Q3G165A
aM3bR+DhlfTp+/vDr8+Pb3fvuhOHgZQ9vv/2BILS3eeXb789/X73D+jr94fX3x/f/4l3tTqS
CbBhpJrHZJ8zAiyUr3yq9VlcRTF+UnByARVmzN7P7sw6MntJyzY84InsYMPDi+dd5TYl170k
HiuVc/n/TO6zmfG6ONDUuAcnuTSoSzWXK4MjvhStpWtzistAqO23ZgUmb45KjVOsmo2KAJvC
XwXbczPKh8HEoqj9kjfgRoM7a/M3ONPqEOIne4MpvOwDfGc0mPhyxvFjtVx8lgbnrYzysIyI
pySD66RNY4uTy9yyArkpL8ZVl6L8X8aupLlxXEn/FUedZiKqX1ubLR/qQJGUhCduJkhJrgtD
bauqFG1bDtkV3Z5fP5kAQWJJyD50u5T5YSWWBJALZxvyW7MiZzPPVxa8JqQ2NQclr7zovtYQ
4knyfH68LMiaAr3yVdS3ilsY6hgdw87ewM6MKiY8LGvNDlmwHMUcpFqYdiqoQCBd8YLpO9K0
zBCtYdLQuAQWrMUyprxDyPoKT1J2CkGVLl6g5egcxdI3tsDXV9pltiDGbbBwkzYZ2jQ2HU6v
J4VLvbmeOFg4fFw6tKFLi0cDl7odTW3cZOymvTadnXeVvLKR5XR45SafEFWcDIhiRjqtrODT
M23AIAED2l1NB1OXo84iGmkZwnHojiYqC7wvp7f7yy86AJhVvgzNVC3RStUNEIT4RiLysrVc
l8XGC4SLg3JKoYkuCAR5dN6NdJtelHlIkC1vXzq9qVksPG2R81fUulzT1wuog4c1JU5iKl0w
m02+x54n6R4U5989zgQ7yHbq83bZQiI+GHkEcB1y7XFq2kOufL4iWwiGjrnxef1rMSWfhKMP
8mE8gfnm8fNpYDwBYhVoCxCPU8oWIeJY+nwG6hifw3sDNPoM6DMYj1vsrqPHg8rnzLGFzG5H
Q/qqQiE4HOhvPFaiCjNPRwPPrUD3QWH8+Typ9pDJ1OPuUsvF495FQeJ0dDk8P4zLNUDOj5sS
XVye710ewXSZOpMaL8I+mNT4XTwO6Q3IhzNt5Dl3G5Dz3YUQj9dwA/LxwuBzCKrP+oHHE6vq
9Ztrz0VJPwDGH4+Rq8FHIw1Xl/H5ESBXqfP9C5NwOPhgWUjD4vqGCmdbygATjRANi850GMfP
7vnhM5tDxEdDn+tRo4afmA43pmqSDFPzuHv7cTw9WfWwkodpzu3NsR0TQ5/n3R4y8Tm41SCT
D8fn1RSDcqbMYzapIa89t489ZDj2POB1E79aDa6r4IPhM55WH7QeIaPzsxMhPjfBCsLTq+EH
jZrdjn1XdN0gKCbhB3MPh4l7f3Z8/iMs6o+G6ryCf1kbQGc6zffPr8cTPcoiDISzblXyu2x7
qisTSj9ncLR0PDnhMTLOFoYnJ6R1vs2XQZbFCTe54jlFKxv1VssA+n1Bn1/lfScD5pUWKhuj
RgJJP/IUybbxnZeF04glZtKki5R+KO4xRC2iDebduRY2qXotFND3nAH82FfLlodpKY8cS16L
NusBpEDEjoigUEgLHw/75zftewX8LgubamtnAj9JeRros3ruWmiIbObMCmW1EXSyXXWbE9lm
wWrSfB23PsDOwZSbTY9XMwlaxoFt9qQc7Jkt0gZhvT2nJ1KgxzPii9SGTiLLm5DNjRdYIBU4
Xxdxxkr6DQwxETrXdTEaItCf9pHA4zLM+cgkwsDRXBtojCyutk7FyppTFwrIS+ewCJpZLNda
1l1G6zlpPwQNaWZ3Bb6qpUEWLPTLa1weYBFja+O6G/3oLdBPpwnU3Zq1TiLTOKsdomGF1NMI
93stcx0V9CRUiWknzS13hq6edUusls6yonZaIDzZGp3Wk5UvPGUoRVcJ6iqaTVVomfOqYXmV
aHZZgmj9tPtN0AzFOknioa4LKmlrLjUC+hpJsrcPBRutpXlr3NZ+CGeNSQ/3p+Pr8cfbxfL9
ZX/6Y33x8/f+9Y1w/6FcKBm/24eRd4taVyzhDlZ9NM1s76PiRR23+2evxxl0HNUPhq4DNDLe
b+flXbPMqyIhr1sQLG4ahcdurh4++lYhQDggX1fhUtN2lKWEK+muqifOuYlBb89B1XKMXPFa
SfaO0KI2ePDfrOa6QyyNucjwhcMsZlEGWSUqKh2hP5n90bJRBEA20RF8I8ax6YATk8JMxmxV
W62MizV6+OhrSg5JHdjm4/0UnGlF6elh0YL5ahJlbPgyl/omdt3SMEbvBp6ilhi6plinaW22
F614mm2CrpLe7bLsD5han1TkuS7sLEXnNMUiEiHXYRfUpwExwvtmLMr4zqfVxivxNEM1DyOa
t0ZpmhWo2m+x0zapttDAj2aW5nPtmSthcSbeNiSwK3RZB5tYJPfc8aPAiPlVyzqLMBpbQl30
p9vUzrmIg1tvvlsW5KlTbNeguFxGxuaPpEYpYXuSmH0g1VEXqa5Tjq59miQoqrywiK5+tyQb
OSIlm5nEOI6L0MlTUg1gFEazQPfUHCdJw9MZy2miSP1OMXiaWgy7eEEsZ7WTcT6dGq6mkWrW
sqXAP2AVZUWlm4N0zEAX1TqqdFXSUuf1f1kFMrZdNUWv0A5H2y8XRdQUsDHGFYYj0rabQhrJ
GBT3ayFRb0cVDjAwtkFDp4ZlpeUkjf5h0Y5AxtXSLlm2KoLIVbrUGfJwNw9CfDn2+ZggUnwC
V2fCOgGfrYmhbmKF07d+OJhM2CZX8R30a6KFrZBTWjzK8WLYFJp1gWQJR0Vr4y2/PTdm1eXl
5bBZ26pOKlhyluQbSoAV7PWsyvREvC6h9+KRd41oAc2omdWVz4NODxJedJq8KOMF/TKnoLC/
qCw1zUXOnAUslAdyoXZGqX217k2cMa7ot7o/WKWaN6uacr5iSeKylnIY9qOipftWSfjCYVoY
skGiakMkgINXINwo9RXuu/GOV3F6fSVypQZdXsD2VBIp8ZpQeOKBzwyQrGKBx49HmmzPmVa3
Y0yfiZJUcmckCqcpQMnisHIHoopR2xSbEgbdmY2tSM9EM+ohrKDP4i2izlhlY1Sfp/L9W5dn
RbBoEOebmM41XJY5hptou4peWVJYdYMsP9ujYbISwXLyfFVrAZaEUAM8DPpQBHpUHKlqhbze
WeTT0/H5Inw83v8tnaX+czz9rd+i9WnwWvpm7NHh02CcTXw+7i3U5DMoj3qlBgqjML6+pC88
dRhHj9pNSDsi04CO79XOuyPZWZqwteEFy1D92zm7yUT8+PtERRyHUnkpHt0nI+1zJSs4xdhU
8bMRauc6cpZEHbKvMVWqNsgClsxyynCFQW/UsC5qIook9RodMubX/nl/OtxfCOZFsfu5F1pn
F1yzLVCeLT+AatNOlCT3X3p2KETr+STgvIJJVS9oi/N25RHlEjeF8sAr2N0b/v7p+LZ/OR3v
yYvlGH0Z4TGGHCZEYpnpy9PrTzK/IuXqooPO0UipreroERSFJfclEOr2P/z99W3/dJHDkP11
ePnfi1fUIP0Bn6C3H5AxnJ4ejz+BzI/mPbqK5USwZTrIcP/gTeZypePl03H3cH988qUj+dIP
xbb4c37a71/vdzBubo8nduvL5COoVJH8T7r1ZeDwBPP29+4RquatO8nXv1do2YvKO5PD4+H5
XyfP7iiVsGzbrMOaHBtU4s4z1adGQb+X4dlzXsa3XcQW+fNicQTg89F4G5GsZpGvW4v8Js+k
CqJxw6/BYJrhRoa2ffSNtI5FYY/DRvYhsov2+nGesEywtTtXVCsJq5q+S6TETCwf8RYFFaV1
G//7dg9bROvBhchRwkUEWE9E7BYx5wFstvRbcgvxOrVu+Z1UPxrf0LtjC0RvOyOPn5AWUlTZ
ZOBxqdFCymp6cz2iLzlbCE8nE89jYItQxoHUHYS4GzTUJD3tzyraoHINYpd1O6M+9EY7c8MP
Vx0RiT4dMOQlhanwq2j245bDbuU7O60wqjCFLam4Vd6K+HuG+Z5yrGbztK6CKbLyujgrY7SF
hR8VOvw29UHlc/zyDjbqv17FWtKvAu0jB4ZqNJzdh2mzwmjZaN6KTPqhaAlH123QDKdZKkxY
P0Zhfl6UHO6xY83Vdo7ZhO474EITBoV9fi6DIrEeMHuGcSSJYOmTCqO0IG+6rJG9uT+hbsPu
GdYIkCgPb8cT9TnPwVSlysD26jZ2igueH07Hw4O+DMEyXeYsIjtKwVURCZtl64jp/hmUryd8
+OmpWYQM43eYBEybWYiotNPeTPdyFgXb9qnLoOl3YWtBeLIIzcqsxtrQkhc/u/ksH/43F2+n
3T26+iGMYHnlP75WS3s8VEvb11hH95y1O/6CzC3lNVVGRZdB3DkpZ4puI/v088Jjml/F1Gs6
7IN5URhP2MwTgoYnLPUtM8ItWXus9xzCaq/nsjS3jdbVQ7W52cooTRhWUE51XWgJg3AZN5u8
jJSJhv7YGSQsCqoYtl50qcJJn83Ag5NCYPQFbF3DxnNSAd6oIWPlAmfc6K9PggDiDAa4Enlq
ivISC6sVx7B4YeKyeBzWpbRx0Qsf+1XokbkSdxtCS6CvyH9nkeGsAH97s4Gi05noV023O0aD
AeDMjS2xI4twop6NqIXg6QotEChBQMu+2QZVpa0XOovoLJ2tdZhqp6qx9pvI5L+e3ka6/wpY
pMJYE2iES42HrVU6/r6t80oLsbWlK4Rk3cgCf+eZeCm3jDI0Dt4NsdJkKTsUjQQyc1zinX0V
aCXCuXxoVLYliGsJlsFMS7QVOA9tuKI0+TCcEeROqIcNpEbHxQQGO5PbhbTRcAO+SnLDokZn
k9NxVpXWB1AUo8t7GUdxZWxcXNoWJfME0OrAZQ1CcABz7q7xq+ZItH8oSb78Mh8UF8/RxsxS
FFIbI0vs7zIfWn0gCNjTjf4a3sLsyafIxBBVLGreCJ7sRc8iKhAsl4GA/Qh5G0Qa71hA3gV1
9uG+51kskPSSZ8glvoUZL8r0blOU1kOEGZ6QJbGaPZpjBZDT0PD5zsOfo8pIWN4VZqR1g9wE
ycJYhoGLY4K0N51zO7ZkZBOYJIg5qhUZOEEpW0q70+LxP2Wiw7VmWwuc+ImKNsJZjRAX8ElH
O5qha9MWtgnKTPZG1zTJ8G1VkluVsbZV3c7TqlkPbILm0EWkCitj8qPOwZyP6eEhmeY0Etu6
RgiBQGg5kflhtKEkuLM2056KwRgYhtZsIkaJLBQySDaBCJGZJPnGWCd7MMuimJbxNFAaQ+fk
hausFO7ufxmhTLklJLSEbh3XxqdkLGGrzBelJwSAQvmXSYWQoc4b24+1+hKIwdll9G5PPVOA
BvLUVV3Dy76Q/RL9Uebpn9E6EkKqI6Mynt9cXV2agkiesFjb4L8DSF9Y6miuRocqkS5F3nfl
/E/Yz/+Mt/j/rKLrMZdrvvaACukMytqG4G91J4+Wmaih9W08uqb4LEcPYhxa9WX3en84fKFA
dTWfmvKsLNJz6eOs1/0R4VyT5ZH8df/74Xjxg+oKIYvq/S0IK3E7YNLWaUvsLyZ6cqvZg8HO
yOdbRMIxVS41OhH7ER2gs0pXOxOscMmSqNRVwGQKjGeALulxctV2zcOixhufsCq1klZxaWi8
WVaKVVo4P6ldTzIswWBZL2BJn+kZtCTRNm2/i+XjaWxoc8k/1pIKE28dlNawJ75ilzXjUhFb
PoXrkmOJ/mms7IPIOb60pKakdCCCuV0/sf/SJGgn55ad/tJKD78x5IUpkcZOpQTJt+HNnD6z
k4ewZJGbDr+tA77UEyuKFEXkYq5fCBhsuc2cyVcYb6dFg9GTEjqjFiGUD+irBgqJckZYUA99
HdwanR39u2F13JGT72OSmhPU7XcqX15FZAvH4hZtJt65v9OCbYeN01ns8Wbad30ZLNIYBKR2
Z4VMv4265do+YKYsg9lrHMtSexAWFuE2245d0pUzrlqi12jaKUlShCZp1MzuWr9q7yYbhFmL
XqDX79j+jRsIKoR2Ur6xIksIfL+OTV8pK9z4s7hl+CnkdDz8FA6HDQk0YVobz3eCqytt5dAB
vjzsfzzu3vZfnDqF0lXKuWrjY/Y5/tw5xZl8WJG0ReeOr41xUjtDTVKaTemL8lafPUzHZU7I
DWrOzPItn9NiOZxSNnm5oveUTFbT+K0fKsTvkcUfmVupoI3NNHyjP1VIRDNwKNrVYZGpNRkk
9lw3uBAcy3+hRCcgJ1EpVHmNePDFlUZE5WswJmOeBiz79uXv/el5//if4+mnNni6dClbuIH8
TJC6IYDCZ7F+dYeBUTLzTS6TV0XKhUiUkd+pBaGAEycIMrvLuvQSJMZRfRXk6sJ1YQKAyOiS
CL6s8+Ui+/NG1PeN8AObhCKzxk0kv1H7LczWR0IBX7JooRgx6nt+hMOBIw/dDeeUtptC+b7R
ohT6l3HJcs0EAmtv/7TbjT1DdrUTxonXWVmE9u9moWsLtzTcTVq7SgdvTiSgQJswk2ZVziam
GqvAqyHBMtF4DDMRondSUnZqk5gDq6Vui7ISXoW0y4C4WJq3A5KgZCyTSl9HKqb5aajzLrMk
QKbuUikVWMFFE5RN3/LOTEzHbOIAFecwBtbSYtUFWpJYREsGEzTRMIvmuEbqqfRLcM8XBy3h
yt/XsEivndUj6cwvxAqE+33yKDDPEO4R4oxMFBh5ukka6HyeUxc8N4Wx14if1NlMMtx3j0w3
O4YfvRzw++3H9IvOUcf6Bo712iKoc679nOuJhzOdXHo5Qy/Hn5uvBoZLI4sz8HK8NbgaeTlj
L8db66srL+fGw7kZ+dLceHv0ZuRrz83YV8702moP4/l0Orlppp4Eg6G3fGBZXR3wkDE6/wFN
HtLkEU321H1Ck69o8jVNvvHU21OVgacuA6syq5xNm5Kg1SYNrefhbKRb1ChyGMNpOKTosMPX
eriRjlPmIJyRed2VLEmo3BZBTNPLWA+5pcgsxCAEEcHIalZ52kZWqarLFeNLkyEuDHv1kCQ1
fribSZ2x0HIr3nJY3mxuv2mq1IZGgdSx3d//Ph3e3l2jf9xz9GLwd1PGt2iyLc/m9AFJRnDE
AzykKFm28LwPtlnSChwY7TWO/ID2ZYiA9LVtomWTQ3WErK5fCirpIkpjLtTGqpKFlQtwKXMq
m/YMpZ1WcIWopKQFB82gfdfqpTGVkvYM6cm/2c7LlCi+CCpNWEl42qRpUODFiHCG+e1SsYRJ
xTIooziLpSdOfPOQtrmBcSvrgPTauznMIQsUU8kv5cKFzXMRUMenOUjO+NrG87oMzQs1PKWF
IhP0ob+Mk4JUbem6hcOUzuot0WEtp5nBYawI8KROfRuFamXmTxSF12BxkhdnigzWof3k72DE
IzLMs6KEs+I6SOq4/4QOmLMIBpoQWGFGQb4356BDGOn6tRr69Sdanvq+ZQep8jS/o7RaOkRQ
QNem+qByWJaYTfO1+x63Gh3SfzPiYnttofMJkjyICkba6CnIXWA5Z+m6MJijMqqtm+gWAafI
fJPhrPXo2C3MhagjwQdcZAEGfKGYAb9LMRwXzBh7Ge9B2iJbMk8A9B7dmXYTcLf8OmLGJ2M+
t7Zp0G0T8nG9Ei1r709rBtt/1sBXgz7LsygoadUUzKY92Ak/umXXOJzk9A6ypp9k1bOdPX+I
9jpQbdD784sC6lYCRsC3L2jo9HD85/nr++5p9/XxuHt4OTx/fd392APy8PAVPXL+xN366+7l
ZXd6Op6+vu4fD8+///36+rS7//vr2/Hp+H78+tfLjy9ye1+Jm6yLX7vTw/4ZtSj7bV5649hD
Ju8Xh+fD22H3ePi/HXK1d1ycKrBghasmy7PYHEcMPXXL7UNz3e0ZRhKMYUa9WOWhg66SYvtb
1BmM2CKNas0WxoW4hjIs6NG3kakjLWlpnIaw81nUrW5rLknFrU0pAxZdgWAR5prDDCGw4HOL
fEE/vb+8HS/uMWDs8XTxa//4sj9ptnQCjFovhvmaQR669Fj3560RXShfhaxY6sovFsNNYt2K
9EQXWmYLpx5AI4HdCu9U3FuTwFf5VVG46FVRuDngc4ELVa6LPHQ3gdAfsiveorvrNqmZaidd
zAfDaVonTvKsTmiiW3wh/jpg8YcYCXW1BMHZoVeGEyY1Dljq5rAAaaSRshf6+3D4rXO41o6o
+P3X4+H+j7/37xf3Yrj/PO1efr07o7zkgdOyyB1qcehWPQ4jIwJSRy4jTu84qovqch0PJ5OB
4RxQWhr8fvu1f3473O/e9g8X8bOoOywkF/8c3n5dBK+vx/uDYEW7t53TmDBM3W4jaOES5LBg
eFnkyR06GSXm7YKhB0j3y8S3zFlXoMnLAJbZter8mbCafTo+6PpLquxZSHRaOKcC3ytm5Y7z
UNe37qoxc2hJuSGKy88VV8gqmsRtxYl8QHzYlIHHHrrtSnRIVdWk+XlbbbSqU1233L3+8vWc
dP5nrYGp7g9eVZZqwVomlxpMh5/71ze3hDIcDd2UkixNJmgmTYWeTKhFZrsVy7lNniXBKh7O
iG6WHPIWuiuuGlxGbO6udGRR3oGfRmOCNnEXZQZDHl16MLe7yjSipg6S9dvTngxHIYo8Grpo
vgwG7rYJcxmyIMiTgftpgDwi+pintKNWxUatzxnpW0qt5ItycOMWtylkJaTkcXj5Zdrtq/XG
OCf0VDo6rMbPmGdcBlk9Y+4aEZSh+4VBMNvMGTkkJUM9ojnDPEA3EywgGHhR5UvEK3fkIdUd
BlH8/5Ud227cuvFXjD61QBvYjuPjFMiDVqJ2dSytZF28tl8EJ9m6RmIn8AUIzteXM0NKQ3Io
pw+5LGdEUSNqbpxL+Ai5LHjPN8mNoIJ1Sdklwk6yMkBg8UqYRbWNU/DGHR+7Th2PH1Aqhxvr
ZGHTqJB2/a4WX4YZj5HVgmkVtjjHz6f987NjV0yUzd2SZ1ZgYFiS/xBnJ+Lhnr0k3FIYzSJQ
A2JSAqnf3j5+/fFwsH19+Lx/ojoPnjE0bWrogtlIKm7WrtZUdVGEGDnhL4dgXic6EUkL4TgF
ACO4758F9BtSkBLLbRmmvWJ9jBhgFDn3BJ2MiCiGRKUJaMyVkM0l/YKcQa8QJFV5ptT3+89P
t9pwfPrx+nL/KMjuslgZJieME0vylwKgNwUfINGXLNVLDZCW3jJiiZppiCexJRi3clWr1eDj
O1pCWV6vRXtzxZ4qu7zuiKTc7EIbAJJzk8wN7glh+FKX4PqOInyt6kwJz44FLfsK8rDTSPUj
HxEe6vBEqiPNUNM0NETN+JiF/B5AXbN4Ff2MPAJOG9afCREvklComHFth519/PBLsLwsQvre
aRjkQ0+P40A792W+PPsSXM8fAafaTu3cEnBmCOp3KdClIYdwmTSmIrFMYPDyXqVKblzDt0hV
1usiHddXUiyL66vFbsHz+2bAZliVBqcbVi7a1YfDj2Oq4PCkSCFcklJ/nYjR87Q7w4KmAMeK
e7H0YED9w4R3x6b6g5qOey22Zxc3+XAbRVF7mL4HKyuEJonp/ukFarlom/oZW0g+39893r68
Pu0Pvvx3/+Xb/ePdzMurOhug93GBR3yf/jYFdlD0ou/UZscLAbyDq+cVE1xd9W3CSSn7/8kX
/ebdtOyAjopd/xsYKNfgf7QsmwPzG8SxU66KLSwK08tyKx3LqFgkLyX3XtqRcaW2qdZW8FBz
fu0JJu5JIfqFtkygujfbkraqhjZatikcErZ15aXbcZRSbSPQrepNeecAlBfbTP/VauqtCnaA
m9Ztxo1COgJ2cn9tzQ9sHl3xMDoL8oYxE0W/ozEHswKj9JuycH2Fqea5Re8w0/TIMSjSMbSR
9a36YXSven/sKopgydtS+CLHQgTNH9Tq+ky4lCCRInSEkrS7WFFEwtAklm996qlOqWxspCz6
RCsCoaMjZQa78U/M5IcTpUlf4d1Skm1WV8vkgZwIUBldY+OGtChvlIfUu6OUoOGPz4H17Omc
MHpnXJzFCZKf0XGY4c/EuYFhxv7xN3pkeUlyGsXiMJHakAalSE7lrWHgSSuflc3gfjNUcrki
g9NpMSKdexnwKv1TWHrkdc4kGdc3BftGGWClAccipLypEhHA014c/DoyfhIyDSGYotW2/NjV
Ze0YzHwUolnO5AvghgzUa/HUKWBF0th4XrECr2x8VYnDeeeV1W0vk5JSi+etlbRtck38jqsl
XZ0WmqteqhEReOwIFhfhxWtoCKKiR4elwnjGX8YWn5y6xmiBsOaBLQjDdi5Jgyai8ngz1pnH
7q/j6YkjDmyLGjdZ3dSed9FSXA75Z/f/uX39/gL9hV/u715/vD4fPNDR5O3T/lbL4b/2/2Y2
JnZYvVFjtbrW2/bT8eFhAOrAWUlgzqE5GPK+ICNhHWHEzlSFfNjqIiXSyXWKNfm1jgbpD5/O
2Gk1AKQq0JZo69LU+p8FGBY9EMIRMEPTeeHZBRfBZb3idIDfS0x8W7rR1mU7jF42dlreQNwV
i4hoL7zC0lVTuAly4bqzonJQ6iKD7u1aM2vZPh/S7hg0Fzf/EUKsLC+4zLo65BBr1UMLizrP
+FfDrxnfH0cAcOHIQ9nyGvx+U8bBnDWux8WiD4B/9uvMm+Hs1xEzyDsoKFZzmqmK6lV7XxwG
BuySkoW+dfrD8woLEY3ENztpuYGS6gYvWBsAR38+3T++fMMWb18f9s93YeQiKsDnSC1Hf6Vh
iJQXzZ6U0sKge0MJkVzTwfQfUYyLAVLaT2ZCkckUzDBhQDiKXUgGuSxs211vE2hB7GdcXFer
Ggw/1bYage9TDKjXf6ABd93RsxqCRok0+WTvv+//9XL/YMyIZ0T9QuNPIUnpXsbrFoxBSYYh
VU5+KIN2WlGWg3AYUrZL2lzWQhjWqpebSq2z1Ui9AMQqVVs8h68GOBAAdsX2f6tpilU4Ph0d
Hk/vCTZto8VcZfttzPqmSjKcLelkpWijEbQpRJXGS8nip+fpqMAL5HRXSZ+6kXAOBJcHJY+u
/XU3NYrtkO55reWIyWeBzvaNXHf1tzeCUyfZfJfZ/vPr3R2E4BSPzy9Prw9u87EqAZ+HNnPb
C8ZK5sEpDojezqfDX4dHn08lRG0WFtx4C2FwJj5oLUoxh4Atk+RxZ1KU9H7hRIPfkmvG2nzD
qktMzSMQrF6uDUJF+v4WxdwFU4af/5VB4r9VTEyA1DQZY3zAfLR+p7adF3JMswA8aMXD7Ht9
db3byj4hdAXVBdTm5xLPHR+3takM5ToOHJwb1coVT+dFQs2nBZS2hibyMfNgsu17yJ1iS8Xf
Y1DcgoaXKnXTXakES6QtTjnY/vaxHhCAETvawJ1p3r+WtqX+bsO3ZyELS6RQvaHz9Ee7BM37
MoOjoK6lYYXeJJdSnMT0KRgc6vgoXEyAKNczvbEgIJBfbIax2FKhGRZvYb+0V4i3gU2w9OY2
xXojd3djhEe6QFGg3KsmJIAl7SFF8pwnwClmP4VlMDiMc3w6CmId5085uOvG6xBoTBONf1D/
+Pn8z4Pyx5dvrz+JbW9uH+/c0s8JdNLQoqSuGzH7nsP9YHMCorI69PMwHKkM8L30+t04Ad51
3ofAOeHDhttzRLyH5FGMIvurhPwC765YpJuz/QBDXhdDfHtdPvK0LvYG4WbjBrqs9Eknf7e7
Cy3dtYzP6kjTHfCy031ECbO8FSjFRwv2r68gzQWRQTzB1zlx0NX2cGwuc2VjbYW5/T0MO+hc
qcbzHZN3GoLUZrH49+ef948QuKaf5uH1Zf9rr/+zf/ny7t27f8xrxkM9nHuNlkVo/zQtdBc1
leZEutLBoH6cJTEDft5eXUX6JpkvVGiW4aG8PcluR0haStQ7SOhZWtWuU5F+K4RAZ6KRjnuE
go2VtApV6tcSsjpb/xKP+KX+q5yG+msC89kGkc4be3qkRcPv/3j/s26uuSjW3+BLRx1ZPzU0
plIq0/uXPMMLhDoniR5hr1QE4uDr7cvtAShrX+DQJTCJ8MAmVLT8Om3+ppE3JQGtEBQLfKKC
MaL6oxWZdmim5DKHIUQW798q1Yabgm5IZRdQoU0HiWF479taRemAXFcYjl8AkhttpEnIHB8x
QwuujdbKBKi6EGui2H4jzvqDL+7C2EitYB25BjZuc61Vw1lupOKzfhDT7ZNck7YKvfTRaPA2
ve55nhhGxMzbWqghUTdEi9azZvJhS7biMnTdJs1GxrFuh9x+UXHguCv6DbjCfJtKQjM1GrH/
pr8sQquwUDamSbSZhwIl5HBjACZaucEkENR07Q2mZjaamvnI8cnBGTp6j0lLSb1CTcD9VkOe
c2ph7wzEdwwgeNOwOTr91GlIYzaVKUHhFu0I5rPWiz+RQQz3Rh6wQlBS0FVorpEcgbF988aW
ie2WtzfKb+yR2X1pF6HlOMQPiImeaMZM62OiX6lKc8XWdDuJFHFvL7RimZvrZYMNlaAFhM1O
f8sCgjVpqqL2qGSe3WzuLtif3VbbMZqR8OfxQJPJA9tIEhBa6ultaAgXZG3Z8WSrpUyCCXJ4
gVgCxjZIsEWLmTmj51kpQ2DHkcIBIKm2daxS1uDNYW/a5MGY3Tv+eGwVMIdZCVhsbSFmxy+z
Ifu9uSdWEKjRt8V6Ta3M3bdkWMSC1TqzsznEQhZvjG0sY9o7JyWejMHbFfHs3usTLY6beP4r
v/ObyNMej6Ow7xEd3guZt9dbzROIhpoLxhH5JlvGBDtAv/yx3qTF0fuPJ3i+Bb4HeQEJVAQT
qyHP3g9sxFGYekKKbRiqImAw2BFUHUBQvfp1diqqV0hNTa28TNZdyO2hy7Lx9yOf5z0TVdKW
JvzHcevw8TFbreVcGQcLOhhdZSvZUajyYmzWfawGrFGweM+TeliVYR63MQ/LVV4ObvQzl+nz
HhMMPSAHnMlnsFvjZ4dFbTbf4dXZIb+eAZScrD1hDPjPMg6w2yVVEk9/wH0gS6W0Eep+e3Og
2rNkPVTFEiWIYOgZbwZHMmBaPBiG0cPfYbuDctpt/PBhwlgPQV1Io5a7+56f8/X75xcwAsF9
kUKzttu7PStHMnguQ8rjjwe4znn+s9VBY+oKP3QPJvoeCx6z0VQyEjd7t6oHkfmmI9PXdPyb
zjqD2w/AUZOSouzKRI67ASD50mOuAMSoknNlq7r4c6PgJ8ssfoscjHxxdmfd/DjGn2C70OkA
11ildokRJPdWzJLS4rCXD3vJXdtp5ae+NFyXV+RrtU6AKrS+KaoBkNXBll6eZ73sWyCPHSgK
XR1pbYEoUKBloyKJi4gRvZ4EYMebcIh4q9mi1BxhQeavIOhnAc4jkqJYTgTRgkzG0sZxOPmm
Tk8ijiOLxRLto0hIxY268gWVR2YKUKC05kg9IoPXpY3MeykYWmP0kY5SiECRuXE4BU8swjVT
KWVBhRjDEKk5glAK5orDpeMNF6OFqMzeL4jjETyWyoTQIov17ILP5nzhm7qsYpyMHh2cKKmT
5kREa3LOoGkMoq43EMqhmbXMUyC0WNP7Le0bZsuLttolkQbdtHWwIr5kxSJAlFUUNs4B3qsO
9BF3s2K9JAxz9688r+qFTQJ1L7Rdu/jBYCR4RIu2k/gI1mRQVe/JGtO82LBaUWtYVBGC0iAU
L/Q/mkMUfBYqAgA=

--BXVAT5kNtrzKuDFl
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--BXVAT5kNtrzKuDFl--
