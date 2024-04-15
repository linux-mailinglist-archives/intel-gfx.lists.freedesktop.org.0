Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C00188A5221
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Apr 2024 15:47:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39E0610E6DC;
	Mon, 15 Apr 2024 13:47:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F36261125C0;
 Mon, 15 Apr 2024 13:47:35 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_Implement_CMRR_Support_?=
 =?utf-8?q?=28rev7=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mitul Golani" <mitulkumar.ajitkumar.golani@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 15 Apr 2024 13:47:35 -0000
Message-ID: <171318885599.1406028.7420013958988745109@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240412173153.722804-1-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20240412173153.722804-1-mitulkumar.ajitkumar.golani@intel.com>
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
Reply-To: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Implement CMRR Support (rev7)
URL   : https://patchwork.freedesktop.org/series/126443/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/i915/display/intel_display.o
drivers/gpu/drm/i915/display/intel_display.c: In function ‘intel_pipe_config_compare’:
drivers/gpu/drm/i915/display/intel_display.c:5103:24: error: incompatible type for argument 1 of ‘pipe_config_mismatch’
 5103 |   pipe_config_mismatch(fastset, crtc, __stringify(name), \
      |                        ^~~~~~~
      |                        |
      |                        bool {aka _Bool}
drivers/gpu/drm/i915/display/intel_display.c:5103:24: note: in definition of macro ‘PIPE_CONF_CHECK_LLI’
 5103 |   pipe_config_mismatch(fastset, crtc, __stringify(name), \
      |                        ^~~~~~~
drivers/gpu/drm/i915/display/intel_display.c:4904:42: note: expected ‘struct drm_printer *’ but argument is of type ‘bool’ {aka ‘_Bool’}
 4904 | pipe_config_mismatch(struct drm_printer *p, bool fastset,
      |                      ~~~~~~~~~~~~~~~~~~~~^
In file included from ./include/linux/linkage.h:6,
                 from ./arch/x86/include/asm/cache.h:5,
                 from ./include/linux/cache.h:6,
                 from ./arch/x86/include/asm/current.h:10,
                 from ./include/linux/mutex.h:14,
                 from ./include/linux/ww_mutex.h:20,
                 from ./include/linux/dma-resv.h:42,
                 from drivers/gpu/drm/i915/display/intel_display.c:27:
drivers/gpu/drm/i915/display/intel_display.c:5475:34: error: passing argument 3 of ‘pipe_config_mismatch’ from incompatible pointer type [-Werror=incompatible-pointer-types]
 5475 |   PIPE_CONF_CHECK_LLI(cmrr.cmrr_m);
      |                                  ^
      |                                  |
      |                                  char *
./include/linux/stringify.h:9:30: note: in definition of macro ‘__stringify_1’
    9 | #define __stringify_1(x...) #x
      |                              ^
drivers/gpu/drm/i915/display/intel_display.c:5103:39: note: in expansion of macro ‘__stringify’
 5103 |   pipe_config_mismatch(fastset, crtc, __stringify(name), \
      |                                       ^~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_display.c:5475:3: note: in expansion of macro ‘PIPE_CONF_CHECK_LLI’
 5475 |   PIPE_CONF_CHECK_LLI(cmrr.cmrr_m);
      |   ^~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_display.c:4905:33: note: expected ‘const struct intel_crtc *’ but argument is of type ‘char *’
 4905 |        const struct intel_crtc *crtc,
      |        ~~~~~~~~~~~~~~~~~~~~~~~~~^~~~
drivers/gpu/drm/i915/display/intel_display.c:5475:27: error: passing argument 5 of ‘pipe_config_mismatch’ makes pointer from integer without a cast [-Werror=int-conversion]
 5105 |          current_config->name, \
      |          ~~~~~~~~~~~~~~~~~~~~~~~
 5106 |          pipe_config->name); \
      |          ~~~~~~~~~~~~~~~~~~~~~
 5107 |   ret = false; \
      |   ~~~~~~~~~~~~~~           
 5108 |  } \
      |  ~~~                       
 5109 | } while (0)
      | ~~~~~~~~~~~                
 5110 | 
      |                            
 5111 | #define PIPE_CONF_CHECK_BOOL(name) do { \
      | ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5112 |  if (current_config->name != pipe_config->name) { \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5113 |   BUILD_BUG_ON_MSG(!__same_type(current_config->name, bool), \
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5114 |      __stringify(name) " is not bool"); \
      |      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5115 |   pipe_config_mismatch(&p, fastset, crtc,  __stringify(name), \
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5116 |          "(expected %s, found %s)", \
      |          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5117 |          str_yes_no(current_config->name), \
      |          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5118 |          str_yes_no(pipe_config->name)); \
      |          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5119 |   ret = false; \
      |   ~~~~~~~~~~~~~~           
 5120 |  } \
      |  ~~~                       
 5121 | } while (0)
      | ~~~~~~~~~~~                
 5122 | 
      |                            
 5123 | #define PIPE_CONF_CHECK_P(name) do { \
      | ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5124 |  if (current_config->name != pipe_config->name) { \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5125 |   pipe_config_mismatch(&p, fastset, crtc, __stringify(name), \
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5126 |          "(expected %p, found %p)", \
      |          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5127 |          current_config->name, \
      |          ~~~~~~~~~~~~~~~~~~~~~~~
 5128 |          pipe_config->name); \
      |          ~~~~~~~~~~~~~~~~~~~~~
 5129 |   ret = false; \
      |   ~~~~~~~~~~~~~~           
 5130 |  } \
      |  ~~~                       
 5131 | } while (0)
      | ~~~~~~~~~~~                
 5132 | 
      |                            
 5133 | #define PIPE_CONF_CHECK_M_N(name) do { \
      | ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5134 |  if (!intel_compare_link_m_n(&current_config->name, \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5135 |         &pipe_config->name)) { \
      |         ~~~~~~~~~~~~~~~~~~~~~~~~
 5136 |   pipe_config_mismatch(&p, fastset, crtc, __stringify(name), \
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5137 |          "(expected tu %i data %i/%i link %i/%i, " \
      |          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5138 |          "found tu %i, data %i/%i link %i/%i)", \
      |          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5139 |          current_config->name.tu, \
      |          ~~~~~~~~~~~~~~~~~~~~~~~~~~
 5140 |          current_config->name.data_m, \
      |          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5141 |          current_config->name.data_n, \
      |          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5142 |          current_config->name.link_m, \
      |          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5143 |          current_config->name.link_n, \
      |          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5144 |          pipe_config->name.tu, \
      |          ~~~~~~~~~~~~~~~~~~~~~~~
 5145 |          pipe_config->name.data_m, \
      |          ~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5146 |          pipe_config->name.data_n, \
      |          ~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5147 |          pipe_config->name.link_m, \
      |          ~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5148 |          pipe_config->name.link_n); \
      |          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5149 |   ret = false; \
      |   ~~~~~~~~~~~~~~           
 5150 |  } \
      |  ~~~                       
 5151 | } while (0)
      | ~~~~~~~~~~~                
 5152 | 
      |                            
 5153 | #define PIPE_CONF_CHECK_PLL(name) do { \
      | ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5154 |  if (!intel_dpll_compare_hw_state(dev_priv, &current_config->name, \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5155 |       &pipe_config->name)) { \
      |       ~~~~~~~~~~~~~~~~~~~~~~~~
 5156 |   pipe_config_pll_mismatch(&p, fastset, crtc, __stringify(name), \
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5157 |       &current_config->name, \
      |       ~~~~~~~~~~~~~~~~~~~~~~~~
 5158 |       &pipe_config->name); \
      |       ~~~~~~~~~~~~~~~~~~~~~~
 5159 |   ret = false; \
      |   ~~~~~~~~~~~~~~           
 5160 |  } \
      |  ~~~                       
 5161 | } while (0)
      | ~~~~~~~~~~~                
 5162 | 
      |                            
 5163 | #define PIPE_CONF_CHECK_TIMINGS(name) do {     \
      | ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5164 |  PIPE_CONF_CHECK_I(name.crtc_hdisplay); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5165 |  PIPE_CONF_CHECK_I(name.crtc_htotal); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5166 |  PIPE_CONF_CHECK_I(name.crtc_hblank_start); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5167 |  PIPE_CONF_CHECK_I(name.crtc_hblank_end); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5168 |  PIPE_CONF_CHECK_I(name.crtc_hsync_start); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5169 |  PIPE_CONF_CHECK_I(name.crtc_hsync_end); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5170 |  PIPE_CONF_CHECK_I(name.crtc_vdisplay); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5171 |  PIPE_CONF_CHECK_I(name.crtc_vblank_start); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5172 |  PIPE_CONF_CHECK_I(name.crtc_vsync_start); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5173 |  PIPE_CONF_CHECK_I(name.crtc_vsync_end); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5174 |  if (!fastset || !pipe_config->update_lrr) { \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5175 |   PIPE_CONF_CHECK_I(name.crtc_vtotal); \
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5176 |   PIPE_CONF_CHECK_I(name.crtc_vblank_end); \
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5177 |  } \
      |  ~~~                       
 5178 | } while (0)
      | ~~~~~~~~~~~                
 5179 | 
      |                            
 5180 | #define PIPE_CONF_CHECK_RECT(name) do { \
      | ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5181 |  PIPE_CONF_CHECK_I(name.x1); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5182 |  PIPE_CONF_CHECK_I(name.x2); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5183 |  PIPE_CONF_CHECK_I(name.y1); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5184 |  PIPE_CONF_CHECK_I(name.y2); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5185 | } while (0)
      | ~~~~~~~~~~~                
 5186 | 
      |                            
 5187 | #define PIPE_CONF_CHECK_FLAGS(name, mask) do { \
      | ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5188 |  if ((current_config->name ^ pipe_config->name) & (mask)) { \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5189 |   pipe_config_mismatch(&p, fastset, crtc, __stringify(name), \
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5190 |          "(%x) (expected %i, found %i)", \
      |          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5191 |          (mask), \
      |          ~~~~~~~~~         
 5192 |          current_config->name & (mask), \
      |          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5193 |          pipe_config->name & (mask)); \
      |          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5194 |   ret = false; \
      |   ~~~~~~~~~~~~~~           
 5195 |  } \
      |  ~~~                       
 5196 | } while (0)
      | ~~~~~~~~~~~                
 5197 | 
      |                            
 5198 | #define PIPE_CONF_CHECK_INFOFRAME(name) do { \
      | ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5199 |  if (!intel_compare_infoframe(&current_config->infoframes.name, \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5200 |          &pipe_config->infoframes.name)) { \
      |          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5201 |   pipe_config_infoframe_mismatch(&p, fastset, crtc, __stringify(name), \
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5202 |             &current_config->infoframes.name, \
      |             ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5203 |             &pipe_config->infoframes.name); \
      |             ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5204 |   ret = false; \
      |   ~~~~~~~~~~~~~~           
 5205 |  } \
      |  ~~~                       
 5206 | } while (0)
      | ~~~~~~~~~~~                
 5207 | 
      |                            
 5208 | #define PIPE_CONF_CHECK_DP_VSC_SDP(name) do { \
      | ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5209 |  if (!intel_compare_dp_vsc_sdp(&current_config->infoframes.name, \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5210 |           &pipe_config->infoframes.name)) { \
      |           ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5211 |   pipe_config_dp_vsc_sdp_mismatch(&p, fastset, crtc, __stringify(name), \
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5212 |       &current_config->infoframes.name, \
      |       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5213 |       &pipe_config->infoframes.name); \
      |       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5214 |   ret = false; \
      |   ~~~~~~~~~~~~~~           
 5215 |  } \
      |  ~~~                       
 5216 | } while (0)
      | ~~~~~~~~~~~                
 5217 | 
      |                            
 5218 | #define PIPE_CONF_CHECK_DP_AS_SDP(name) do { \
      | ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5219 |  if (!intel_compare_dp_as_sdp(&current_config->infoframes.name, \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5220 |           &pipe_config->infoframes.name)) { \
      |           ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5221 |   pipe_config_dp_as_sdp_mismatch(dev_priv, fastset, __stringify(name), \
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5222 |       &current_config->infoframes.name, \
      |       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5223 |       &pipe_config->infoframes.name); \
      |       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5224 |   ret = false; \
      |   ~~~~~~~~~~~~~~           
 5225 |  } \
      |  ~~~                       
 5226 | } while (0)
      | ~~~~~~~~~~~                
 5227 | 
      |                            
 5228 | #define PIPE_CONF_CHECK_BUFFER(name, len) do { \
      | ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5229 |  BUILD_BUG_ON(sizeof(current_config->name) != (len)); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5230 |  BUILD_BUG_ON(sizeof(pipe_config->name) != (len)); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5231 |  if (!intel_compare_buffer(current_config->name, pipe_config->name, (len))) { \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5232 |   pipe_config_buffer_mismatch(&p, fastset, crtc, __stringify(name), \
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5233 |          current_config->name, \
      |          ~~~~~~~~~~~~~~~~~~~~~~~
 5234 |          pipe_config->name, \
      |          ~~~~~~~~~~~~~~~~~~~~
 5235 |          (len)); \
      |          ~~~~~~~~~         
 5236 |   ret = false; \
      |   ~~~~~~~~~~~~~~           
 5237 |  } \
      |  ~~~                       
 5238 | } while (0)
      | ~~~~~~~~~~~                
 5239 | 
      |                            
 5240 | #define PIPE_CONF_CHECK_COLOR_LUT(lut, is_pre_csc_lut) do { \
      | ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5241 |  if (current_config->gamma_mode == pipe_config->gamma_mode && \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5242 |      !intel_color_lut_equal(current_config, \
      |      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5243 |        current_config->lut, pipe_config->lut, \
      |        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5244 |        is_pre_csc_lut)) { \
      |        ~~~~~~~~~~~~~~~~~~~~
 5245 |   pipe_config_mismatch(&p, fastset, crtc, __stringify(lut), \
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5246 |          "hw_state doesn't match sw_state"); \
      |          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5247 |   ret = false; \
      |   ~~~~~~~~~~~~~~           
 5248 |  } \
      |  ~~~                       
 5249 | } while (0)
      | ~~~~~~~~~~~                
 5250 | 
      |                            
 5251 | #define PIPE_CONF_CHECK_CSC(name) do { \
      | ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5252 |  PIPE_CONF_CHECK_X(name.preoff[0]); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5253 |  PIPE_CONF_CHECK_X(name.preoff[1]); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5254 |  PIPE_CONF_CHECK_X(name.preoff[2]); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5255 |  PIPE_CONF_CHECK_X(name.coeff[0]); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5256 |  PIPE_CONF_CHECK_X(name.coeff[1]); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5257 |  PIPE_CONF_CHECK_X(name.coeff[2]); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5258 |  PIPE_CONF_CHECK_X(name.coeff[3]); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5259 |  PIPE_CONF_CHECK_X(name.coeff[4]); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5260 |  PIPE_CONF_CHECK_X(name.coeff[5]); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5261 |  PIPE_CONF_CHECK_X(name.coeff[6]); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5262 |  PIPE_CONF_CHECK_X(name.coeff[7]); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5263 |  PIPE_CONF_CHECK_X(name.coeff[8]); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5264 |  PIPE_CONF_CHECK_X(name.postoff[0]); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5265 |  PIPE_CONF_CHECK_X(name.postoff[1]); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5266 |  PIPE_CONF_CHECK_X(name.postoff[2]); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5267 | } while (0)
      | ~~~~~~~~~~~                
 5268 | 
      |                            
 5269 | #define PIPE_CONF_QUIRK(quirk) \
      | ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5270 |  ((current_config->quirks | pipe_config->quirks) & (quirk))
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5271 | 
      |                            
 5272 |  PIPE_CONF_CHECK_BOOL(hw.enable);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5273 |  PIPE_CONF_CHECK_BOOL(hw.active);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5274 | 
      |                            
 5275 |  PIPE_CONF_CHECK_I(cpu_transcoder);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5276 |  PIPE_CONF_CHECK_I(mst_master_transcoder);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5277 | 
      |                            
 5278 |  PIPE_CONF_CHECK_BOOL(has_pch_encoder);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5279 |  PIPE_CONF_CHECK_I(fdi_lanes);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5280 |  PIPE_CONF_CHECK_M_N(fdi_m_n);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5281 | 
      |                            
 5282 |  PIPE_CONF_CHECK_I(lane_count);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5283 |  PIPE_CONF_CHECK_X(lane_lat_optim_mask);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5284 | 
      |                            
 5285 |  if (HAS_DOUBLE_BUFFERED_M_N(dev_priv)) {
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5286 |   if (!fastset || !pipe_config->update_m_n)
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5287 |    PIPE_CONF_CHECK_M_N(dp_m_n);
      |    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5288 |  } else {
      |  ~~~~~~~~                  
 5289 |   PIPE_CONF_CHECK_M_N(dp_m_n);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5290 |   PIPE_CONF_CHECK_M_N(dp_m2_n2);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5291 |  }
      |  ~                         
 5292 | 
      |                            
 5293 |  PIPE_CONF_CHECK_X(output_types);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5294 | 
      |                            
 5295 |  PIPE_CONF_CHECK_I(framestart_delay);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5296 |  PIPE_CONF_CHECK_I(msa_timing_delay);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5297 | 
      |                            
 5298 |  PIPE_CONF_CHECK_TIMINGS(hw.pipe_mode);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5299 |  PIPE_CONF_CHECK_TIMINGS(hw.adjusted_mode);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5300 | 
      |                            
 5301 |  PIPE_CONF_CHECK_I(pixel_multiplier);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5302 | 
      |                            
 5303 |  PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5304 |          DRM_MODE_FLAG_INTERLACE);
      |          ~~~~~~~~~~~~~~~~~~~~~~~~~
 5305 | 
      |                            
 5306 |  if (!PIPE_CONF_QUIRK(PIPE_CONFIG_QUIRK_MODE_SYNC_FLAGS)) {
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5307 |   PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5308 |           DRM_MODE_FLAG_PHSYNC);
      |           ~~~~~~~~~~~~~~~~~~~~~~
 5309 |   PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5310 |           DRM_MODE_FLAG_NHSYNC);
      |           ~~~~~~~~~~~~~~~~~~~~~~
 5311 |   PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5312 |           DRM_MODE_FLAG_PVSYNC);
      |           ~~~~~~~~~~~~~~~~~~~~~~
 5313 |   PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5314 |           DRM_MODE_FLAG_NVSYNC);
      |           ~~~~~~~~~~~~~~~~~~~~~~
 5315 |  }
      |  ~                         
 5316 | 
      |                            
 5317 |  PIPE_CONF_CHECK_I(output_format);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5318 |  PIPE_CONF_CHECK_BOOL(has_hdmi_sink);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5319 |  if ((DISPLAY_VER(dev_priv) < 8 && !IS_HASWELL(dev_priv)) ||
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5320 |      IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
      |      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5321 |   PIPE_CONF_CHECK_BOOL(limited_color_range);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5322 | 
      |                            
 5323 |  PIPE_CONF_CHECK_BOOL(hdmi_scrambling);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5324 |  PIPE_CONF_CHECK_BOOL(hdmi_high_tmds_clock_ratio);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5325 |  PIPE_CONF_CHECK_BOOL(has_infoframe);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5326 |  PIPE_CONF_CHECK_BOOL(enhanced_framing);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5327 |  PIPE_CONF_CHECK_BOOL(fec_enable);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5328 | 
      |                            
 5329 |  if (!fastset) {
      |  ~~~~~~~~~~~~~~~           
 5330 |   PIPE_CONF_CHECK_BOOL(has_audio);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5331 |   PIPE_CONF_CHECK_BUFFER(eld, MAX_ELD_BYTES);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5332 |  }
      |  ~                         
 5333 | 
      |                            
 5334 |  PIPE_CONF_CHECK_X(gmch_pfit.control);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5335 |  /* pfit ratios are autocomputed by the hw on gen4+ */
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5336 |  if (DISPLAY_VER(dev_priv) < 4)
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5337 |   PIPE_CONF_CHECK_X(gmch_pfit.pgm_ratios);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5338 |  PIPE_CONF_CHECK_X(gmch_pfit.lvds_border_bits);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5339 | 
      |                            
 5340 |  /*
      |  ~~                        
 5341 |   * Changing the EDP transcoder input mux
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5342 |   * (A_ONOFF vs. A_ON) requires a full modeset.
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5343 |   */
      |   ~~                       
 5344 |  PIPE_CONF_CHECK_BOOL(pch_pfit.force_thru);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5345 | 
      |                            
 5346 |  if (!fastset) {
      |  ~~~~~~~~~~~~~~~           
 5347 |   PIPE_CONF_CHECK_RECT(pipe_src);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5348 | 
      |                            
 5349 |   PIPE_CONF_CHECK_BOOL(pch_pfit.enabled);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5350 |   PIPE_CONF_CHECK_RECT(pch_pfit.dst);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5351 | 
      |                            
 5352 |   PIPE_CONF_CHECK_I(scaler_state.scaler_id);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5353 |   PIPE_CONF_CHECK_I(pixel_rate);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5354 | 
      |                            
 5355 |   PIPE_CONF_CHECK_X(gamma_mode);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5356 |   if (IS_CHERRYVIEW(dev_priv))
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5357 |    PIPE_CONF_CHECK_X(cgm_mode);
      |    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5358 |   else
      |   ~~~~                     
 5359 |    PIPE_CONF_CHECK_X(csc_mode);
      |    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5360 |   PIPE_CONF_CHECK_BOOL(gamma_enable);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5361 |   PIPE_CONF_CHECK_BOOL(csc_enable);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5362 |   PIPE_CONF_CHECK_BOOL(wgc_enable);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5363 | 
      |                            
 5364 |   PIPE_CONF_CHECK_I(linetime);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5365 |   PIPE_CONF_CHECK_I(ips_linetime);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5366 | 
      |                            
 5367 |   PIPE_CONF_CHECK_COLOR_LUT(pre_csc_lut, true);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5368 |   PIPE_CONF_CHECK_COLOR_LUT(post_csc_lut, false);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5369 | 
      |                            
 5370 |   PIPE_CONF_CHECK_CSC(csc);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~
 5371 |   PIPE_CONF_CHECK_CSC(output_csc);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5372 |  }
      |  ~                         
 5373 | 
      |                            
 5374 |  /*
      |  ~~                        
 5375 |   * Panel replay has to be enabled before link training. PSR doesn't have
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5376 |   * this requirement -> check these only if using panel replay
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5377 |   */
      |   ~~                       
 5378 |  if (current_config->has_panel_replay || pipe_config->has_panel_replay) {
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5379 |   PIPE_CONF_CHECK_BOOL(has_psr);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5380 |   PIPE_CONF_CHECK_BOOL(has_psr2);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5381 |   PIPE_CONF_CHECK_BOOL(enable_psr2_sel_fetch);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5382 |   PIPE_CONF_CHECK_BOOL(enable_psr2_su_region_et);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5383 |   PIPE_CONF_CHECK_BOOL(has_panel_replay);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5384 |  }
      |  ~                         
 5385 | 
      |                            
 5386 |  PIPE_CONF_CHECK_BOOL(double_wide);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5387 | 
      |                            
 5388 |  if (dev_priv->display.dpll.mgr)
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5389 |   PIPE_CONF_CHECK_P(shared_dpll);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5390 | 
      |                            
 5391 |  /* FIXME convert everything over the dpll_mgr */
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5392 |  if (dev_priv->display.dpll.mgr || HAS_GMCH(dev_priv))
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5393 |   PIPE_CONF_CHECK_PLL(dpll_hw_state);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5394 | 
      |                            
 5395 |  PIPE_CONF_CHECK_X(dsi_pll.ctrl);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5396 |  PIPE_CONF_CHECK_X(dsi_pll.div);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5397 | 
      |                            
 5398 |  if (IS_G4X(dev_priv) || DISPLAY_VER(dev_priv) >= 5)
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5399 |   PIPE_CONF_CHECK_I(pipe_bpp);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5400 | 
      |                            
 5401 |  if (!fastset || !pipe_config->update_m_n) {
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5402 |   PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_clock);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5403 |   PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_clock);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5404 |  }
      |  ~                         
 5405 |  PIPE_CONF_CHECK_I(port_clock);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5406 | 
      |                            
 5407 |  PIPE_CONF_CHECK_I(min_voltage_level);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5408 | 
      |                            
 5409 |  if (current_config->has_psr || pipe_config->has_psr)
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5410 |   PIPE_CONF_CHECK_X_WITH_MASK(infoframes.enable,
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5411 |          ~intel_hdmi_infoframe_enable(DP_SDP_VSC));
      |          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5412 |  else
      |  ~~~~                      
 5413 |   PIPE_CONF_CHECK_X(infoframes.enable);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5414 | 
      |                            
 5415 |  PIPE_CONF_CHECK_X(infoframes.gcp);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5416 |  PIPE_CONF_CHECK_INFOFRAME(avi);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5417 |  PIPE_CONF_CHECK_INFOFRAME(spd);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5418 |  PIPE_CONF_CHECK_INFOFRAME(hdmi);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5419 |  PIPE_CONF_CHECK_INFOFRAME(drm);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5420 |  PIPE_CONF_CHECK_DP_VSC_SDP(vsc);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5421 |  PIPE_CONF_CHECK_DP_AS_SDP(as_sdp);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5422 | 
      |                            
 5423 |  PIPE_CONF_CHECK_X(sync_mode_slaves_mask);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5424 |  PIPE_CONF_CHECK_I(master_transcoder);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5425 |  PIPE_CONF_CHECK_X(bigjoiner_pipes);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5426 | 
      |                            
 5427 |  PIPE_CONF_CHECK_BOOL(dsc.config.block_pred_enable);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5428 |  PIPE_CONF_CHECK_BOOL(dsc.config.convert_rgb);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5429 |  PIPE_CONF_CHECK_BOOL(dsc.config.simple_422);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5430 |  PIPE_CONF_CHECK_BOOL(dsc.config.native_422);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5431 |  PIPE_CONF_CHECK_BOOL(dsc.config.native_420);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5432 |  PIPE_CONF_CHECK_BOOL(dsc.config.vbr_enable);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5433 |  PIPE_CONF_CHECK_I(dsc.config.line_buf_depth);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5434 |  PIPE_CONF_CHECK_I(dsc.config.bits_per_component);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5435 |  PIPE_CONF_CHECK_I(dsc.config.pic_width);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5436 |  PIPE_CONF_CHECK_I(dsc.config.pic_height);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5437 |  PIPE_CONF_CHECK_I(dsc.config.slice_width);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5438 |  PIPE_CONF_CHECK_I(dsc.config.slice_height);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5439 |  PIPE_CONF_CHECK_I(dsc.config.initial_dec_delay);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5440 |  PIPE_CONF_CHECK_I(dsc.config.initial_xmit_delay);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5441 |  PIPE_CONF_CHECK_I(dsc.config.scale_decrement_interval);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5442 |  PIPE_CONF_CHECK_I(dsc.config.scale_increment_interval);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5443 |  PIPE_CONF_CHECK_I(dsc.config.initial_scale_value);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5444 |  PIPE_CONF_CHECK_I(dsc.config.first_line_bpg_offset);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5445 |  PIPE_CONF_CHECK_I(dsc.config.flatness_min_qp);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5446 |  PIPE_CONF_CHECK_I(dsc.config.flatness_max_qp);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5447 |  PIPE_CONF_CHECK_I(dsc.config.slice_bpg_offset);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5448 |  PIPE_CONF_CHECK_I(dsc.config.nfl_bpg_offset);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5449 |  PIPE_CONF_CHECK_I(dsc.config.initial_offset);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5450 |  PIPE_CONF_CHECK_I(dsc.config.final_offset);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5451 |  PIPE_CONF_CHECK_I(dsc.config.rc_model_size);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5452 |  PIPE_CONF_CHECK_I(dsc.config.rc_quant_incr_limit0);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5453 |  PIPE_CONF_CHECK_I(dsc.config.rc_quant_incr_limit1);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5454 |  PIPE_CONF_CHECK_I(dsc.config.slice_chunk_size);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5455 |  PIPE_CONF_CHECK_I(dsc.config.second_line_bpg_offset);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5456 |  PIPE_CONF_CHECK_I(dsc.config.nsl_bpg_offset);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5457 | 
      |                            
 5458 |  PIPE_CONF_CHECK_BOOL(dsc.compression_enable);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5459 |  PIPE_CONF_CHECK_BOOL(dsc.dsc_split);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5460 |  PIPE_CONF_CHECK_I(dsc.compressed_bpp_x16);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5461 | 
      |                            
 5462 |  PIPE_CONF_CHECK_BOOL(splitter.enable);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5463 |  PIPE_CONF_CHECK_I(splitter.link_count);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5464 |  PIPE_CONF_CHECK_I(splitter.pixel_overlap);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5465 | 
      |                            
 5466 |  if (!fastset) {
      |  ~~~~~~~~~~~~~~~           
 5467 |   PIPE_CONF_CHECK_BOOL(vrr.enable);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5468 |   PIPE_CONF_CHECK_I(vrr.vmin);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5469 |   PIPE_CONF_CHECK_I(vrr.vmax);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5470 |   PIPE_CONF_CHECK_I(vrr.flipline);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5471 |   PIPE_CONF_CHECK_I(vrr.pipeline_full);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5472 |   PIPE_CONF_CHECK_I(vrr.guardband);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5473 |   PIPE_CONF_CHECK_I(vrr.vsync_start);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5474 |   PIPE_CONF_CHECK_I(vrr.vsync_end);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5475 |   PIPE_CONF_CHECK_LLI(cmrr.cmrr_m);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~
      |                           |
      |                           u64 {aka const long long unsigned int}
drivers/gpu/drm/i915/display/intel_display.c:5105:26: note: in definition of macro ‘PIPE_CONF_CHECK_LLI’
 5105 |          current_config->name, \
      |                          ^~~~
drivers/gpu/drm/i915/display/intel_display.c:4906:38: note: expected ‘const char *’ but argument is of type ‘u64’ {aka ‘const long long unsigned int’}
 4906 |        const char *name, const char *format, ...)
      |                          ~~~~~~~~~~~~^~~~~~
