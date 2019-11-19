Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F32F0102E3D
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 22:33:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02DDC6E9D1;
	Tue, 19 Nov 2019 21:33:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B6CD6E9D1
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2019 21:33:29 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Nov 2019 13:33:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,219,1571727600"; 
 d="gz'50?scan'50,208,50";a="357233975"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 19 Nov 2019 13:33:26 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iXB7m-00095j-5m; Wed, 20 Nov 2019 05:33:26 +0800
Date: Wed, 20 Nov 2019 05:30:42 +0800
From: kbuild test robot <lkp@intel.com>
To: Vandita Kulkarni <vandita.kulkarni@intel.com>
Message-ID: <201911200559.VJXzKpN7%lkp@intel.com>
References: <20191119123316.5094-9-vandita.kulkarni@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="wlaszrzzqygfdq3z"
Content-Disposition: inline
In-Reply-To: <20191119123316.5094-9-vandita.kulkarni@intel.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: Re: [Intel-gfx] [V3 8/8] drm/i915/dsi: Initiate fame request in cmd
 mode
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org,
 kbuild-all@lists.01.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--wlaszrzzqygfdq3z
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Vandita,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on drm-intel/for-linux-next]
[cannot apply to v5.4-rc8 next-20191118]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Vandita-Kulkarni/Add-support-for-mipi-dsi-cmd-mode/20191120-015713
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
config: i386-defconfig (attached as .config)
compiler: gcc-7 (Debian 7.4.0-14) 7.4.0
reproduce:
        # save the attached .config to linux build tree
        make ARCH=i386 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   drivers/gpu/drm/i915/display/icl_dsi.c:203:52: error: 'struct intel_crtc_state' has no member named 'uapi'
     struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
                                                       ^
   include/linux/kernel.h:993:26: note: in definition of macro 'container_of'
     void *__mptr = (void *)(ptr);     \
                             ^~~
   drivers/gpu/drm/i915/display/icl_dsi.c:203:28: note: in expansion of macro 'to_intel_crtc'
     struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
                               ^~~~~~~~~~~~~
   In file included from include/linux/ioport.h:13:0,
                    from include/linux/acpi.h:12,
                    from include/linux/i2c.h:13,
                    from include/drm/drm_crtc.h:28,
                    from include/drm/drm_atomic_helper.h:31,
                    from drivers/gpu/drm/i915/display/icl_dsi.c:28:
   drivers/gpu/drm/i915/display/icl_dsi.c:203:52: error: 'struct intel_crtc_state' has no member named 'uapi'
     struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
                                                       ^
   include/linux/compiler.h:330:9: note: in definition of macro '__compiletime_assert'
      if (!(condition))     \
            ^~~~~~~~~
   include/linux/compiler.h:350:2: note: in expansion of macro '_compiletime_assert'
     _compiletime_assert(condition, msg, __compiletime_assert_, __LINE__)
     ^~~~~~~~~~~~~~~~~~~
   include/linux/build_bug.h:39:37: note: in expansion of macro 'compiletime_assert'
    #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
                                        ^~~~~~~~~~~~~~~~~~
   include/linux/kernel.h:994:2: note: in expansion of macro 'BUILD_BUG_ON_MSG'
     BUILD_BUG_ON_MSG(!__same_type(*(ptr), ((type *)0)->member) && \
     ^~~~~~~~~~~~~~~~
   include/linux/kernel.h:994:20: note: in expansion of macro '__same_type'
     BUILD_BUG_ON_MSG(!__same_type(*(ptr), ((type *)0)->member) && \
                       ^~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_display_types.h:1125:26: note: in expansion of macro 'container_of'
    #define to_intel_crtc(x) container_of(x, struct intel_crtc, base)
                             ^~~~~~~~~~~~
   drivers/gpu/drm/i915/display/icl_dsi.c:203:28: note: in expansion of macro 'to_intel_crtc'
     struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
                               ^~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/icl_dsi.c:203:52: error: 'struct intel_crtc_state' has no member named 'uapi'
     struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
                                                       ^
   include/linux/compiler.h:330:9: note: in definition of macro '__compiletime_assert'
      if (!(condition))     \
            ^~~~~~~~~
   include/linux/compiler.h:350:2: note: in expansion of macro '_compiletime_assert'
     _compiletime_assert(condition, msg, __compiletime_assert_, __LINE__)
     ^~~~~~~~~~~~~~~~~~~
   include/linux/build_bug.h:39:37: note: in expansion of macro 'compiletime_assert'
    #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
                                        ^~~~~~~~~~~~~~~~~~
   include/linux/kernel.h:994:2: note: in expansion of macro 'BUILD_BUG_ON_MSG'
     BUILD_BUG_ON_MSG(!__same_type(*(ptr), ((type *)0)->member) && \
     ^~~~~~~~~~~~~~~~
   include/linux/kernel.h:995:6: note: in expansion of macro '__same_type'
        !__same_type(*(ptr), void),   \
         ^~~~~~~~~~~
   drivers/gpu/drm/i915/display/intel_display_types.h:1125:26: note: in expansion of macro 'container_of'
    #define to_intel_crtc(x) container_of(x, struct intel_crtc, base)
                             ^~~~~~~~~~~~
   drivers/gpu/drm/i915/display/icl_dsi.c:203:28: note: in expansion of macro 'to_intel_crtc'
     struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
                               ^~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/icl_dsi.c:208:28: error: 'struct intel_crtc_state' has no member named 'hw'
     private_flags = crtc_state->hw.adjusted_mode.private_flags;
                               ^~
   In file included from drivers/gpu/drm/i915/display/intel_display_types.h:46:0,
                    from drivers/gpu/drm/i915/display/intel_dsi.h:30,
                    from drivers/gpu/drm/i915/display/icl_dsi.c:35:
   drivers/gpu/drm/i915/display/icl_dsi.c:218:18: error: implicit declaration of function 'DSI_CMD_FRMCTL'; did you mean 'DSI_CMD_RXCTL'? [-Werror=implicit-function-declaration]
     tmp = I915_READ(DSI_CMD_FRMCTL(port));
                     ^
   drivers/gpu/drm/i915/i915_drv.h:1979:45: note: in definition of macro '__I915_REG_OP'
     intel_uncore_##op__(&(dev_priv__)->uncore, __VA_ARGS__)
                                                ^~~~~~~~~~~
   drivers/gpu/drm/i915/display/icl_dsi.c:218:8: note: in expansion of macro 'I915_READ'
     tmp = I915_READ(DSI_CMD_FRMCTL(port));
           ^~~~~~~~~
   drivers/gpu/drm/i915/i915_drv.h:1981:57: error: incompatible type for argument 2 of 'intel_uncore_read'
    #define I915_READ(reg__)  __I915_REG_OP(read, dev_priv, (reg__))
                                                            ^
   drivers/gpu/drm/i915/i915_drv.h:1979:45: note: in definition of macro '__I915_REG_OP'
     intel_uncore_##op__(&(dev_priv__)->uncore, __VA_ARGS__)
                                                ^~~~~~~~~~~
   drivers/gpu/drm/i915/display/icl_dsi.c:218:8: note: in expansion of macro 'I915_READ'
     tmp = I915_READ(DSI_CMD_FRMCTL(port));
           ^~~~~~~~~
   In file included from drivers/gpu/drm/i915/gt/uc/intel_guc.h:9:0,
                    from drivers/gpu/drm/i915/gt/uc/intel_uc.h:9,
                    from drivers/gpu/drm/i915/gt/intel_gt_types.h:16,
                    from drivers/gpu/drm/i915/i915_drv.h:81,
                    from drivers/gpu/drm/i915/display/intel_display_types.h:46,
                    from drivers/gpu/drm/i915/display/intel_dsi.h:30,
                    from drivers/gpu/drm/i915/display/icl_dsi.c:35:
   drivers/gpu/drm/i915/intel_uncore.h:287:22: note: expected 'i915_reg_t {aka struct <anonymous>}' but argument is of type 'int'
    static inline u##x__ intel_uncore_##name__(struct intel_uncore *uncore, \
                         ^
   drivers/gpu/drm/i915/intel_uncore.h:302:1: note: in expansion of macro '__uncore_read'
    __uncore_read(read, 32, l, true)
    ^~~~~~~~~~~~~
>> drivers/gpu/drm/i915/display/icl_dsi.c:219:9: error: 'DSI_FRAME_UPDATE_REQUEST' undeclared (first use in this function); did you mean 'HDCP_REAUTH_REQUEST'?
     tmp |= DSI_FRAME_UPDATE_REQUEST;
            ^~~~~~~~~~~~~~~~~~~~~~~~
            HDCP_REAUTH_REQUEST
   drivers/gpu/drm/i915/display/icl_dsi.c:219:9: note: each undeclared identifier is reported only once for each function it appears in
   In file included from drivers/gpu/drm/i915/display/intel_display_types.h:46:0,
                    from drivers/gpu/drm/i915/display/intel_dsi.h:30,
                    from drivers/gpu/drm/i915/display/icl_dsi.c:35:
   drivers/gpu/drm/i915/i915_drv.h:1982:65: error: incompatible type for argument 2 of 'intel_uncore_write'
    #define I915_WRITE(reg__, val__) __I915_REG_OP(write, dev_priv, (reg__), (val__))
                                                                    ^
   drivers/gpu/drm/i915/i915_drv.h:1979:45: note: in definition of macro '__I915_REG_OP'
     intel_uncore_##op__(&(dev_priv__)->uncore, __VA_ARGS__)
                                                ^~~~~~~~~~~
   drivers/gpu/drm/i915/display/icl_dsi.c:220:2: note: in expansion of macro 'I915_WRITE'
     I915_WRITE(DSI_CMD_FRMCTL(port), tmp);
     ^~~~~~~~~~
   In file included from drivers/gpu/drm/i915/gt/uc/intel_guc.h:9:0,
                    from drivers/gpu/drm/i915/gt/uc/intel_uc.h:9,
                    from drivers/gpu/drm/i915/gt/intel_gt_types.h:16,
                    from drivers/gpu/drm/i915/i915_drv.h:81,
                    from drivers/gpu/drm/i915/display/intel_display_types.h:46,
                    from drivers/gpu/drm/i915/display/intel_dsi.h:30,
                    from drivers/gpu/drm/i915/display/icl_dsi.c:35:
   drivers/gpu/drm/i915/intel_uncore.h:294:20: note: expected 'i915_reg_t {aka struct <anonymous>}' but argument is of type 'int'
    static inline void intel_uncore_##name__(struct intel_uncore *uncore, \
                       ^
   drivers/gpu/drm/i915/intel_uncore.h:308:1: note: in expansion of macro '__uncore_write'
    __uncore_write(write, 32, l, true)
    ^~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/icl_dsi.c: In function 'gen11_dsi_configure_transcoder':
   drivers/gpu/drm/i915/display/icl_dsi.c:740:11: error: 'TE_SOURCE_GPIO' undeclared (first use in this function); did you mean 'DP_SOURCE_OUI'?
       tmp |= TE_SOURCE_GPIO;
              ^~~~~~~~~~~~~~
              DP_SOURCE_OUI
   drivers/gpu/drm/i915/display/icl_dsi.c: In function 'gen11_dsi_config_util_pin':
   drivers/gpu/drm/i915/display/icl_dsi.c:1021:10: error: 'UTIL_PIN_DIRECTION_INPUT' undeclared (first use in this function); did you mean 'UTIL_PIN_PIPE_MASK'?
      tmp |= UTIL_PIN_DIRECTION_INPUT;
             ^~~~~~~~~~~~~~~~~~~~~~~~
             UTIL_PIN_PIPE_MASK
   In file included from drivers/gpu/drm/i915/display/intel_display_types.h:46:0,
                    from drivers/gpu/drm/i915/display/intel_dsi.h:30,
                    from drivers/gpu/drm/i915/display/icl_dsi.c:35:
   drivers/gpu/drm/i915/display/icl_dsi.c: In function 'gen11_dsi_deconfigure_trancoder':
   drivers/gpu/drm/i915/i915_drv.h:1981:57: error: incompatible type for argument 2 of 'intel_uncore_read'
    #define I915_READ(reg__)  __I915_REG_OP(read, dev_priv, (reg__))
                                                            ^
   drivers/gpu/drm/i915/i915_drv.h:1979:45: note: in definition of macro '__I915_REG_OP'
     intel_uncore_##op__(&(dev_priv__)->uncore, __VA_ARGS__)
                                                ^~~~~~~~~~~
   drivers/gpu/drm/i915/display/icl_dsi.c:1186:10: note: in expansion of macro 'I915_READ'
       tmp = I915_READ(DSI_CMD_FRMCTL(port));
             ^~~~~~~~~
   In file included from drivers/gpu/drm/i915/gt/uc/intel_guc.h:9:0,
                    from drivers/gpu/drm/i915/gt/uc/intel_uc.h:9,
                    from drivers/gpu/drm/i915/gt/intel_gt_types.h:16,
                    from drivers/gpu/drm/i915/i915_drv.h:81,
                    from drivers/gpu/drm/i915/display/intel_display_types.h:46,
                    from drivers/gpu/drm/i915/display/intel_dsi.h:30,
                    from drivers/gpu/drm/i915/display/icl_dsi.c:35:
   drivers/gpu/drm/i915/intel_uncore.h:287:22: note: expected 'i915_reg_t {aka struct <anonymous>}' but argument is of type 'int'
    static inline u##x__ intel_uncore_##name__(struct intel_uncore *uncore, \
                         ^
   drivers/gpu/drm/i915/intel_uncore.h:302:1: note: in expansion of macro '__uncore_read'
    __uncore_read(read, 32, l, true)
    ^~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/icl_dsi.c:1187:12: error: 'DSI_PERIODIC_FRAME_UPDATE_ENABLE' undeclared (first use in this function); did you mean 'GEN6_MBCTL_BME_UPDATE_ENABLE'?
       tmp &= ~DSI_PERIODIC_FRAME_UPDATE_ENABLE;
               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
               GEN6_MBCTL_BME_UPDATE_ENABLE
   In file included from drivers/gpu/drm/i915/display/intel_display_types.h:46:0,
                    from drivers/gpu/drm/i915/display/intel_dsi.h:30,
                    from drivers/gpu/drm/i915/display/icl_dsi.c:35:
   drivers/gpu/drm/i915/i915_drv.h:1982:65: error: incompatible type for argument 2 of 'intel_uncore_write'
    #define I915_WRITE(reg__, val__) __I915_REG_OP(write, dev_priv, (reg__), (val__))
                                                                    ^
   drivers/gpu/drm/i915/i915_drv.h:1979:45: note: in definition of macro '__I915_REG_OP'
     intel_uncore_##op__(&(dev_priv__)->uncore, __VA_ARGS__)
                                                ^~~~~~~~~~~
   drivers/gpu/drm/i915/display/icl_dsi.c:1188:4: note: in expansion of macro 'I915_WRITE'
       I915_WRITE(DSI_CMD_FRMCTL(port), tmp);
       ^~~~~~~~~~
   In file included from drivers/gpu/drm/i915/gt/uc/intel_guc.h:9:0,
                    from drivers/gpu/drm/i915/gt/uc/intel_uc.h:9,
                    from drivers/gpu/drm/i915/gt/intel_gt_types.h:16,
                    from drivers/gpu/drm/i915/i915_drv.h:81,
                    from drivers/gpu/drm/i915/display/intel_display_types.h:46,
                    from drivers/gpu/drm/i915/display/intel_dsi.h:30,
                    from drivers/gpu/drm/i915/display/icl_dsi.c:35:
   drivers/gpu/drm/i915/intel_uncore.h:294:20: note: expected 'i915_reg_t {aka struct <anonymous>}' but argument is of type 'int'
    static inline void intel_uncore_##name__(struct intel_uncore *uncore, \
                       ^
   drivers/gpu/drm/i915/intel_uncore.h:308:1: note: in expansion of macro '__uncore_write'
    __uncore_write(write, 32, l, true)
    ^~~~~~~~~~~~~~
   drivers/gpu/drm/i915/display/icl_dsi.c: In function 'gen11_dsi_is_periodic_cmd_mode':
   drivers/gpu/drm/i915/display/icl_dsi.c:1340:16: error: 'DSI_PERIODIC_FRAME_UPDATE_ENABLE' undeclared (first use in this function); did you mean 'GEN6_MBCTL_BME_UPDATE_ENABLE'?
     return (val & DSI_PERIODIC_FRAME_UPDATE_ENABLE);
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                   GEN6_MBCTL_BME_UPDATE_ENABLE
   drivers/gpu/drm/i915/display/icl_dsi.c: In function 'gen11_dsi_get_config':

vim +219 drivers/gpu/drm/i915/display/icl_dsi.c

    30	
    31	#include "intel_atomic.h"
    32	#include "intel_combo_phy.h"
    33	#include "intel_connector.h"
    34	#include "intel_ddi.h"
  > 35	#include "intel_dsi.h"
    36	#include "intel_panel.h"
    37	
    38	static inline int header_credits_available(struct drm_i915_private *dev_priv,
    39						   enum transcoder dsi_trans)
    40	{
    41		return (I915_READ(DSI_CMD_TXCTL(dsi_trans)) & FREE_HEADER_CREDIT_MASK)
    42			>> FREE_HEADER_CREDIT_SHIFT;
    43	}
    44	
    45	static inline int payload_credits_available(struct drm_i915_private *dev_priv,
    46						    enum transcoder dsi_trans)
    47	{
    48		return (I915_READ(DSI_CMD_TXCTL(dsi_trans)) & FREE_PLOAD_CREDIT_MASK)
    49			>> FREE_PLOAD_CREDIT_SHIFT;
    50	}
    51	
    52	static void wait_for_header_credits(struct drm_i915_private *dev_priv,
    53					    enum transcoder dsi_trans)
    54	{
    55		if (wait_for_us(header_credits_available(dev_priv, dsi_trans) >=
    56				MAX_HEADER_CREDIT, 100))
    57			DRM_ERROR("DSI header credits not released\n");
    58	}
    59	
    60	static void wait_for_payload_credits(struct drm_i915_private *dev_priv,
    61					     enum transcoder dsi_trans)
    62	{
    63		if (wait_for_us(payload_credits_available(dev_priv, dsi_trans) >=
    64				MAX_PLOAD_CREDIT, 100))
    65			DRM_ERROR("DSI payload credits not released\n");
    66	}
    67	
    68	static enum transcoder dsi_port_to_transcoder(enum port port)
    69	{
    70		if (port == PORT_A)
    71			return TRANSCODER_DSI_0;
    72		else
    73			return TRANSCODER_DSI_1;
    74	}
    75	
    76	static void wait_for_cmds_dispatched_to_panel(struct intel_encoder *encoder)
    77	{
    78		struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
    79		struct intel_dsi *intel_dsi = enc_to_intel_dsi(&encoder->base);
    80		struct mipi_dsi_device *dsi;
    81		enum port port;
    82		enum transcoder dsi_trans;
    83		int ret;
    84	
    85		/* wait for header/payload credits to be released */
    86		for_each_dsi_port(port, intel_dsi->ports) {
    87			dsi_trans = dsi_port_to_transcoder(port);
    88			wait_for_header_credits(dev_priv, dsi_trans);
    89			wait_for_payload_credits(dev_priv, dsi_trans);
    90		}
    91	
    92		/* send nop DCS command */
    93		for_each_dsi_port(port, intel_dsi->ports) {
    94			dsi = intel_dsi->dsi_hosts[port]->device;
    95			dsi->mode_flags |= MIPI_DSI_MODE_LPM;
    96			dsi->channel = 0;
    97			ret = mipi_dsi_dcs_nop(dsi);
    98			if (ret < 0)
    99				DRM_ERROR("error sending DCS NOP command\n");
   100		}
   101	
   102		/* wait for header credits to be released */
   103		for_each_dsi_port(port, intel_dsi->ports) {
   104			dsi_trans = dsi_port_to_transcoder(port);
   105			wait_for_header_credits(dev_priv, dsi_trans);
   106		}
   107	
   108		/* wait for LP TX in progress bit to be cleared */
   109		for_each_dsi_port(port, intel_dsi->ports) {
   110			dsi_trans = dsi_port_to_transcoder(port);
   111			if (wait_for_us(!(I915_READ(DSI_LP_MSG(dsi_trans)) &
   112					  LPTX_IN_PROGRESS), 20))
   113				DRM_ERROR("LPTX bit not cleared\n");
   114		}
   115	}
   116	
   117	static bool add_payld_to_queue(struct intel_dsi_host *host, const u8 *data,
   118				       u32 len)
   119	{
   120		struct intel_dsi *intel_dsi = host->intel_dsi;
   121		struct drm_i915_private *dev_priv = to_i915(intel_dsi->base.base.dev);
   122		enum transcoder dsi_trans = dsi_port_to_transcoder(host->port);
   123		int free_credits;
   124		int i, j;
   125	
   126		for (i = 0; i < len; i += 4) {
   127			u32 tmp = 0;
   128	
   129			free_credits = payload_credits_available(dev_priv, dsi_trans);
   130			if (free_credits < 1) {
   131				DRM_ERROR("Payload credit not available\n");
   132				return false;
   133			}
   134	
   135			for (j = 0; j < min_t(u32, len - i, 4); j++)
   136				tmp |= *data++ << 8 * j;
   137	
   138			I915_WRITE(DSI_CMD_TXPYLD(dsi_trans), tmp);
   139		}
   140	
   141		return true;
   142	}
   143	
   144	static int dsi_send_pkt_hdr(struct intel_dsi_host *host,
   145				    struct mipi_dsi_packet pkt, bool enable_lpdt)
   146	{
   147		struct intel_dsi *intel_dsi = host->intel_dsi;
   148		struct drm_i915_private *dev_priv = to_i915(intel_dsi->base.base.dev);
   149		enum transcoder dsi_trans = dsi_port_to_transcoder(host->port);
   150		u32 tmp;
   151		int free_credits;
   152	
   153		/* check if header credit available */
   154		free_credits = header_credits_available(dev_priv, dsi_trans);
   155		if (free_credits < 1) {
   156			DRM_ERROR("send pkt header failed, not enough hdr credits\n");
   157			return -1;
   158		}
   159	
   160		tmp = I915_READ(DSI_CMD_TXHDR(dsi_trans));
   161	
   162		if (pkt.payload)
   163			tmp |= PAYLOAD_PRESENT;
   164		else
   165			tmp &= ~PAYLOAD_PRESENT;
   166	
   167		tmp &= ~VBLANK_FENCE;
   168	
   169		if (enable_lpdt)
   170			tmp |= LP_DATA_TRANSFER;
   171	
   172		tmp &= ~(PARAM_WC_MASK | VC_MASK | DT_MASK);
   173		tmp |= ((pkt.header[0] & VC_MASK) << VC_SHIFT);
   174		tmp |= ((pkt.header[0] & DT_MASK) << DT_SHIFT);
   175		tmp |= (pkt.header[1] << PARAM_WC_LOWER_SHIFT);
   176		tmp |= (pkt.header[2] << PARAM_WC_UPPER_SHIFT);
   177		I915_WRITE(DSI_CMD_TXHDR(dsi_trans), tmp);
   178	
   179		return 0;
   180	}
   181	
   182	static int dsi_send_pkt_payld(struct intel_dsi_host *host,
   183				      struct mipi_dsi_packet pkt)
   184	{
   185		/* payload queue can accept *256 bytes*, check limit */
   186		if (pkt.payload_length > MAX_PLOAD_CREDIT * 4) {
   187			DRM_ERROR("payload size exceeds max queue limit\n");
   188			return -1;
   189		}
   190	
   191		/* load data into command payload queue */
   192		if (!add_payld_to_queue(host, pkt.payload,
   193					pkt.payload_length)) {
   194			DRM_ERROR("adding payload to queue failed\n");
   195			return -1;
   196		}
   197	
   198		return 0;
   199	}
   200	
   201	void gen11_dsi_frame_update(struct intel_crtc_state *crtc_state)
   202	{
   203		struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
   204		struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
   205		u32 tmp, private_flags;
   206		enum port port;
   207	
   208		private_flags = crtc_state->hw.adjusted_mode.private_flags;
   209	
   210		/* case 1 also covers dual link */
   211		if (private_flags & I915_MODE_FLAG_DSI_USE_TE0)
   212			port = PORT_A;
   213		else if (private_flags & I915_MODE_FLAG_DSI_USE_TE1)
   214			port = PORT_B;
   215		else
   216			return;
   217	
   218		tmp = I915_READ(DSI_CMD_FRMCTL(port));
 > 219		tmp |= DSI_FRAME_UPDATE_REQUEST;
   220		I915_WRITE(DSI_CMD_FRMCTL(port), tmp);
   221	}
   222	

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

--wlaszrzzqygfdq3z
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--wlaszrzzqygfdq3z
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--wlaszrzzqygfdq3z--