drivers/gpu/drm/i915/display/intel_display.c:5103:24: error: incompatible type for argument 1 of ‘pipe_config_mismatch’
 5103 |   pipe_config_mismatch(fastset, crtc, __stringify(name), \
      |                        ^~~~~~~
      |                        |
      |                        bool {aka _Bool}
drivers/gpu/drm/i915/display/intel_display.c:5103:24: note: in definition of macro ‘PIPE_CONF_CHECK_LLI’
 5103 |   pipe_config_mismatch(fastset, crtc, __stringify(name), \
      |                        ^~~~~~~
drivers/gpu/drm/i915/display/intel_display.c:4904:42: note: expected ‘struct drm_printer *’ but argument is of type ‘bool’ {aka ‘_Bool’}
 4904 | pipe_config_mismatch(struct drm_printer *p, bool fastset,
      |                      ~~~~~~~~~~~~~~~~~~~~^
In file included from ./include/linux/linkage.h:6,
                 from ./arch/x86/include/asm/cache.h:5,
                 from ./include/linux/cache.h:6,
                 from ./arch/x86/include/asm/current.h:10,
                 from ./include/linux/mutex.h:14,
                 from ./include/linux/ww_mutex.h:20,
                 from ./include/linux/dma-resv.h:42,
                 from drivers/gpu/drm/i915/display/intel_display.c:27:
drivers/gpu/drm/i915/display/intel_display.c:5476:34: error: passing argument 3 of ‘pipe_config_mismatch’ from incompatible pointer type [-Werror=incompatible-pointer-types]
 5476 |   PIPE_CONF_CHECK_LLI(cmrr.cmrr_n);
      |                                  ^
      |                                  |
      |                                  char *
./include/linux/stringify.h:9:30: note: in definition of macro ‘__stringify_1’
    9 | #define __stringify_1(x...) #x
      |                              ^
drivers/gpu/drm/i915/display/intel_display.c:5103:39: note: in expansion of macro ‘__stringify’
 5103 |   pipe_config_mismatch(fastset, crtc, __stringify(name), \
      |                                       ^~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_display.c:5476:3: note: in expansion of macro ‘PIPE_CONF_CHECK_LLI’
 5476 |   PIPE_CONF_CHECK_LLI(cmrr.cmrr_n);
      |   ^~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_display.c:4905:33: note: expected ‘const struct intel_crtc *’ but argument is of type ‘char *’
 4905 |        const struct intel_crtc *crtc,
      |        ~~~~~~~~~~~~~~~~~~~~~~~~~^~~~
drivers/gpu/drm/i915/display/intel_display.c:5476:27: error: passing argument 5 of ‘pipe_config_mismatch’ makes pointer from integer without a cast [-Werror=int-conversion]
 5105 |          current_config->name, \
      |          ~~~~~~~~~~~~~~~~~~~~~~~
 5106 |          pipe_config->name); \
      |          ~~~~~~~~~~~~~~~~~~~~~
 5107 |   ret = false; \
      |   ~~~~~~~~~~~~~~           
 5108 |  } \
      |  ~~~                       
 5109 | } while (0)
      | ~~~~~~~~~~~                
 5110 | 
      |                            
 5111 | #define PIPE_CONF_CHECK_BOOL(name) do { \
      | ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5112 |  if (current_config->name != pipe_config->name) { \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5113 |   BUILD_BUG_ON_MSG(!__same_type(current_config->name, bool), \
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5114 |      __stringify(name) " is not bool"); \
      |      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5115 |   pipe_config_mismatch(&p, fastset, crtc,  __stringify(name), \
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5116 |          "(expected %s, found %s)", \
      |          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5117 |          str_yes_no(current_config->name), \
      |          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5118 |          str_yes_no(pipe_config->name)); \
      |          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5119 |   ret = false; \
      |   ~~~~~~~~~~~~~~           
 5120 |  } \
      |  ~~~                       
 5121 | } while (0)
      | ~~~~~~~~~~~                
 5122 | 
      |                            
 5123 | #define PIPE_CONF_CHECK_P(name) do { \
      | ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5124 |  if (current_config->name != pipe_config->name) { \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5125 |   pipe_config_mismatch(&p, fastset, crtc, __stringify(name), \
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5126 |          "(expected %p, found %p)", \
      |          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5127 |          current_config->name, \
      |          ~~~~~~~~~~~~~~~~~~~~~~~
 5128 |          pipe_config->name); \
      |          ~~~~~~~~~~~~~~~~~~~~~
 5129 |   ret = false; \
      |   ~~~~~~~~~~~~~~           
 5130 |  } \
      |  ~~~                       
 5131 | } while (0)
      | ~~~~~~~~~~~                
 5132 | 
      |                            
 5133 | #define PIPE_CONF_CHECK_M_N(name) do { \
      | ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5134 |  if (!intel_compare_link_m_n(&current_config->name, \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5135 |         &pipe_config->name)) { \
      |         ~~~~~~~~~~~~~~~~~~~~~~~~
 5136 |   pipe_config_mismatch(&p, fastset, crtc, __stringify(name), \
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5137 |          "(expected tu %i data %i/%i link %i/%i, " \
      |          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5138 |          "found tu %i, data %i/%i link %i/%i)", \
      |          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5139 |          current_config->name.tu, \
      |          ~~~~~~~~~~~~~~~~~~~~~~~~~~
 5140 |          current_config->name.data_m, \
      |          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5141 |          current_config->name.data_n, \
      |          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5142 |          current_config->name.link_m, \
      |          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5143 |          current_config->name.link_n, \
      |          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5144 |          pipe_config->name.tu, \
      |          ~~~~~~~~~~~~~~~~~~~~~~~
 5145 |          pipe_config->name.data_m, \
      |          ~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5146 |          pipe_config->name.data_n, \
      |          ~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5147 |          pipe_config->name.link_m, \
      |          ~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5148 |          pipe_config->name.link_n); \
      |          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5149 |   ret = false; \
      |   ~~~~~~~~~~~~~~           
 5150 |  } \
      |  ~~~                       
 5151 | } while (0)
      | ~~~~~~~~~~~                
 5152 | 
      |                            
 5153 | #define PIPE_CONF_CHECK_PLL(name) do { \
      | ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5154 |  if (!intel_dpll_compare_hw_state(dev_priv, &current_config->name, \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5155 |       &pipe_config->name)) { \
      |       ~~~~~~~~~~~~~~~~~~~~~~~~
 5156 |   pipe_config_pll_mismatch(&p, fastset, crtc, __stringify(name), \
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5157 |       &current_config->name, \
      |       ~~~~~~~~~~~~~~~~~~~~~~~~
 5158 |       &pipe_config->name); \
      |       ~~~~~~~~~~~~~~~~~~~~~~
 5159 |   ret = false; \
      |   ~~~~~~~~~~~~~~           
 5160 |  } \
      |  ~~~                       
 5161 | } while (0)
      | ~~~~~~~~~~~                
 5162 | 
      |                            
 5163 | #define PIPE_CONF_CHECK_TIMINGS(name) do {     \
      | ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5164 |  PIPE_CONF_CHECK_I(name.crtc_hdisplay); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5165 |  PIPE_CONF_CHECK_I(name.crtc_htotal); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5166 |  PIPE_CONF_CHECK_I(name.crtc_hblank_start); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5167 |  PIPE_CONF_CHECK_I(name.crtc_hblank_end); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5168 |  PIPE_CONF_CHECK_I(name.crtc_hsync_start); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5169 |  PIPE_CONF_CHECK_I(name.crtc_hsync_end); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5170 |  PIPE_CONF_CHECK_I(name.crtc_vdisplay); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5171 |  PIPE_CONF_CHECK_I(name.crtc_vblank_start); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5172 |  PIPE_CONF_CHECK_I(name.crtc_vsync_start); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5173 |  PIPE_CONF_CHECK_I(name.crtc_vsync_end); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5174 |  if (!fastset || !pipe_config->update_lrr) { \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5175 |   PIPE_CONF_CHECK_I(name.crtc_vtotal); \
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5176 |   PIPE_CONF_CHECK_I(name.crtc_vblank_end); \
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5177 |  } \
      |  ~~~                       
 5178 | } while (0)
      | ~~~~~~~~~~~                
 5179 | 
      |                            
 5180 | #define PIPE_CONF_CHECK_RECT(name) do { \
      | ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5181 |  PIPE_CONF_CHECK_I(name.x1); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5182 |  PIPE_CONF_CHECK_I(name.x2); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5183 |  PIPE_CONF_CHECK_I(name.y1); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5184 |  PIPE_CONF_CHECK_I(name.y2); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5185 | } while (0)
      | ~~~~~~~~~~~                
 5186 | 
      |                            
 5187 | #define PIPE_CONF_CHECK_FLAGS(name, mask) do { \
      | ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5188 |  if ((current_config->name ^ pipe_config->name) & (mask)) { \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5189 |   pipe_config_mismatch(&p, fastset, crtc, __stringify(name), \
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5190 |          "(%x) (expected %i, found %i)", \
      |          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5191 |          (mask), \
      |          ~~~~~~~~~         
 5192 |          current_config->name & (mask), \
      |          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5193 |          pipe_config->name & (mask)); \
      |          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5194 |   ret = false; \
      |   ~~~~~~~~~~~~~~           
 5195 |  } \
      |  ~~~                       
 5196 | } while (0)
      | ~~~~~~~~~~~                
 5197 | 
      |                            
 5198 | #define PIPE_CONF_CHECK_INFOFRAME(name) do { \
      | ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5199 |  if (!intel_compare_infoframe(&current_config->infoframes.name, \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5200 |          &pipe_config->infoframes.name)) { \
      |          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5201 |   pipe_config_infoframe_mismatch(&p, fastset, crtc, __stringify(name), \
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5202 |             &current_config->infoframes.name, \
      |             ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5203 |             &pipe_config->infoframes.name); \
      |             ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5204 |   ret = false; \
      |   ~~~~~~~~~~~~~~           
 5205 |  } \
      |  ~~~                       
 5206 | } while (0)
      | ~~~~~~~~~~~                
 5207 | 
      |                            
 5208 | #define PIPE_CONF_CHECK_DP_VSC_SDP(name) do { \
      | ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5209 |  if (!intel_compare_dp_vsc_sdp(&current_config->infoframes.name, \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5210 |           &pipe_config->infoframes.name)) { \
      |           ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5211 |   pipe_config_dp_vsc_sdp_mismatch(&p, fastset, crtc, __stringify(name), \
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5212 |       &current_config->infoframes.name, \
      |       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5213 |       &pipe_config->infoframes.name); \
      |       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5214 |   ret = false; \
      |   ~~~~~~~~~~~~~~           
 5215 |  } \
      |  ~~~                       
 5216 | } while (0)
      | ~~~~~~~~~~~                
 5217 | 
      |                            
 5218 | #define PIPE_CONF_CHECK_DP_AS_SDP(name) do { \
      | ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5219 |  if (!intel_compare_dp_as_sdp(&current_config->infoframes.name, \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5220 |           &pipe_config->infoframes.name)) { \
      |           ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5221 |   pipe_config_dp_as_sdp_mismatch(dev_priv, fastset, __stringify(name), \
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5222 |       &current_config->infoframes.name, \
      |       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5223 |       &pipe_config->infoframes.name); \
      |       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5224 |   ret = false; \
      |   ~~~~~~~~~~~~~~           
 5225 |  } \
      |  ~~~                       
 5226 | } while (0)
      | ~~~~~~~~~~~                
 5227 | 
      |                            
 5228 | #define PIPE_CONF_CHECK_BUFFER(name, len) do { \
      | ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5229 |  BUILD_BUG_ON(sizeof(current_config->name) != (len)); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5230 |  BUILD_BUG_ON(sizeof(pipe_config->name) != (len)); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5231 |  if (!intel_compare_buffer(current_config->name, pipe_config->name, (len))) { \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5232 |   pipe_config_buffer_mismatch(&p, fastset, crtc, __stringify(name), \
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5233 |          current_config->name, \
      |          ~~~~~~~~~~~~~~~~~~~~~~~
 5234 |          pipe_config->name, \
      |          ~~~~~~~~~~~~~~~~~~~~
 5235 |          (len)); \
      |          ~~~~~~~~~         
 5236 |   ret = false; \
      |   ~~~~~~~~~~~~~~           
 5237 |  } \
      |  ~~~                       
 5238 | } while (0)
      | ~~~~~~~~~~~                
 5239 | 
      |                            
 5240 | #define PIPE_CONF_CHECK_COLOR_LUT(lut, is_pre_csc_lut) do { \
      | ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5241 |  if (current_config->gamma_mode == pipe_config->gamma_mode && \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5242 |      !intel_color_lut_equal(current_config, \
      |      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5243 |        current_config->lut, pipe_config->lut, \
      |        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5244 |        is_pre_csc_lut)) { \
      |        ~~~~~~~~~~~~~~~~~~~~
 5245 |   pipe_config_mismatch(&p, fastset, crtc, __stringify(lut), \
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5246 |          "hw_state doesn't match sw_state"); \
      |          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5247 |   ret = false; \
      |   ~~~~~~~~~~~~~~           
 5248 |  } \
      |  ~~~                       
 5249 | } while (0)
      | ~~~~~~~~~~~                
 5250 | 
      |                            
 5251 | #define PIPE_CONF_CHECK_CSC(name) do { \
      | ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5252 |  PIPE_CONF_CHECK_X(name.preoff[0]); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5253 |  PIPE_CONF_CHECK_X(name.preoff[1]); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5254 |  PIPE_CONF_CHECK_X(name.preoff[2]); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5255 |  PIPE_CONF_CHECK_X(name.coeff[0]); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5256 |  PIPE_CONF_CHECK_X(name.coeff[1]); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5257 |  PIPE_CONF_CHECK_X(name.coeff[2]); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5258 |  PIPE_CONF_CHECK_X(name.coeff[3]); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5259 |  PIPE_CONF_CHECK_X(name.coeff[4]); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5260 |  PIPE_CONF_CHECK_X(name.coeff[5]); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5261 |  PIPE_CONF_CHECK_X(name.coeff[6]); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5262 |  PIPE_CONF_CHECK_X(name.coeff[7]); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5263 |  PIPE_CONF_CHECK_X(name.coeff[8]); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5264 |  PIPE_CONF_CHECK_X(name.postoff[0]); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5265 |  PIPE_CONF_CHECK_X(name.postoff[1]); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5266 |  PIPE_CONF_CHECK_X(name.postoff[2]); \
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5267 | } while (0)
      | ~~~~~~~~~~~                
 5268 | 
      |                            
 5269 | #define PIPE_CONF_QUIRK(quirk) \
      | ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5270 |  ((current_config->quirks | pipe_config->quirks) & (quirk))
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5271 | 
      |                            
 5272 |  PIPE_CONF_CHECK_BOOL(hw.enable);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5273 |  PIPE_CONF_CHECK_BOOL(hw.active);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5274 | 
      |                            
 5275 |  PIPE_CONF_CHECK_I(cpu_transcoder);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5276 |  PIPE_CONF_CHECK_I(mst_master_transcoder);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5277 | 
      |                            
 5278 |  PIPE_CONF_CHECK_BOOL(has_pch_encoder);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5279 |  PIPE_CONF_CHECK_I(fdi_lanes);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5280 |  PIPE_CONF_CHECK_M_N(fdi_m_n);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5281 | 
      |                            
 5282 |  PIPE_CONF_CHECK_I(lane_count);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5283 |  PIPE_CONF_CHECK_X(lane_lat_optim_mask);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5284 | 
      |                            
 5285 |  if (HAS_DOUBLE_BUFFERED_M_N(dev_priv)) {
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5286 |   if (!fastset || !pipe_config->update_m_n)
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5287 |    PIPE_CONF_CHECK_M_N(dp_m_n);
      |    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5288 |  } else {
      |  ~~~~~~~~                  
 5289 |   PIPE_CONF_CHECK_M_N(dp_m_n);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5290 |   PIPE_CONF_CHECK_M_N(dp_m2_n2);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5291 |  }
      |  ~                         
 5292 | 
      |                            
 5293 |  PIPE_CONF_CHECK_X(output_types);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5294 | 
      |                            
 5295 |  PIPE_CONF_CHECK_I(framestart_delay);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5296 |  PIPE_CONF_CHECK_I(msa_timing_delay);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5297 | 
      |                            
 5298 |  PIPE_CONF_CHECK_TIMINGS(hw.pipe_mode);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5299 |  PIPE_CONF_CHECK_TIMINGS(hw.adjusted_mode);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5300 | 
      |                            
 5301 |  PIPE_CONF_CHECK_I(pixel_multiplier);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5302 | 
      |                            
 5303 |  PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5304 |          DRM_MODE_FLAG_INTERLACE);
      |          ~~~~~~~~~~~~~~~~~~~~~~~~~
 5305 | 
      |                            
 5306 |  if (!PIPE_CONF_QUIRK(PIPE_CONFIG_QUIRK_MODE_SYNC_FLAGS)) {
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5307 |   PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5308 |           DRM_MODE_FLAG_PHSYNC);
      |           ~~~~~~~~~~~~~~~~~~~~~~
 5309 |   PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5310 |           DRM_MODE_FLAG_NHSYNC);
      |           ~~~~~~~~~~~~~~~~~~~~~~
 5311 |   PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5312 |           DRM_MODE_FLAG_PVSYNC);
      |           ~~~~~~~~~~~~~~~~~~~~~~
 5313 |   PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5314 |           DRM_MODE_FLAG_NVSYNC);
      |           ~~~~~~~~~~~~~~~~~~~~~~
 5315 |  }
      |  ~                         
 5316 | 
      |                            
 5317 |  PIPE_CONF_CHECK_I(output_format);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5318 |  PIPE_CONF_CHECK_BOOL(has_hdmi_sink);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5319 |  if ((DISPLAY_VER(dev_priv) < 8 && !IS_HASWELL(dev_priv)) ||
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5320 |      IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
      |      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5321 |   PIPE_CONF_CHECK_BOOL(limited_color_range);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5322 | 
      |                            
 5323 |  PIPE_CONF_CHECK_BOOL(hdmi_scrambling);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5324 |  PIPE_CONF_CHECK_BOOL(hdmi_high_tmds_clock_ratio);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5325 |  PIPE_CONF_CHECK_BOOL(has_infoframe);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5326 |  PIPE_CONF_CHECK_BOOL(enhanced_framing);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5327 |  PIPE_CONF_CHECK_BOOL(fec_enable);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5328 | 
      |                            
 5329 |  if (!fastset) {
      |  ~~~~~~~~~~~~~~~           
 5330 |   PIPE_CONF_CHECK_BOOL(has_audio);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5331 |   PIPE_CONF_CHECK_BUFFER(eld, MAX_ELD_BYTES);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5332 |  }
      |  ~                         
 5333 | 
      |                            
 5334 |  PIPE_CONF_CHECK_X(gmch_pfit.control);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5335 |  /* pfit ratios are autocomputed by the hw on gen4+ */
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5336 |  if (DISPLAY_VER(dev_priv) < 4)
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5337 |   PIPE_CONF_CHECK_X(gmch_pfit.pgm_ratios);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5338 |  PIPE_CONF_CHECK_X(gmch_pfit.lvds_border_bits);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5339 | 
      |                            
 5340 |  /*
      |  ~~                        
 5341 |   * Changing the EDP transcoder input mux
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5342 |   * (A_ONOFF vs. A_ON) requires a full modeset.
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5343 |   */
      |   ~~                       
 5344 |  PIPE_CONF_CHECK_BOOL(pch_pfit.force_thru);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5345 | 
      |                            
 5346 |  if (!fastset) {
      |  ~~~~~~~~~~~~~~~           
 5347 |   PIPE_CONF_CHECK_RECT(pipe_src);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5348 | 
      |                            
 5349 |   PIPE_CONF_CHECK_BOOL(pch_pfit.enabled);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5350 |   PIPE_CONF_CHECK_RECT(pch_pfit.dst);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5351 | 
      |                            
 5352 |   PIPE_CONF_CHECK_I(scaler_state.scaler_id);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5353 |   PIPE_CONF_CHECK_I(pixel_rate);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5354 | 
      |                            
 5355 |   PIPE_CONF_CHECK_X(gamma_mode);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5356 |   if (IS_CHERRYVIEW(dev_priv))
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5357 |    PIPE_CONF_CHECK_X(cgm_mode);
      |    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5358 |   else
      |   ~~~~                     
 5359 |    PIPE_CONF_CHECK_X(csc_mode);
      |    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5360 |   PIPE_CONF_CHECK_BOOL(gamma_enable);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5361 |   PIPE_CONF_CHECK_BOOL(csc_enable);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5362 |   PIPE_CONF_CHECK_BOOL(wgc_enable);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5363 | 
      |                            
 5364 |   PIPE_CONF_CHECK_I(linetime);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5365 |   PIPE_CONF_CHECK_I(ips_linetime);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5366 | 
      |                            
 5367 |   PIPE_CONF_CHECK_COLOR_LUT(pre_csc_lut, true);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5368 |   PIPE_CONF_CHECK_COLOR_LUT(post_csc_lut, false);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5369 | 
      |                            
 5370 |   PIPE_CONF_CHECK_CSC(csc);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~
 5371 |   PIPE_CONF_CHECK_CSC(output_csc);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5372 |  }
      |  ~                         
 5373 | 
      |                            
 5374 |  /*
      |  ~~                        
 5375 |   * Panel replay has to be enabled before link training. PSR doesn't have
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5376 |   * this requirement -> check these only if using panel replay
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5377 |   */
      |   ~~                       
 5378 |  if (current_config->has_panel_replay || pipe_config->has_panel_replay) {
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5379 |   PIPE_CONF_CHECK_BOOL(has_psr);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5380 |   PIPE_CONF_CHECK_BOOL(has_psr2);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5381 |   PIPE_CONF_CHECK_BOOL(enable_psr2_sel_fetch);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5382 |   PIPE_CONF_CHECK_BOOL(enable_psr2_su_region_et);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5383 |   PIPE_CONF_CHECK_BOOL(has_panel_replay);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5384 |  }
      |  ~                         
 5385 | 
      |                            
 5386 |  PIPE_CONF_CHECK_BOOL(double_wide);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5387 | 
      |                            
 5388 |  if (dev_priv->display.dpll.mgr)
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5389 |   PIPE_CONF_CHECK_P(shared_dpll);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5390 | 
      |                            
 5391 |  /* FIXME convert everything over the dpll_mgr */
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5392 |  if (dev_priv->display.dpll.mgr || HAS_GMCH(dev_priv))
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5393 |   PIPE_CONF_CHECK_PLL(dpll_hw_state);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5394 | 
      |                            
 5395 |  PIPE_CONF_CHECK_X(dsi_pll.ctrl);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5396 |  PIPE_CONF_CHECK_X(dsi_pll.div);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5397 | 
      |                            
 5398 |  if (IS_G4X(dev_priv) || DISPLAY_VER(dev_priv) >= 5)
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5399 |   PIPE_CONF_CHECK_I(pipe_bpp);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5400 | 
      |                            
 5401 |  if (!fastset || !pipe_config->update_m_n) {
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5402 |   PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_clock);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5403 |   PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_clock);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5404 |  }
      |  ~                         
 5405 |  PIPE_CONF_CHECK_I(port_clock);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5406 | 
      |                            
 5407 |  PIPE_CONF_CHECK_I(min_voltage_level);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5408 | 
      |                            
 5409 |  if (current_config->has_psr || pipe_config->has_psr)
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5410 |   PIPE_CONF_CHECK_X_WITH_MASK(infoframes.enable,
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5411 |          ~intel_hdmi_infoframe_enable(DP_SDP_VSC));
      |          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5412 |  else
      |  ~~~~                      
 5413 |   PIPE_CONF_CHECK_X(infoframes.enable);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5414 | 
      |                            
 5415 |  PIPE_CONF_CHECK_X(infoframes.gcp);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5416 |  PIPE_CONF_CHECK_INFOFRAME(avi);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5417 |  PIPE_CONF_CHECK_INFOFRAME(spd);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5418 |  PIPE_CONF_CHECK_INFOFRAME(hdmi);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5419 |  PIPE_CONF_CHECK_INFOFRAME(drm);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5420 |  PIPE_CONF_CHECK_DP_VSC_SDP(vsc);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5421 |  PIPE_CONF_CHECK_DP_AS_SDP(as_sdp);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5422 | 
      |                            
 5423 |  PIPE_CONF_CHECK_X(sync_mode_slaves_mask);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5424 |  PIPE_CONF_CHECK_I(master_transcoder);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5425 |  PIPE_CONF_CHECK_X(bigjoiner_pipes);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5426 | 
      |                            
 5427 |  PIPE_CONF_CHECK_BOOL(dsc.config.block_pred_enable);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5428 |  PIPE_CONF_CHECK_BOOL(dsc.config.convert_rgb);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5429 |  PIPE_CONF_CHECK_BOOL(dsc.config.simple_422);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5430 |  PIPE_CONF_CHECK_BOOL(dsc.config.native_422);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5431 |  PIPE_CONF_CHECK_BOOL(dsc.config.native_420);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5432 |  PIPE_CONF_CHECK_BOOL(dsc.config.vbr_enable);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5433 |  PIPE_CONF_CHECK_I(dsc.config.line_buf_depth);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5434 |  PIPE_CONF_CHECK_I(dsc.config.bits_per_component);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5435 |  PIPE_CONF_CHECK_I(dsc.config.pic_width);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5436 |  PIPE_CONF_CHECK_I(dsc.config.pic_height);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5437 |  PIPE_CONF_CHECK_I(dsc.config.slice_width);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5438 |  PIPE_CONF_CHECK_I(dsc.config.slice_height);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5439 |  PIPE_CONF_CHECK_I(dsc.config.initial_dec_delay);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5440 |  PIPE_CONF_CHECK_I(dsc.config.initial_xmit_delay);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5441 |  PIPE_CONF_CHECK_I(dsc.config.scale_decrement_interval);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5442 |  PIPE_CONF_CHECK_I(dsc.config.scale_increment_interval);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5443 |  PIPE_CONF_CHECK_I(dsc.config.initial_scale_value);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5444 |  PIPE_CONF_CHECK_I(dsc.config.first_line_bpg_offset);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5445 |  PIPE_CONF_CHECK_I(dsc.config.flatness_min_qp);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5446 |  PIPE_CONF_CHECK_I(dsc.config.flatness_max_qp);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5447 |  PIPE_CONF_CHECK_I(dsc.config.slice_bpg_offset);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5448 |  PIPE_CONF_CHECK_I(dsc.config.nfl_bpg_offset);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5449 |  PIPE_CONF_CHECK_I(dsc.config.initial_offset);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5450 |  PIPE_CONF_CHECK_I(dsc.config.final_offset);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5451 |  PIPE_CONF_CHECK_I(dsc.config.rc_model_size);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5452 |  PIPE_CONF_CHECK_I(dsc.config.rc_quant_incr_limit0);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5453 |  PIPE_CONF_CHECK_I(dsc.config.rc_quant_incr_limit1);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5454 |  PIPE_CONF_CHECK_I(dsc.config.slice_chunk_size);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5455 |  PIPE_CONF_CHECK_I(dsc.config.second_line_bpg_offset);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5456 |  PIPE_CONF_CHECK_I(dsc.config.nsl_bpg_offset);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5457 | 
      |                            
 5458 |  PIPE_CONF_CHECK_BOOL(dsc.compression_enable);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5459 |  PIPE_CONF_CHECK_BOOL(dsc.dsc_split);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5460 |  PIPE_CONF_CHECK_I(dsc.compressed_bpp_x16);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5461 | 
      |                            
 5462 |  PIPE_CONF_CHECK_BOOL(splitter.enable);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5463 |  PIPE_CONF_CHECK_I(splitter.link_count);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5464 |  PIPE_CONF_CHECK_I(splitter.pixel_overlap);
      |  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5465 | 
      |                            
 5466 |  if (!fastset) {
      |  ~~~~~~~~~~~~~~~           
 5467 |   PIPE_CONF_CHECK_BOOL(vrr.enable);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5468 |   PIPE_CONF_CHECK_I(vrr.vmin);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5469 |   PIPE_CONF_CHECK_I(vrr.vmax);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5470 |   PIPE_CONF_CHECK_I(vrr.flipline);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5471 |   PIPE_CONF_CHECK_I(vrr.pipeline_full);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5472 |   PIPE_CONF_CHECK_I(vrr.guardband);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5473 |   PIPE_CONF_CHECK_I(vrr.vsync_start);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5474 |   PIPE_CONF_CHECK_I(vrr.vsync_end);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5475 |   PIPE_CONF_CHECK_LLI(cmrr.cmrr_m);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 5476 |   PIPE_CONF_CHECK_LLI(cmrr.cmrr_n);
      |   ~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~
      |                           |
      |                           u64 {aka const long long unsigned int}
drivers/gpu/drm/i915/display/intel_display.c:5105:26: note: in definition of macro ‘PIPE_CONF_CHECK_LLI’
 5105 |          current_config->name, \
      |                          ^~~~
drivers/gpu/drm/i915/display/intel_display.c:4906:38: note: expected ‘const char *’ but argument is of type ‘u64’ {aka ‘const long long unsigned int’}
 4906 |        const char *name, const char *format, ...)
      |                          ~~~~~~~~~~~~^~~~~~
cc1: all warnings being treated as errors
make[6]: *** [scripts/Makefile.build:244: drivers/gpu/drm/i915/display/intel_display.o] Error 1
make[5]: *** [scripts/Makefile.build:485: drivers/gpu/drm/i915] Error 2
make[4]: *** [scripts/Makefile.build:485: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:485: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:485: drivers] Error 2
make[1]: *** [/home/kbuild2/kernel/Makefile:1919: .] Error 2
make: *** [Makefile:240: __sub-make] Error 2
Build failed, no error log produced


